package com.project.shopping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.domain.MemberDTO;
import com.project.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping("memberInsert")
	public String memberInsert(MemberDTO dto) {
		memberService.memberInsert(dto);
		return "customer/user_login";
	}
	
	@RequestMapping("memberLogin")
	public String memberLogin(MemberDTO dto, HttpServletRequest request, RedirectAttributes rttr) {
		boolean result = memberService.memberLogin(dto, request);
		
		if(!result) {
			rttr.addFlashAttribute("result", 0);
			return "redirect:user_login";
		}
		return "redirect:/";
	}
	
	@RequestMapping("memberLogout")
	public String memberLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
}
