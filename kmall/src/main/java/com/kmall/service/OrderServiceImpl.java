package com.kmall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kmall.domain.CartOrderInfo;
import com.kmall.domain.OrderVO;
import com.kmall.domain.PaymentVO;
import com.kmall.mapper.CartMapper;
import com.kmall.mapper.OrderMapper;

import lombok.Setter;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Setter(onMethod_ = {@Autowired})
	private OrderMapper ordermapper;
	
	@Setter(onMethod_ = {@Autowired})
	private CartMapper cartmapper;
	
	@Override
	public List<CartOrderInfo> cartOrderList(String mem_id) {
		// TODO Auto-generated method stub
		return ordermapper.cartOrderList(mem_id);
	}

	@Transactional
	@Override
	public void orderbuy(OrderVO o_vo, PaymentVO p_vo) {
		// TODO Auto-generated method stub
		
		//주문 테이블 저장
		ordermapper.orderSave(o_vo);
		
		//주문 상세테이블 저장
		Long odr_code = o_vo.getOdr_code(); 
		String mem_id = o_vo.getMem_id();
		
		ordermapper.orderDetailSave(odr_code, mem_id);
		
		//장바구니 테이블 삭제
		cartmapper.cart_empty(mem_id);
		
		//결제정보 저장
		p_vo.setOdr_code(odr_code);
		ordermapper.paymentSave(p_vo);
	}
	
	@Override
	public List<CartOrderInfo> directOrderList(Integer pdt_num, int odr_amount) {
		// TODO Auto-generated method stub
		return ordermapper.directOrderList(pdt_num, odr_amount);
	}

}
