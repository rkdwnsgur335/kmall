package com.kmall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmall.domain.MemberVO;
import com.kmall.mapper.MemberMapper;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Setter(onMethod_ = {@Autowired} )
	private MemberMapper mapper;
	
	@Override
	public void join(MemberVO vo) {
		
		mapper.join(vo);
		
	}

}
