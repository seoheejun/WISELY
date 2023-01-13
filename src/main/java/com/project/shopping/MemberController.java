package com.project.shopping;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
	
	@RequestMapping("user_list")
	public String memberList(Model model) {
		List<MemberDTO> memberList = memberService.memberList();
		
		model.addAttribute("list", memberList);
		return "admin/user_list";
	}
	
	@RequestMapping("user_info")
	public String memberInfo(int memNo, Model model) {
		MemberDTO dto = memberService.memberInfo(memNo);
		
		model.addAttribute("dto", dto);
		return "admin/user_info";
	}
	
	@RequestMapping("user_update")
	public String memberUpdate(MemberDTO dto) {
		memberService.memberUpdate(dto);
		return "redirect:user_list";
	}
	
	@RequestMapping("user_delete")
	public String memberDelete(int memNo) {
		memberService.memberDelete(memNo);
		return "redirect:user_list";
	}
}
