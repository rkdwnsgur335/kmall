package com.kmall.service;

import java.util.List;

import com.kmall.domain.MemberVO;
import com.kmall.dto.LoginDTO;

public interface MemberService {
	
	void join(MemberVO vo);
	
	String idCheck(String mem_id);
	
	MemberVO login_ok(LoginDTO dto);
}
