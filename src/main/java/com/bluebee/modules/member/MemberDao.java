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
	public int selectOneIdCheck(Member dto) { return sqlSession.selectOne(namespace+".selectOneIdCheck", dto); }

}
