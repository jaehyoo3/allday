package com.bluebee.modules.xdmincg;

import java.util.List;


public interface XdminCGService {
	public List<XdminCG> selectList(XdminCGVo vo) throws Exception;
	public int insert(XdminCG dto) throws Exception;
	public int update(XdminCG dto) throws Exception;
	public XdminCG selectOne(XdminCGVo vo) throws Exception;
	public int selectOneCount(XdminCGVo vo) throws Exception; 
}

