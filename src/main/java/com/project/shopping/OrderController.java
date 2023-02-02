package com.project.shopping;


import com.project.domain.CartDTO;
import com.project.domain.MemberDTO;
import com.project.domain.OrderDTO;
import com.project.domain.OrderDetailDTO;
import com.project.mapper.OrderDetailMapper;
import com.project.service.CartService;
import com.project.service.MemberService;
import com.project.service.OrderService;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@RestController
@RequestMapping("order")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@Autowired
	private CartService cartService;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private OrderDetailMapper orderDetailMapper;

	@PostMapping("preview")
	public ModelAndView preview(@RequestParam("carts") List<Integer> carts, HttpSession httpSession){
		ModelAndView mav = new ModelAndView("customer/order_view");

		int memNo = 1;	// Integer.valueOf((String) httpSession.getAttribute("memName")

		List<CartDTO> cartDTOS = cartService.get(carts, memNo);
		MemberDTO mDto = memberService.get(memNo);

		mav.addObject("cList", cartDTOS);
		mav.addObject("mDto", mDto);

		return mav;
	}
	
	@GetMapping("")
	public ModelAndView getAll(HttpSession httpSession){
		ModelAndView mav = new ModelAndView("myPage/delivery");
		
		int memNo = 1;	// Integer.valueOf((String) httpSession.getAttribute("memName")
		
		List<OrderDTO> oList = orderService.getAll(memNo);
		System.out.println("oList : " + oList);
		mav.addObject("oList", oList);
		
		return mav;
	}

	@GetMapping("/{no}")
	public ModelAndView get(@PathVariable int no, HttpSession httpSession){
		ModelAndView mav = new ModelAndView("customer/order_detail");
		
		int memNo = 1;	// Integer.valueOf((String) httpSession.getAttribute("memName")

		OrderDTO oDto = orderService.get(no, memNo);
		mav.addObject("oDto", oDto);
		return mav;
	}
	
	@PostMapping("")
	public ModelAndView insert(OrderDTO oDto, HttpSession httpSession){
		ModelAndView mav = new ModelAndView("customer/order_complete");
		int memNo = 1;	// Integer.valueOf((String) httpSession.getAttribute("memName")
		orderService.insert(oDto, memNo);
		System.out.println("insert");
		return mav;
	}
	
}
