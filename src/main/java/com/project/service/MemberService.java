package com.project.service;

import javax.servlet.http.HttpServletRequest;

import com.project.domain.AdminDTO;
import com.project.domain.MemberDTO;

public interface MemberService {
	public int memberInsert(MemberDTO dto);
	public boolean memberLogin(MemberDTO dto, HttpServletRequest request);
	public MemberDTO memberFind(int memNo, HttpServletRequest request);

	public MemberDTO get(int memNo);
}
