package com.kmall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kmall.domain.MemberVO;
import com.kmall.dto.LoginDTO;
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
		
		memservice.join(vo);

		
		return "redirect:/";
	}
	
	@ResponseBody
	@GetMapping("/idCheck")
	public ResponseEntity<String> idCheck(@RequestParam("mem_id") String mem_id){
		
		ResponseEntity<String> entity = null;
		
		String isUseID = "";
		
		if(memservice.idCheck(mem_id) != null) {
			isUseID = "no";
		}else {
			isUseID = "yes";
		}
		
		entity = new ResponseEntity<String>(isUseID, HttpStatus.OK);
		
		return entity;
	}
	
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@PostMapping("/login")
	public String login_ok(LoginDTO dto,RedirectAttributes rttr, HttpSession session) throws Exception {
		
		log.info("로그인정보 : " + dto);
		
		String url = "";
		String msg = "";
		
		MemberVO vo = memservice.login_ok(dto);
		
		if(vo != null) { //아이디 존재
			
			//비번일치
			
			String passwd = dto.getMem_pw();
			String db_passwd = vo.getMem_pw();
			
			
			
			if(passwd.equalsIgnoreCase(db_passwd)) {
				//로그인 성공
				url = "/";
				session.setAttribute("loginStatus", vo);
				msg = "loginSuccess";
			}else {
				//비밀번호 불일치
				url = "/member/login";
				msg="passwdFailure";
			}
			
		}else { //아이디 불일치
			url = "/member/login";
			msg = "idFailure";
		}
		
		rttr.addFlashAttribute("msg", msg);
		 
		return "redirect:" + url;
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session, RedirectAttributes rttr) {
		
		session.invalidate();
		
		rttr.addFlashAttribute("msg", "logout");
		
		return "redirect:/";
	}
	
}
