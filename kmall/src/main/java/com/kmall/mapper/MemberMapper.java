package com.kmall.mapper;

import java.util.List;

import com.kmall.domain.MemberVO;
import com.kmall.dto.LoginDTO;

public interface MemberMapper {

	void join(MemberVO vo);
	
	String idCheck(String mem_id);
	
	MemberVO login_ok(LoginDTO dto);
}
