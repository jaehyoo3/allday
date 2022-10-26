package com.bluebee.modules.store;

import java.util.List;

public interface StoreService {
	public List<Store> selectList(StoreVo vo) throws Exception;
	public Store selectOne(StoreVo vo) throws Exception;
	public int selectOneCount(StoreVo vo) throws Exception;

	public int insert(Store dto) throws Exception;
	public int update(Store dto) throws Exception;
	public List<Store> cL(StoreVo vo) throws Exception;
	public List<Store> sL(StoreVo vo) throws Exception;
	
	public List<Store> reviewList(StoreVo vo) throws Exception; 
	public int reviewInsert(Store dto) throws Exception;
	 
	
	public List<Store> productColor(StoreVo vo) throws Exception;
	public List<Store> productSize(StoreVo vo) throws Exception;
	public List<Store> mainImg(StoreVo vo) throws Exception;
	public List<Store> detailImg(StoreVo vo) throws Exception;
	public int buyOrder(Store dto) throws Exception;
	public Store buyOneList(StoreVo vo) throws Exception;
	
	public int basketInsert(Store dto) throws Exception;
	public Store detailList(StoreVo vo) throws Exception;
	public int basketCheck(Store dto) throws Exception;
	public int basketUpdt(Store dto) throws Exception;
	
	public int buyCheck(Store dto) throws Exception;
	
}
