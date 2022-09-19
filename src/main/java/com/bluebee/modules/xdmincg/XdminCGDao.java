package com.bluebee.modules.xdmincg;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class XdminCGDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bluebee.modules.xdmincg.XdminCGMapper";

	public List<XdminCG> selectList() { return sqlSession.selectList(namespace + ".selectList", ""); }
	public int insert(XdminCG dto) { return sqlSession.insert(namespace+".insert", dto); }
	public int update(XdminCG dto) { return sqlSession.update(namespace+".update", dto); }
}
