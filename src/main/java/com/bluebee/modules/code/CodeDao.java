package com.bluebee.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bluebee.modules.code.CodeMapper";
	
	public List<Code> selectList(CodeVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public int insert(Code dto) {
		int result = sqlSession.insert(namespace+".insert", dto);
		return result;
	}
	
	public List<Code> ccgviewr() {return sqlSession.selectList(namespace + ".ccgviewr");}

	public Code selectOne(CodeVo vo) {
		return sqlSession.selectOne(namespace+ ".selectOne",vo);
	}

}