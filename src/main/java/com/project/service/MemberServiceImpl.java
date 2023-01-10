package com.project.service;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.project.domain.MemberDTO;
import com.project.mapper.MemberMapper;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberMapper mapper;
//	@Autowired
//	private MemberDAO dao;


	@Override
	public void memberRegister(MemberDTO dto) {
		mapper.memberInsert(dto);		
	}



	@Override
	public MemberDTO loginCheck(MemberDTO dto) {
	
		
		return mapper.memberLogin(dto);
	}



	@Override
	public MemberDTO emailFind(MemberDTO dto) throws Exception {
		// TODO Auto-generated method stub
		return mapper.emailFind(dto);
	}







	
}
