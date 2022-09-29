package com.bluebee.modules.store;

import java.util.List;

public interface StoreService {
	public List<Store> selectList(StoreVo vo) throws Exception;
	public Store selectOne(StoreVo vo) throws Exception;
	public int selectOneCount(StoreVo vo) throws Exception;
}
