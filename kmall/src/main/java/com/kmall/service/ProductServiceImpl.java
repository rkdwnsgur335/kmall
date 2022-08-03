package com.kmall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmall.domain.CategoryVO;
import com.kmall.domain.ProductVO;
import com.kmall.mapper.ProductMapper;

import lombok.Setter;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Setter(onMethod_ = {@Autowired})
	private ProductMapper promapper;
	
	@Override
	public List<CategoryVO> CateBrand() {
		// TODO Auto-generated method stub
		return promapper.CateBrand();
	}

	@Override
	public List<CategoryVO> CateGender() {
		// TODO Auto-generated method stub
		return promapper.CateGender();
	}

	@Override
	public void productInsert(ProductVO vo) {
		// TODO Auto-generated method stub
		promapper.productInsert(vo);
	}

}
