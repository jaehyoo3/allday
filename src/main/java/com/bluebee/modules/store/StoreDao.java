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
	public Store selectOne(StoreVo vo) { return sqlSession.selectOne(namespace+ ".selectOne", vo); }
	public int selectOneCount(StoreVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public int insert(Store dto) { return sqlSession.insert(namespace +".insert", dto); }
	public int update(Store dto) { return sqlSession.update(namespace +".update", dto); }
	public int insertUploaded(Store dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	public int detailinsert(Store dto) { return sqlSession.insert(namespace + ".detailinsert", dto); }	
	public List<Store> cL(StoreVo vo){ return sqlSession.selectList(namespace + ".cL", vo); }
	public List<Store> sL(StoreVo vo){ return sqlSession.selectList(namespace + ".sL", vo); }


	  public List<Store> reviewList(StoreVo vo){ return sqlSession.selectList(namespace + ".reviewList", vo); }
	  public int reviewInsert(Store dto) { return sqlSession.insert(namespace +".reviewInsert", dto); }
	 
	public int wish(Store dto) { return sqlSession.insert(namespace +".wish", dto); }

	public List<Store> mainImg(StoreVo vo){ return sqlSession.selectList(namespace + ".mainImg", vo); }
	public List<Store> detailImg(StoreVo vo){ return sqlSession.selectList(namespace + ".detailImg", vo); }
	public List<Store> productColor(StoreVo vo){ return sqlSession.selectList(namespace + ".productColor", vo); }
	public List<Store> productSize(StoreVo vo){ return sqlSession.selectList(namespace + ".productSize", vo); }
	public int buyOrder(Store dto) { return sqlSession.insert(namespace+".buyOrder", dto); }
	public Store buyOneList(StoreVo vo) { return sqlSession.selectOne(namespace+".buyOneList", vo); }
	
}
