package com.kmall.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kmall.service.UserProductService;
import com.kmall.util.UploadFileUtils;
import com.kmall.domain.CategoryVO;
import com.kmall.domain.ProductVO;
import com.kmall.dto.Criteria;
import com.kmall.dto.PageDTO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/user/product/*")
@Controller
public class UserProductController {
	
	@Setter(onMethod_ = {@Autowired})
	private UserProductService proservice;
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
	//상품 리스트
	@GetMapping("/productList")
	public void productList(@ModelAttribute("cri") Criteria cri, Model model) {
		
		List<ProductVO> productList = proservice.getProductPage(cri);
		
		
		cri.setAmount(9);
		
		for(int i=0; i<productList.size(); i++) {
			String pdt_img_folder = productList.get(i).getPdt_img_folder().replace("\\", "/"); // File.serparator 운영체제 경로구분자
			productList.get(i).setPdt_img_folder(pdt_img_folder);
		}
		
	
		
		
		// 페이징쿼리에 의한 상품목록
		model.addAttribute("productList", productList); // 상품정보
		model.addAttribute("cateList", proservice.CateBrand()); // 브랜드 이름

		/*
		// [prev] 1	 2	3	4	5  [next]
		int totalCount = proservice.getProductTotalCount(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, totalCount));
		*/
	}
	
	
	//상품리스트 이미지 보여주기
	@ResponseBody
	@GetMapping("/displayFile")
	public ResponseEntity<byte[]> displayFile(String folderName, String fileName){
		
		log.info("폴더이름: " + folderName);
		log.info("파일이름: " + fileName);
		
		
		
		//이미지를 바이트 배열로 읽어오는 작업
		return UploadFileUtils.getFile(uploadPath, folderName + "\\" + fileName);
	}
	
}
