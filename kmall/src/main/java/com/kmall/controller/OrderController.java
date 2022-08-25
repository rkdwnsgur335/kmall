package com.kmall.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kmall.domain.CartVO;
import com.kmall.domain.CartOrderInfo;
import com.kmall.domain.MemberVO;
import com.kmall.service.CartService;
import com.kmall.service.OrderService;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RequestMapping("/user/order/*")
@Controller
public class OrderController {
	
	@Setter(onMethod_= {@Autowired} )
	private OrderService orderService;
	
	@Setter(onMethod_= {@Autowired} )
	private CartService cartService;
	
	
	
	@GetMapping("/orderListInfo")
	public void orderListInfo(@RequestParam("type") String type, Integer pdt_num, Integer odr_amount, HttpSession session, Model model) {
		
		String mem_id = ((MemberVO) session.getAttribute("loginStatus")).getMem_id();
		
		List<CartOrderInfo> orderInfoList = null;
		
		if(type.equals("cartOrder")) { //장바구니 구매.   Integer pdt_num, int odr_amount 파라미터 사용 안됨.
			orderInfoList = orderService.cartOrderList(mem_id);
			
		}else if(type.equals("direct")) { //직접구매. Integer pdt_num, int odr_amount 파라미터 사용.
			orderInfoList = orderService.directOrderList(pdt_num, odr_amount);
			
			//직접구매시 장바구니에 데이타를 저장한다.			
			CartVO vo = new CartVO(); 
			vo.setMem_id(mem_id);
			vo.setPdt_num(pdt_num);
			vo.setCart_amount(odr_amount);
			
			cartService.cart_add(vo);
			
		}
		
		// 폴더경로 역슬래쉬를 슬래쉬로 변환.
		for(int i=0; i<orderInfoList.size(); i++) {
			String pdt_img_folder = orderInfoList.get(i).getPdt_img_folder().replace("\\", "/"); // File.serparator 운영체제 경로구분자
			orderInfoList.get(i).setPdt_img_folder(pdt_img_folder);
		}
		
		model.addAttribute("cartOrderList", orderInfoList);
	}
	
	
}
