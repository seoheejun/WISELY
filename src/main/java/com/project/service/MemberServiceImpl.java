package com.project.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.domain.AdminDTO;
import com.project.domain.MemberDTO;
import com.project.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService {

	private MemberMapper mapper;
	
	@Autowired
	public MemberServiceImpl(MemberMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public int memberInsert(MemberDTO dto) {
		return mapper.memberInsert(dto);
	}

	@Override
	public boolean memberLogin(MemberDTO dto, HttpServletRequest request) {
		String memName = mapper.memberLogin(dto);
		HttpSession session = request.getSession();
		
		if(memName != null) {
			session.setAttribute("memName", memName);
			return true;
		} else {
			return false;			
		}
	}


	
}
