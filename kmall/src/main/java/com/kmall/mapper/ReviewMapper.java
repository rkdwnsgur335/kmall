package com.kmall.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.kmall.dto.Criteria;
import com.kmall.domain.ReviewVO;

public interface ReviewMapper {

	//후기등록
	void create(ReviewVO vo);
	
	//후기 목록
	List<ReviewVO> list(@Param("pdt_num")Integer pdt_num,@Param("cri") Criteria cri);
	
	// 상품후기 목록개수.
	int listCount(Integer pdt_num);
	
	//후기 수정
	void modify(ReviewVO vo);
	
	//후기 삭제
	void delete(Integer rv_num);
}
