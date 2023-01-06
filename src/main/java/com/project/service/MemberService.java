package com.project.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;

import com.project.domain.MemberDTO;

public interface MemberService {
	
	public List<MemberDTO> memberList();
	
	public MemberDTO memberDetail(int memNo);
	
	public int memberRemove(int memNo);
	
	public int memberModify(MemberDTO dto);
	
	
	
	
	
	
	
	
	
	
	
	/*
	public void memberRegister(MemberDTO dto);
	
//	public String findLoginName(MemberDTO dto, HttpServletRequest reqeust);
	public void findLoginName(MemberDTO dto, HttpServletRequest reqeust);
	*/
}
