package com.kmall.mapper;

import com.kmall.domain.MemberVO;
import com.kmall.dto.LoginDTO;

public interface MemberMapper {

	void join(MemberVO vo);
	
	MemberVO login_ok(LoginDTO dto);
}
