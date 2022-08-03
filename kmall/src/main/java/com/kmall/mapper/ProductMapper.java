package com.kmall.mapper;

import java.util.List;

import com.kmall.domain.CategoryVO;
import com.kmall.domain.ProductVO;

public interface ProductMapper {

	List<CategoryVO> CateBrand(); // 브랜드 카테고리
	
	List<CategoryVO> CateGender(); // 성별 카테고리
	
	void productInsert(ProductVO vo); // 상품 인서트
}
