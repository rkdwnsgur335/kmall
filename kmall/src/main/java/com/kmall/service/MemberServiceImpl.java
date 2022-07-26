package com.kmall.service;

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

	@Override
	public String resultID(String mem_phone) {
		// TODO Auto-generated method stub
		return mapper.resultID(mem_phone);
	}

	@Override
	public String getIDEmailExists(String mem_id, String mem_phone) {
		// TODO Auto-generated method stub
		return mapper.getIDEmailExists(mem_id, mem_phone);
	}

	@Override
	public void changePW(String mem_id, String mem_pw) {
		// TODO Auto-generated method stub
		mapper.changePW(mem_id, mem_pw);
		
	}



}
