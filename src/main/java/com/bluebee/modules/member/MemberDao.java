package com.bluebee.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bluebee.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public int insert(Member dto) { return sqlSession.insert(namespace+".insert", dto); }
	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace+ ".selectOne",vo); }
	public int signup(Member dto) { return sqlSession.insert(namespace+".signup", dto); }
	public int selectOneCount(MemberVo vo) { return sqlSession.selectOne(namespace+".selectOneCount", vo); }
	public int selectOneIdCheck(Member dto) { return sqlSession.selectOne(namespace+".selectOneIdCheck", dto); }
	public int update(Member dto) { return sqlSession.update(namespace+".update", dto); }
	public int uelete(Member dto) { return sqlSession.update(namespace+".uelete", dto); }
	public int delete(MemberVo vo) { return sqlSession.delete(namespace+".delete", vo); }
	public int memberaddr(Member dto) { return sqlSession.insert(namespace+".memberaddr", dto); }
	
	//login
	public Member selectOneId(Member dto) { return sqlSession.selectOne(namespace+".selectOneId", dto); }
	public Member selectOneLogin(Member dto) { return sqlSession.selectOne(namespace+".selectOneLogin", dto); }

}
