package com.bluebee.modules.xdmincode;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class XdminCodeDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bluebee.modules.xdmincode.XdminCodeMapper";
	
	public List<XdminCode> selectList(XdminCodeVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public int insert(XdminCode dto) {
		int result = sqlSession.insert(namespace+".insert", dto);
		return result;
	}
	
	public List<XdminCode> codegroupViewer() {return sqlSession.selectList(namespace + ".codegroupViewer");}
	public XdminCode selectOne(XdminCodeVo vo) { return sqlSession.selectOne(namespace+ ".selectOne",vo); }
	public int update(XdminCode dto) { return sqlSession.update(namespace+".update", dto); }
	public int selectOneCount(XdminCodeVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<XdminCode> selectListCachedCodeArrayList(){ return sqlSession.selectList(namespace + ".selectListCachedCodeArrayList", null); }
	public int uelete(XdminCode dto) { return sqlSession.update(namespace+".uelete", dto); }
	public int delete(XdminCodeVo vo) { return sqlSession.delete(namespace+".delete", vo); }

}