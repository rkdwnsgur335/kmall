package com.kmall.service;

import org.apache.ibatis.annotations.Param;

import com.kmall.domain.MemberVO;
import com.kmall.dto.LoginDTO;

public interface MemberService {
	
	void join(MemberVO vo);
	
	String idCheck(String mem_id);
	
	MemberVO login_ok(LoginDTO dto);
	
	String resultID(String mem_phone);
	
	// 아이디(이메일)과 핸드폰 번호 확인
	String getIDEmailExists(String mem_id, String mem_phone);
	
	// 임시 비밀번호로 변경
	void changePW(String mem_id, String mem_pw);
	
	void modify(MemberVO vo);
}
