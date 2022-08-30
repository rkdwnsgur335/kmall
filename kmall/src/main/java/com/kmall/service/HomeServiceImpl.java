package com.kmall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmall.domain.CategoryVO;
import com.kmall.domain.ProductVO;
import com.kmall.dto.Criteria;
import com.kmall.mapper.HomeMapper;

import lombok.Setter;

@Service
public class HomeServiceImpl implements HomeService {
	
	@Setter(onMethod_ = {@Autowired})
	private HomeMapper homemapper;

	@Override
	public List<CategoryVO> CateBrand() {
		// TODO Auto-generated method stub
		return homemapper.CateBrand();
	}
	
	@Override
	public ProductVO getProductByNum(Integer pdt_num) {
		// TODO Auto-generated method stub
		return homemapper.getProductByNum(pdt_num);
	}

	@Override
	public List<ProductVO> getProductPage(Criteria cri) {
		// TODO Auto-generated method stub
		return homemapper.getProductPage(cri);
	}

	@Override
	public int getProductPageall(Criteria cri) {
		// TODO Auto-generated method stub
		return homemapper.getProductPageall(cri);
	}
	

}
