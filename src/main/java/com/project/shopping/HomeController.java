package com.project.shopping;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
		
	@GetMapping("/")
	public String home() {
		return "home";
	}
	
	@GetMapping("ad_login")
	public String ad_login() {
		return "admin/ad_login";
	}
	
//	@GetMapping("user_list")
//	public String user_list() {
//		return "admin/user_list";
//	}
	
	@GetMapping("cat_list")
	public String cat_list() {
		return "admin/cat_list";
	}
	
	@GetMapping("pd_list")
	public String pd_list() {
		return "admin/pd_list";
	}
	
	@GetMapping("user_login")
	public String user_login() {
		return "customer/user_login";
	}
	
	@GetMapping("user_join")
	public String user_join() {
		return "customer/user_join";
	}
	
	@GetMapping("cart_list")
	public String cart_list() {
		return "customer/cart_list";
	}
	
	
	
	
	
	@GetMapping("user_modify")
	public String user_modify() {
		return "customer/user_modify";
	}
}