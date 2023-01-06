package com.project.mapper;

import java.util.List;

import com.project.domain.MemberDTO;

public interface MemberMapper {
	public List<MemberDTO> memberList();
	
	public MemberDTO memberInfo(int memNo);
	
	public int memberDelete(int memNo);
	
	public int memberUpdate(MemberDTO dto);
	
	
	
	
	
	
	
	
	
	
	/*
	 * public void memberInsert(MemberDTO dto);
	 * 
	 * public String findLoginName(MemberDTO dto);
	 */
}
