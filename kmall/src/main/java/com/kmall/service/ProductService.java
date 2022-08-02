package com.kmall.service;

import java.util.List;

import com.kmall.domain.CategoryVO;

public interface ProductService {

	List<CategoryVO> CateBrand(); // 브랜드 카테고리
	
	List<CategoryVO> CateGender(); // 성별 카테고리
}
