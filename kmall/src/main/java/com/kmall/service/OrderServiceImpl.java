package com.kmall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmall.domain.CartOrderInfo;
import com.kmall.mapper.OrderMapper;

import lombok.Setter;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Setter(onMethod_ = {@Autowired})
	private OrderMapper ordermapper;
	
	
	@Override
	public List<CartOrderInfo> cartOrderList(String mem_id) {
		// TODO Auto-generated method stub
		return ordermapper.cartOrderList(mem_id);
	}

	@Override
	public List<CartOrderInfo> directOrderList(Integer pdt_num, int odr_amount) {
		// TODO Auto-generated method stub
		return ordermapper.directOrderList(pdt_num, odr_amount);
	}

}
