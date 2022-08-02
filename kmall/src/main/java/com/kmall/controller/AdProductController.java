package com.kmall.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/admin/product/*")
@Controller
public class AdProductController {

	@Resource(name = "uploadPath")
	private String uploadPath; // 서블렛 컨텍스트 안에 있음.
	
	//상품등록 폼
	@GetMapping("/productInsert")
	public void productInsert(Model model) {
		
	}
}
