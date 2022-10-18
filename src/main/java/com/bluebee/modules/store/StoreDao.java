package com.bluebee.modules.store;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDao {
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bluebee.modules.store.StoreMapper";
	
	public List<Store> selectList(StoreVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	public List<Store> selectDetailImg(StoreVo vo){ return sqlSession.selectList(namespace + ".selectDetailImg", vo); }
	public Store selectOne(StoreVo vo) { return sqlSession.selectOne(namespace+ ".selectOne", vo); }
	public int selectOneCount(StoreVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Store> colorList(StoreVo vo){ return sqlSession.selectList(namespace + ".colorList", vo); }
	public List<Store> sizeList(StoreVo vo){ return sqlSession.selectList(namespace + ".sizeList", vo); }
	public int insert(Store dto) { return sqlSession.insert(namespace +".insert", dto); }
	public int update(Store dto) { return sqlSession.update(namespace +".update", dto); }
	public int insertUploaded(Store dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	public int detailinsert(Store dto) { return sqlSession.insert(namespace + ".detailinsert", dto); }	
	public List<Store> cL(StoreVo vo){ return sqlSession.selectList(namespace + ".cL", vo); }
	public List<Store> sL(StoreVo vo){ return sqlSession.selectList(namespace + ".sL", vo); }
	public List<Store> reviewList(StoreVo vo){ return sqlSession.selectList(namespace + ".reviewList", vo); }
	public int reviewInsert(Store dto) { return sqlSession.insert(namespace +".reviewInsert", dto); }
	public int wish(Store dto) { return sqlSession.insert(namespace +".wish", dto); }

}
