package com.project.shopping;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
		
	@RequestMapping("/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("ad_login")
	public String ad_login() {
		return "admin/ad_login";
	}
	
	@RequestMapping("user_list")
	public String user_list() {
		return "admin/user_list";
	}
	
//	@RequestMapping("cat_list")
//	public String cat_list() {
//		return "admin/cat_list";
//	}
	
	@RequestMapping("pd_list")
	public String pd_list() {
		return "admin/pd_list";
	}
}