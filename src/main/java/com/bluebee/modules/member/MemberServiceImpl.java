package com.bluebee.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bluebee.modules.util.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {return dao.selectList(vo); }

	@Override
	public int insert(Member dto) throws Exception { 
		return dao.insert(dto);
	}

	@Override
	public Member selectOne(MemberVo vo) throws Exception { return dao.selectOne(vo); }

	@Override
	public int signup(Member dto) throws Exception { 
		 try {
			 dto.setMemberPW(UtilSecurity.encryptSha256(dto.getMemberPW())); 
		 	dao.signup(dto);
		 	dao.memberaddr(dto);
	 	return 1;
		    } catch (Exception e) {
		        throw new Exception();
		    }
	}
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

	@Override
	public Member selectOneId(Member dto) throws Exception {
		return dao.selectOneId(dto);
	}

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}
	
	

}