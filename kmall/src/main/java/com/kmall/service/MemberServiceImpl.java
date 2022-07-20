package com.kmall.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kmall.domain.MemberVO;
import com.kmall.dto.LoginDTO;
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
	
	@Override
	public String idCheck(String mem_id) {
		// TODO Auto-generated method stub
		return mapper.idCheck(mem_id);
	}
	

	@Override
	public MemberVO login_ok(LoginDTO dto) {
		// TODO Auto-generated method stub
		return mapper.login_ok(dto);
	}



}
