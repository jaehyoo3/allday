package com.bluebee.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {return dao.selectList(vo); }

	@Override
	public int insert(Member dto) throws Exception { return dao.insert(dto);}

	@Override
	public Member selectOne(MemberVo vo) throws Exception { return dao.selectOne(vo); }

	@Override
	public int signup(Member dto) throws Exception { return dao.signup(dto); }

	@Override
	public int selectOneIdCheck(Member dto) throws Exception {return dao.selectOneIdCheck(dto); }

	@Override
	public int uelete(Member dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(MemberVo vo) throws Exception {

		return dao.delete(vo);
	}

	@Override
	public int update(Member dto) throws Exception {

		return dao.update(dto);
	}
	
	

}