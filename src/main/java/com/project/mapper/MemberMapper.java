package com.project.mapper;

import java.util.List;

import com.project.domain.MemberDTO;

// Persistent Layer(영속성 계층)
public interface MemberMapper {
	// 회원 가입 
	public void memberInsert(MemberDTO dto);
	
	// 로그인 
	public MemberDTO memberLogin(MemberDTO dto);
	
	// 이메일 찾기 
	public MemberDTO emailFind(MemberDTO dto);
	
}
