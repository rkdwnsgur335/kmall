package com.kmall.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kmall.domain.MemberVO;
import com.kmall.service.MemberService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/member/*")
@Log4j
public class MemberController {
	
	@Setter(onMethod_ = {@Autowired} )
	private MemberService memservice;
	
	//로그인 폼
	@GetMapping("/join")
	public void join() {
		
	}
	
	@PostMapping("/join")
	public String join(MemberVO vo) {
		
		log.info("회원정보 : " + vo);
		
//		memservice.join(vo);

		
		return "redirect:/member/join";
	}
	
}
