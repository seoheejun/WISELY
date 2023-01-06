package com.project.shopping;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.domain.MemberDTO;
import com.project.service.MemberService;

@Controller
public class MemberController {
	
	
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping("/user_list")
	public String memberList(Model model) {
		List<MemberDTO> memberList = memberService.memberList();
		System.out.println(memberList);
		
		model.addAttribute("list", memberList);
		return "admin/user_list";
	}
	
	
	@RequestMapping("/user_info")
	public String memberInfo(int memNo, Model model) {
		MemberDTO dto = memberService.memberDetail(memNo);
		
		model.addAttribute("dto", dto);
		
		return "admin/user_info";
	}
	
	
	@RequestMapping("/userDelete")
	public String memberDelete(@RequestParam("memNo") int memNo) {
		
		memberService.memberRemove(memNo);
		
		return "redirect:user_list";
	}
	
	
	@RequestMapping("/user_update")
	public String memberUpdate(MemberDTO dto) {
		int cnt = memberService.memberModify(dto);
		
		return "redirect:user_list";
		/* return "admin/user_info"; */
	}
	
	
	
	
	
	
	
	
	
	/*
	@RequestMapping("/user_Insert")
	public String memberInsert(MemberDTO dto) {
		memberService.memberRegister(dto);
		
		return "redirect:user_list";
	}
	
	@RequestMapping("/memberRegister")
	public String memberRegister() {	
		return "memberRegister";
	}
	*/
	
	
}
