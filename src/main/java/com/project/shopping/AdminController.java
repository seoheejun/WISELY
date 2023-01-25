package com.project.shopping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.domain.AdminDTO;
import com.project.service.AdminService;

@Controller
public class AdminController {

	@Autowired
	private AdminService adminService;
	
	@Autowired
	private BCryptPasswordEncoder pwEncoder;
	
	@RequestMapping("adminInsert")
	public String adminInsert(AdminDTO dto) {
		String pw = dto.getAdminPw();
		String cipherPw = pwEncoder.encode(pw);
		dto.setAdminPw(cipherPw);
		
//		int cnt = adminService.adminInsert(dto);
		
		return "redirect:/";
	}
	
	@RequestMapping("ad_loginOK")
	public String adminLogin(AdminDTO dto, HttpServletRequest request, RedirectAttributes rttr) {
		boolean result = adminService.ad_Login(dto, request);
		
		if(!result) {
			rttr.addFlashAttribute("result", 0);
			return "redirect:ad_login";
		}
		return "redirect:/";
	}
	
	@RequestMapping("ad_logoutOK")
	public String adminLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
