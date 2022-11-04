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
	public int selectOnePwCheck(Member dto) { return sqlSession.selectOne(namespace+".selectOnePwCheck", dto); }
	public int selectOneNickCheck(Member dto) { return sqlSession.selectOne(namespace+".selectOneNickCheck", dto); }
	public int update(Member dto) { return sqlSession.update(namespace+".update", dto); }
	public int uelete(Member dto) { return sqlSession.update(namespace+".uelete", dto); }
	public int delete(MemberVo vo) { return sqlSession.delete(namespace+".delete", vo); }
	public int memberaddr(Member dto) { return sqlSession.insert(namespace+".memberaddr", dto); }
	
	//login
	public Member selectOneId(Member dto) { return sqlSession.selectOne(namespace+".selectOneId", dto); }
	public Member selectOneLogin(Member dto) { return sqlSession.selectOne(namespace+".selectOneLogin", dto); }
	
	public int insertUploaded(Member dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	
	public List<Member> orderList(MemberVo vo){ return sqlSession.selectList(namespace + ".orderList", vo); }
	public List<Member> basketList(MemberVo vo) { return sqlSession.selectList(namespace+".basketList", vo); }
	
	public int kakaoInst(Member dto) { return sqlSession.insert(namespace + ".kakaoInst", dto); }
	public Member snsLoginCheck(Member dto) { return sqlSession.selectOne(namespace + ".snsLoginCheck", dto);}
}
