package com.project.shopping;


import com.project.domain.CartDTO;
import com.project.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("cart")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	// 장바구니 페이지 이동
	@RequestMapping("")
	public ModelAndView cartList(CartDTO cDto) {
		ModelAndView mav = new ModelAndView("customer/cart_list");
		mav.addObject("cList", cartService.getCartList(cDto));

		return mav;
	}

	@PostMapping("cartAdd")
	public ResponseEntity<Integer> cartAdd(CartDTO cDto, HttpSession httpSession) {
		int memNo = Integer.valueOf((String) httpSession.getAttribute("memName"));
		int result = cartService.addCart(cDto, memNo);
		System.out.println("장바구니 추가 결과 : "+ result);
		
		return ResponseEntity.ok(result);
	}
	
	@PostMapping("increase")
	public ResponseEntity increase(int pNo, HttpSession httpSession) {
		int memNo = 1;	// Integer.valueOf((String) httpSession.getAttribute("memName")
		cartService.increase(pNo, memNo);

		return ResponseEntity.ok().build();
	}
	
	@PostMapping("decrease")
	public ResponseEntity decreaseCart(int pNo, HttpSession httpSession) {
		int memNo = 1;	// Integer.valueOf((String) httpSession.getAttribute("memName")
		cartService.decrease(pNo, memNo);

		return ResponseEntity.ok().build();
	}
	
	// 장바구니 삭제
	@PostMapping("delete")
	public ResponseEntity delete(@RequestParam("pNoList[]") List<Integer> pNoList, HttpSession httpSession) {
		int memNo = 1;	// Integer.valueOf((String) httpSession.getAttribute("memName")
		cartService.delete(pNoList, memNo);

		return ResponseEntity.ok().build();
	}
	
	// 장바구니 체크박스 선택 상품 삭제
	@RequestMapping("cartSelectDelete")
	public String cartSelectDelete(CartDTO cDto, HttpServletRequest request) {
		
		String cartNos = request.getParameter("delProdNums");
		String memNo = request.getParameter("memNo");
		System.out.println("memNo : "+memNo);
		String[] cartNoArr = cartNos.split("/");
		
		if(cartNoArr != null && cartNoArr.length > 0) {
			for(int i = 0; i < cartNoArr.length; i++) {
				int cartNo = Integer.parseInt(cartNoArr[i]);
				cartService.cartRemove(cartNo);
			}
		}
		System.out.println("장바구니 삭제 : " + cDto);
		return "redirect:cart_list?memNo="+memNo;
	}

}