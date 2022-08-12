package com.kmall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmall.domain.CartVO;
import com.kmall.domain.CartVOList;
import com.kmall.mapper.CartMapper;

import lombok.Setter;

@Service
public class CartServiceImpl implements CartService {

	@Setter(onMethod_ = {@Autowired})
	private CartMapper cartmapper;
	
	@Override
	public void cart_add(CartVO vo) {
		// TODO Auto-generated method stub
		
		cartmapper.cart_add(vo);
	}

	@Override
	public List<CartVOList> cart_list(String mem_id) {
		// TODO Auto-generated method stub
		return cartmapper.cart_list(mem_id);
	}

	@Override
	public void cart_amount_update(Long cart_code, int cart_amount) {
		// TODO Auto-generated method stub
		cartmapper.cart_amount_update(cart_code, cart_amount);
	}

	
}
