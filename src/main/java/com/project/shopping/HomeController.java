package com.project.shopping;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.domain.CategoryDTO;
import com.project.domain.ProductDTO;
import com.project.service.CategoryService;
import com.project.service.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	private ProductService productService;
		
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	@RequestMapping("/")
	public String home(Model model) {
		List<ProductDTO> list1 = productService.getProdBySpec("recommend_1");
		List<ProductDTO> list2 = productService.getProdBySpec("recommend_2");
		List<ProductDTO> list3 = productService.getProdBySpec("recommend_3");
		List<ProductDTO> list4 = productService.getProdBySpec("recommend_4");
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		
		return "home";
	}
	
	@RequestMapping("movePage1")
	public String movePage1() {
		return "page/page1";
	}
	
	@RequestMapping("movePage2")
	public String movePage2() {
		return "page/page2";
	}
	
	@RequestMapping("movePage3")
	public String movePage3() {
		return "page/page3";
	}
	
	@RequestMapping("movePage4")
	public String movePage4() {
		return "page/page4";
	}
	
	@RequestMapping("ad_login")
	public String ad_login() {
		return "admin/ad_login";
	}
	
	@RequestMapping("user_list")
	public String user_list() {
		return "admin/user_list";
	}
	
	@RequestMapping("user_login")
	public String user_login() {
		return "customer/user_login";
	}
	
	@RequestMapping("user_join")
	public String user_join() {
		return "customer/user_join";
	}
	
	@RequestMapping("service1")
	public String service_1() {
		return "service/service1";
	}
	
	@RequestMapping("service2")
	public String service_2() {
		return "service/service2";
	}
	
	@RequestMapping("service3")
	public String service_3() {
		return "service/service3";
	}
	
	@RequestMapping("service4")
	public String service_4() {
		return "service/service4";
	}
	
	@RequestMapping("service5")
	public String service_5() {
		return "service/service5";
	}
	
	@RequestMapping("secTest")
	public void st() {
		// 암호화 전 비밀번호
		String pw = "test1234";
		String pw2 = "test1212";
		
		String cipherPW1 = pwEncoder.encode(pw);
		String cipherPW2 = pwEncoder.encode(pw);
		
		// 암호화 후 비밀번호
		System.out.println("암호화된 pw1: " + cipherPW1);
		System.out.println("암호화된 pw2: " + cipherPW2);
		
		// matches(암호화 전 비밀번호, 암호화 후 비밀번호) : 두 매개변수가 일치하면 True, 그렇지 않으면 False
		boolean b1 = pwEncoder.matches(pw, cipherPW1);
		boolean b2 = pwEncoder.matches(pw2, cipherPW2);
		
		System.out.println("b1: " + b1);
		System.out.println("b2: " + b2);
	}
}