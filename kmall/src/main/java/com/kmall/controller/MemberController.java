package com.kmall.controller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.kmall.domain.MemberVO;
import com.kmall.dto.EmailDTO;
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
	
	
	//회원가입 폼
	@GetMapping("/join")
	public void join() {
		
	}
	
	//회원가입 기능
	@PostMapping("/join")
	public String join(MemberVO vo) {
		
		log.info("회원정보 : " + vo);
		
		memservice.join(vo);

		
		return "redirect:/";
	}
	
	//아이디 중복 체크
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
	
	//로그인 폼
	@GetMapping("/login")
	public void login() {
		
	}
	
	//로그인 기능
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
	
	//로그아웃 기능
	@GetMapping("/logout")
	public String logout(HttpSession session, RedirectAttributes rttr) {
		
		session.invalidate();
		
		rttr.addFlashAttribute("msg", "logout");
		
		return "redirect:/";
	}
	
	//ID찾기 폼
	@GetMapping("/searchID")
	public void searchID() {
	}
	
	//ID찾기 기능
	@PostMapping("/resultID")
	public String resultID(@RequestParam("mem_phone") String mem_phone,Model model) {
		
		log.info("전화번호: " + mem_phone);
		
		String mem_id = memservice.resultID(mem_phone);
		
		String url = "";
		
		if(mem_id != null) {
			model.addAttribute("mem_id", mem_id);
			url = "/member/resultID";
		}else {
			url = "/member/resultID";
		}
		
		
		return url;
	}
	
	//PW찾기 폼
	@GetMapping("/searchPW")
	public void searchPW() {
	}
	
	
	
	//임시비밀번호 발급(PW찾기 기능)
	@PostMapping("/searchImsiPW")
	public String searchImsiPW(@RequestParam("mem_id") String mem_id,@RequestParam("mem_phone") String mem_phone, Model model, RedirectAttributes rttr) {
		
		//db에서 아이디와 핸드폰 번호 존재여부 확인.
		String db_mem_id = memservice.getIDEmailExists(mem_id, mem_phone);
		String temp_mem_pw = "";
		
		String url = "";
		
		
		if(db_mem_id != null) {
			
			//임시 비밀번호 생성
			UUID uid = UUID.randomUUID();
			temp_mem_pw = uid.toString().substring(0, 6); // 0 ~ 5 까지의 문자열
			
			log.info("임시비밀번호: " + temp_mem_pw); // 임시 비밀번호 데이터 들어오나 확인
			
			//임시 비밀번호 db에 저장
			memservice.changePW(db_mem_id, temp_mem_pw);
			
			//메일보내기
			EmailDTO dto = new EmailDTO("Kmall", "Kmall", mem_id, "Kmall 임시 비밀번호입니다.", "");
			
			try {
				
				
				
			} catch (Exception ex) {
				ex.printStackTrace();
			}
			
		}
		
		
		return "";
	}
	
}
