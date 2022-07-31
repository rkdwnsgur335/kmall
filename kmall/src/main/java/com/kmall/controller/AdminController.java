package com.kmall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kmall.domain.AdminVO;
import com.kmall.service.AdminService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/admin/*")
@Controller
public class AdminController {

	@Setter(onMethod_ = {@Autowired})
	private AdminService adservice;
	
	
	//관리자 로그인 폼
	@GetMapping("/adLogin")
	public void adLogin() {
		
	}
	
	//관리자 로그인 기능
	@PostMapping("/adLogin")
	public String adLogin(AdminVO vo, HttpSession session) throws Exception {
		
		String url = "";
		
		AdminVO dbAdmiVO = adservice.adLogin(vo);
		
	if(dbAdmiVO != null) { //아이디 존재
		
		if(vo.getAdmin_pw().equals(dbAdmiVO.getAdmin_pw())) { //비밀번호 일치
			
			session.setAttribute("adminStatus", dbAdmiVO);
			url = "admin/adMain";
		}else { //비밀번호 불일치
			url = "admin/";
		}
		
	}else { // 아이디 없음
		url = "admin/";
		
	}
		

		return "redirect:/" + url;
	}
	
	//메인페이지폼
	@GetMapping("/adMain")
	public String adMain() {
		
		return "/admin/adMain";
	}
	
	//로그아웃
	@GetMapping("/adLogout")
	public String adLogout(HttpSession session) {
		
		session.invalidate();
		
		return "redirect:/admin/adLogin";
	}
	
	
	
}
