package com.kmall.mapper;

import java.util.List;

import com.kmall.dto.Criteria;
import com.kmall.domain.CategoryVO;
import com.kmall.domain.ProductVO;

public interface ProductMapper {

	List<CategoryVO> CateBrand(); // 브랜드 카테고리
	
	List<CategoryVO> CateGender(); // 성별 카테고리
	
	void productInsert(ProductVO vo); // 상품 인서트
	
	List<ProductVO> getProductList(Criteria cri); //상품 리스트
	
	int getProductTotalCount(Criteria cri); // 페이징
	
	ProductVO getProductByNum(Integer pdt_num); // 상품번호로 상품정보 가져오기
	
	void productModify(ProductVO vo); // 상품수정
}
