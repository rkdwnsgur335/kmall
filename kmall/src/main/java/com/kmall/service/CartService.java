package com.kmall.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kmall.domain.CartVO;
import com.kmall.domain.CartVOList;

public interface CartService {

	//추가
	void cart_add(CartVO vo);
		
	//장바구니 목록
	List<CartVOList> cart_list(String mem_id);
	
	//수량 업데이트
	void cart_amount_update(@Param("cart_code") Long cart_code, @Param("cart_amount") int cart_amount);
	
	//장바구니 삭제
	void cart_delete(Long cart_code);
	
	//장바구니 삭제
	void deleteselect(CartVO vo);
	
	//장바구니 비우기
	void cart_empty(String mem_id);
}
