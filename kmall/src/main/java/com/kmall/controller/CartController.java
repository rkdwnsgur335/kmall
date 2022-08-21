package com.kmall.controller;

import java.util.List;

import javax.annotation.Resource;
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

import com.kmall.domain.MemberVO;
import com.kmall.domain.CartVOList;
import com.kmall.domain.CartVO;
import com.kmall.mapper.CartMapper;
import com.kmall.service.CartService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/user/cart/*")
@Controller
public class CartController {
	
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Setter(onMethod_ = {@Autowired})
	private CartService cartservice;
		
	// 장바구니 추가
	@ResponseBody
	@GetMapping("/cart_add")
	public ResponseEntity<String> card_add(CartVO vo, HttpSession session) {
		
		ResponseEntity<String> entity = null;
		
		//로그인 정보
		String mem_id = ((MemberVO) session.getAttribute("loginStatus")).getMem_id();
		vo.setMem_id(mem_id);
		
		cartservice.cart_add(vo);
		entity = new ResponseEntity<String>("success", HttpStatus.OK);
		
		return entity;
	}
	
	// 장바구니 목록
	@GetMapping("/cart_list")
	public String cart_list(HttpSession session, Model model) {
		
		String mem_id = ((MemberVO) session.getAttribute("loginStatus")).getMem_id();
		
		List<CartVOList> cartList = cartservice.cart_list(mem_id);
		
		for(int i=0; i<cartList.size(); i++) {
			String pdt_img_folder = cartList.get(i).getPdt_img_folder().replace("\\", "/"); // File.serparator 운영체제 경로구분자
			cartList.get(i).setPdt_img_folder(pdt_img_folder);
		}
		
		model.addAttribute("cartList", cartList);
		
		return "/user/cart/cartList";
	}
	
	//상품 수량 업데이트
	@GetMapping("/cart_amount_update2")
	public String cart_amount_update2(@RequestParam("cart_code") Long cart_code, @RequestParam("cart_amount") int cart_amount) {
		
		cartservice.cart_amount_update(cart_code, cart_amount);
		
		return "redirect:/user/cart/cart_list";
	}
	
	//장바구니 상품 삭제(개별)
	@GetMapping("/cart_delete")
	public String cart_delete(@RequestParam("cart_code") Long cart_code) {
		
		cartservice.cart_delete(cart_code);
		
		return "redirect:/user/cart/cart_list";
	}
	
	//장바구니 상품 삭제(선택)
	@ResponseBody
	@PostMapping("/deleteselect")
	public void deleteselect(@RequestParam("chbox[]") List<String> checkArr,CartVO vo, HttpSession session ) {
	
		String mem_id = ((MemberVO) session.getAttribute("loginStatus")).getMem_id();
		vo.setMem_id(mem_id);
		
		int cart_code = 0;
		
		if(mem_id != null) {
			vo.setMem_id(mem_id);
			
			for(String i : checkArr) {
				cart_code = Integer.parseInt(i);
				vo.setCart_code((long) cart_code);
				cartservice.deleteselect(vo);
			}
		}
		
	}
	
	
}
