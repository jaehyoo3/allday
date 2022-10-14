package com.bluebee.modules.store;

import java.util.List;

public interface StoreService {
	public List<Store> selectList(StoreVo vo) throws Exception;
	public List<Store> selectDetailImg(StoreVo vo) throws Exception;
	public Store selectOne(StoreVo vo) throws Exception;
	public int selectOneCount(StoreVo vo) throws Exception;
	public List<Store> colorList(StoreVo vo) throws Exception;
	public List<Store> sizeList(StoreVo vo) throws Exception;
	public int insert(Store dto) throws Exception;
	public int update(Store dto) throws Exception;
	public List<Store> cL(StoreVo vo) throws Exception;
	public List<Store> sL(StoreVo vo) throws Exception;
}
