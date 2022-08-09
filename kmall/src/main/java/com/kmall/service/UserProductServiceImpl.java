package com.kmall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmall.domain.CategoryVO;
import com.kmall.domain.ProductVO;
import com.kmall.dto.Criteria;
import com.kmall.mapper.UserProductMapper;

import lombok.Setter;

@Service
public class UserProductServiceImpl implements UserProductService {
	
	@Setter(onMethod_ = {@Autowired})
	private UserProductMapper userpromapper;
	
	@Override
	public List<CategoryVO> CateBrand() {
		// TODO Auto-generated method stub
		return userpromapper.CateBrand();
	}
	
	@Override
	public ProductVO getProductByNum(Integer pdt_num) {
		// TODO Auto-generated method stub
		return userpromapper.getProductByNum(pdt_num);
	}

	@Override
	public List<ProductVO> getProductPage(Criteria cri) {
		// TODO Auto-generated method stub
		return userpromapper.getProductPage(cri);
	}

	

	

}
