package com.project.mapper;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.project.domain.MemberDTO;

public interface MemberMapper {
	public int memberInsert(MemberDTO dto);
	public String memberLogin(MemberDTO dto);
	public String emailFind(MemberDTO dto);
	public List<MemberDTO> memberList();
	public MemberDTO memberInfo(int memNo);
	public int memberDelete(int memNo);
	public int memberUpdate(MemberDTO dto);
}