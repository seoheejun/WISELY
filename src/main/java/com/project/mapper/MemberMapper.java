package com.project.mapper;


import javax.servlet.http.HttpServletRequest;

import com.project.domain.MemberDTO;

public interface MemberMapper {
	public int memberInsert(MemberDTO dto);
	public String memberLogin(MemberDTO dto);
	public String emailFind(MemberDTO dto);
	public MemberDTO memberFind(int memNo);
}