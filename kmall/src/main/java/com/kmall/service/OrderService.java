package com.kmall.service;

import java.util.List;

import com.kmall.domain.CartOrderInfo;
import com.kmall.domain.OrderVO;
import com.kmall.domain.PaymentVO;

public interface OrderService {

	//장바구니 주문목록
	List<CartOrderInfo> cartOrderList(String mem_id);
	
	//직접 주문목록
	List<CartOrderInfo> directOrderList(Integer pdt_num, int odr_amount);
	
	void orderbuy(OrderVO vo, PaymentVO p_vo);
}
