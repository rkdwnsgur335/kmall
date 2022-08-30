package com.kmall.service;

import java.util.List;

import com.kmall.domain.CategoryVO;
import com.kmall.domain.ProductVO;
import com.kmall.dto.Criteria;

public interface HomeService {

	List<CategoryVO> CateBrand(); // 브랜드 카테고리
	
	List<ProductVO> getProductPage(Criteria cri); // 카테고리로 상품정보 받아오기

	ProductVO getProductByNum(Integer pdt_num); // 상품 상세정보
	
	int getProductPageall(Criteria cri); // 상품목록 전부 불러오기
}
