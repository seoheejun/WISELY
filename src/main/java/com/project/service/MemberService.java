package com.project.service;


import java.util.List;

import javax.servlet.http.HttpServletResponse;

import com.project.domain.MemberDTO;

public interface MemberService {
	//회원 가입
	public void memberRegister(MemberDTO dto);
	
	
	public MemberDTO loginCheck(MemberDTO dto);
	
	
	// 아이디 찾기 
	public MemberDTO emailFind(MemberDTO dto) throws Exception;
}
