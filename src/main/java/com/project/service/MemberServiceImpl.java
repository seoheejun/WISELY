package com.project.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.domain.MemberDTO;
import com.project.mapper.MemberMapper;


@Service
public class MemberServiceImpl implements MemberService{

	@Autowired // 필드주입
	private MemberMapper mapper;

	// 생성자 주입
//	private final MemberMapper mapper;
//		
//	@Autowired
//	public MemberServiceImpl(MemberMapper mapper) {
//		this.mapper = mapper;
//	}
	
	@Override
	public List<MemberDTO> memberList() {
		return mapper.memberList();
	}

	@Override
	public MemberDTO memberDetail(int memNo) {
		return mapper.memberInfo(memNo);
	}
	
	@Override
	public int memberRemove(int memNo) {
		return mapper.memberDelete(memNo);
	}
	
	@Override
	public int memberModify(MemberDTO dto) {
		return mapper.memberUpdate(dto);
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	/* 
	
	@Override
	public void memberRegister(MemberDTO dto) {
		mapper.memberInsert(dto);
	}
	
	
	@Override
	public void findLoginName(MemberDTO dto, HttpServletRequest request) {
		
		String userName = mapper.findLoginName(dto);
		
		HttpSession session = request.getSession();
		if(userName !=null) {
			session.setAttribute("userId", dto.getId());
			session.setAttribute("userName", userName);
		}
		
//		return mapper.findLoginName(dto);
	}
	
	*/
}
