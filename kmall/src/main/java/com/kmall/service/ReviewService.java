package com.kmall.service;

import java.util.List;

import com.kmall.domain.ReviewVO;
import com.kmall.dto.Criteria;

public interface ReviewService {

	//후기등록
	void create(ReviewVO vo);
	
	//후기 목록
	List<ReviewVO> list(Integer pdt_num, Criteria cri);
	
	// 상품후기 목록개수.
	int listCount(Integer pdt_num);
	
	//후기 수정
	void modify(ReviewVO vo);
	
	//후기 삭제
	void delete(Integer rv_num);
}
