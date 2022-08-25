package com.kmall.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kmall.domain.CartOrderInfo;

public interface OrderService {

	//장바구니 주문목록
	List<CartOrderInfo> cartOrderList(String mem_id);
	
	//직접 주문목록
	List<CartOrderInfo> directOrderList(@Param("pdt_num") Integer pdt_num, @Param("odr_amount") int odr_amount);
}
