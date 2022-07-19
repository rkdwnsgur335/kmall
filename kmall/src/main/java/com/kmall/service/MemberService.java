package com.kmall.service;

import com.kmall.domain.MemberVO;
import com.kmall.dto.LoginDTO;

public interface MemberService {
	
	void join(MemberVO vo);
	
	MemberVO login_ok(LoginDTO dto);
}
