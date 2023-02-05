package com.project.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.project.domain.AdminDTO;
import com.project.domain.MemberDTO;

public interface MemberService {
	public int memberInsert(MemberDTO dto);
	public boolean memberLogin(MemberDTO dto, HttpServletRequest request);
	public List<MemberDTO> memberList();
	public MemberDTO memberInfo(int memNo);
	public int memberDelete(int memNo);
	public int memberUpdate(MemberDTO dto);
	public MemberDTO memberFind(int memNo, HttpServletRequest request);
	public MemberDTO get(int memNo);
}
