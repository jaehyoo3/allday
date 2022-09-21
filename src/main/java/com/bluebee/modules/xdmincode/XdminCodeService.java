package com.bluebee.modules.xdmincode;

import java.util.List;

public interface XdminCodeService {
	public List<XdminCode> selectList(XdminCodeVo vo) throws Exception;
	public int insert(XdminCode dto) throws Exception;
	public List<XdminCode> codegroupViewer() throws Exception;
	public XdminCode selectOne(XdminCodeVo vo) throws Exception;
	public int update(XdminCode dto) throws Exception;
	public int selectOneCount(XdminCodeVo vo) throws Exception;
}