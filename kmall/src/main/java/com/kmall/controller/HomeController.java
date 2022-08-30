package com.kmall.controller;

import java.util.List;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kmall.domain.ProductVO;
import com.kmall.dto.Criteria;
import com.kmall.dto.PageDTO;
import com.kmall.service.HomeService;

import lombok.Setter;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	/*
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	*/
	
	@Setter(onMethod_ = {@Autowired} )
	private HomeService proservice;
	
	@GetMapping("/")
	public String index(@ModelAttribute("cri") Criteria cri, Model model) {
		List<ProductVO> productList = proservice.getProductPage(cri);
		
		
		cri.setAmount(9);
		
		for(int i=0; i<productList.size(); i++) {
			String pdt_img_folder = productList.get(i).getPdt_img_folder().replace("\\", "/"); // File.serparator 운영체제 경로구분자
			productList.get(i).setPdt_img_folder(pdt_img_folder);
		}
		
	
		
		
		// 페이징쿼리에 의한 상품목록
		model.addAttribute("productList", productList); // 상품정보
		model.addAttribute("cateList", proservice.CateBrand()); // 브랜드 이름
		
		// [prev] 1	 2	3	4	5  [next]
		int totalCount = proservice.getProductPageall(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, totalCount));
		
		
		return "index";
	}
	
	

}
