package com.kmall.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

		
		// [prev] 1	 2	3	4	5  [next]
		int totalCount = proservice.getProductPageall(cri);
		model.addAttribute("pageMaker", new PageDTO(cri, totalCount));
		
	}
	
	
	//상품리스트. 페이징기능추가.(검색기능 제외)
		@GetMapping("/productList/{pdt_gender}") // REST API 개발에서 사용하는 주소형태.
		public String productList(@PathVariable("pdt_gender") Integer pdt_gender, @ModelAttribute("cri") Criteria cri, Model model) {
			
			
			cri.setAmount(9); // 10 -> 9변경
			
			List<ProductVO> productList = proservice.getProductPagegender(pdt_gender, cri);
			
			log.info("성별정보: " + pdt_gender);
			
			
			// 윈도우 운영체제 경로구분자 \ (역슬래쉬).
			// 날짜폴더명의 \를 /로 변환하는 작업. \가 클라이언트에서 서버로 보내지는 데이터로 사용이 안된다.
			for(int i=0; i<productList.size(); i++) {
				String pdt_img_folder = productList.get(i).getPdt_img_folder().replace("\\", "/"); // File.serparator 운영체제 경로구분자
				productList.get(i).setPdt_img_folder(pdt_img_folder);
			}
			
			
			// 1)페이징쿼리에 의한 상품목록
			model.addAttribute("productList", productList);
			
			// [prev] 1	 2	3	4	5  [next]
			int totalCount = proservice.getProductPageall(cri);
			// 2) 페이지 표시
			model.addAttribute("pageMaker", new PageDTO(cri, totalCount));
			
			return "/user/product/productList";
		}
	
	//메인 페이지 상품 리스트
	@GetMapping("/index")
	public void index(@ModelAttribute("cri") Criteria cri, Model model) {
		
		List<ProductVO> productList = proservice.getProductPage(cri);
		
		
		cri.setAmount(9);
		
		for(int i=0; i<productList.size(); i++) {
			String pdt_img_folder = productList.get(i).getPdt_img_folder().replace("\\", "/"); // File.serparator 운영체제 경로구분자
			productList.get(i).setPdt_img_folder(pdt_img_folder);
		}
		
	
		
		
		// 페이징쿼리에 의한 상품목록
		model.addAttribute("productList", productList); // 상품정보
		model.addAttribute("cateList", proservice.CateBrand()); // 브랜드 이름
		
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
	
	//상품상세.
	@GetMapping("/productDetail")
	public String productDetail(@RequestParam("pdt_num") Integer pdt_num, @ModelAttribute("cri") Criteria cri, Model model) {
		
		ProductVO vo = proservice.getProductByNum(pdt_num);
		vo.setPdt_img_folder(vo.getPdt_img_folder().replace("\\", "/"));
		
		model.addAttribute("productVO", vo);
		
		return "/user/product/productDetail";
	}
	
}
