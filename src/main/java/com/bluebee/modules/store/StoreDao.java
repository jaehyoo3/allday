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
	public List<Store> productList(StoreVo vo){ return sqlSession.selectList(namespace + ".productList", vo); }
	public Store selectOne(StoreVo vo) { return sqlSession.selectOne(namespace+ ".selectOne", vo); }
	public int selectOneCount(StoreVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public int insert(Store dto) { return sqlSession.insert(namespace +".insert", dto); }
	public int update(Store dto) { return sqlSession.update(namespace +".update", dto); }
	public int insertUploaded(Store dto) { return sqlSession.insert("Base" + ".insertUploaded", dto); }
	public int detailinsert(Store dto) { return sqlSession.insert(namespace + ".detailinsert", dto); }	
	public List<Store> cL(StoreVo vo){ return sqlSession.selectList(namespace + ".cL", vo); }
	public List<Store> sL(StoreVo vo){ return sqlSession.selectList(namespace + ".sL", vo); }


	public List<Store> reviewList(StoreVo vo){ return sqlSession.selectList(namespace + ".reviewList", vo); }
	public List<Store> reviewList3(Store dto){ return sqlSession.selectList(namespace + ".reviewList3", dto); }
	public int reviewInsert(Store dto) { return sqlSession.insert(namespace +".reviewInsert", dto); }
	 
	public int wish(Store dto) { return sqlSession.insert(namespace +".wish", dto); }

	public List<Store> mainImg(StoreVo vo){ return sqlSession.selectList(namespace + ".mainImg", vo); }
	public List<Store> detailImg(StoreVo vo){ return sqlSession.selectList(namespace + ".detailImg", vo); }
	public List<Store> productColor(StoreVo vo){ return sqlSession.selectList(namespace + ".productColor", vo); }
	public List<Store> productSize(StoreVo vo){ return sqlSession.selectList(namespace + ".productSize", vo); }
	public int buyOrder(Store dto) { return sqlSession.insert(namespace+".buyOrder", dto); }
	public Store buyOneList(StoreVo vo) { return sqlSession.selectOne(namespace+".buyOneList", vo); }
	
	public int basketInsert(Store dto) { return sqlSession.insert(namespace+".basketInsert", dto); }
	public int orderDetail(Store dto) { return sqlSession.insert(namespace+".orderDetail", dto); }
	public Store detailList(StoreVo vo) { return sqlSession.selectOne(namespace+".detailList", vo); }
	public int basketCheck(Store dto) { return sqlSession.selectOne(namespace+".basketCheck", dto); }
	public int basketUpdt(Store dto) { return sqlSession.update(namespace +".basketUpdt", dto); }
	public int buyCheck(Store dto) { return sqlSession.selectOne(namespace+".buyCheck", dto); }
	public int wishinst(Store dto) { return sqlSession.insert(namespace+".wishinst", dto); }
	
	public List<Store> wishListCnt(Store dto) { return sqlSession.selectList(namespace+".wishListCnt", dto); }
	public int wishListCheck(Store dto) { return sqlSession.selectOne(namespace+".wishListCheck", dto); }
	public int wishListDele(Store dto) { return sqlSession.delete(namespace+".wishListDele", dto); }
	
	public List<Store> wishList(StoreVo vo) { return sqlSession.selectList(namespace+".wishList", vo); }
	public List<Store> totalBuy(StoreVo vo) { return sqlSession.selectList(namespace+".totalBuy", vo); }
	
}
