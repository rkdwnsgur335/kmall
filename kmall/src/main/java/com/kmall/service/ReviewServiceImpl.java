package com.kmall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmall.domain.ReviewVO;
import com.kmall.dto.Criteria;
import com.kmall.mapper.ReviewMapper;

import lombok.Setter;

@Service
public class ReviewServiceImpl implements ReviewService{

	@Setter(onMethod_ = {@Autowired})
	private ReviewMapper reviewmapper;
	
	//후기 등록
	@Override
	public void create(ReviewVO vo) {
		// TODO Auto-generated method stub
		
		reviewmapper.create(vo);
	}
	
	@Override
	public List<ReviewVO> list(Integer pdt_num, Criteria cri) {
		// TODO Auto-generated method stub
		return reviewmapper.list(pdt_num, cri);
	}

	@Override
	public int listCount(Integer pdt_num) {
		// TODO Auto-generated method stub
		return reviewmapper.listCount(pdt_num);
	}

	@Override
	public void modify(ReviewVO vo) {
		// TODO Auto-generated method stub
		reviewmapper.modify(vo);
	}



}
