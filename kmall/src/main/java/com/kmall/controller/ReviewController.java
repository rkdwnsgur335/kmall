package com.kmall.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.kmall.service.ReviewService;
import com.kmall.dto.Criteria;
import com.kmall.dto.PageDTO;
import com.kmall.domain.MemberVO;
import com.kmall.domain.ReviewVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/user/review/*")
@RestController
public class ReviewController {
	
	@Setter(onMethod_ = {@Autowired})
	private ReviewService reviewservice;
	
	//후기 등록
	@PostMapping(value = "/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> create(@RequestBody ReviewVO vo, HttpSession session){
		ResponseEntity<String> entity = null;
		
		String mem_id = ((MemberVO) session.getAttribute("loginStatus")).getMem_id();	
		vo.setMem_id(mem_id);
		
		reviewservice.create(vo);
		
		entity = new ResponseEntity<String>("success",HttpStatus.OK);
		
		return entity;
		
	}
	
	//후기목록
	@GetMapping("/list/{pdt_num}/{page}")
	public ResponseEntity<Map<String, Object>> reviewList(@PathVariable("pdt_num") Integer pdt_num, @PathVariable("page") Integer page){
		
		log.info("상품 번호 : " + pdt_num);
		
		ResponseEntity<Map<String, Object>> entity = null;
		Map<String, Object> map = new HashMap<String, Object>();
		
		Criteria cri = new Criteria(); //검색필드가 필요없으므로, 메서드의 파라미터로 사용하지않고, 객체를 직접생성한다.
		cri.setPageNum(page);
		
		//1)댓글목록
		List<ReviewVO> list = reviewservice.list(pdt_num, cri);
		map.put("list", list);	
		//2)페이지정보
		PageDTO pageMaker = new PageDTO(cri, reviewservice.listCount(pdt_num));
		map.put("pageMaker", pageMaker);
		
		
		entity = new ResponseEntity<Map<String,Object>>(map, HttpStatus.OK);
		
		return entity;
	}
	
	//상품후기 수정
	@PatchMapping(value = "/modify", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
	public ResponseEntity<String> modify(@RequestBody ReviewVO vo, HttpSession session){
		
		ResponseEntity<String> entity = null;
		
		return entity;
	}
}
