package com.bluebee.modules.xdmincg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class XdminCGServiceImpl implements XdminCGService {
	@Autowired
	XdminCGDao dao;

	@Override
	public List<XdminCG> selectList(XdminCGVo vo) throws Exception { return dao.selectList(vo); }

	@Override
	public int insert(XdminCG dto) throws Exception { return dao.insert(dto); }

	@Override
	public int update(XdminCG dto) throws Exception { return dao.update(dto); }

	@Override
	public XdminCG selectOne(XdminCGVo vo) throws Exception { return dao.selectOne(vo);	}

	@Override
	public int selectOneCount(XdminCGVo vo) throws Exception { return dao.selectOneCount(vo); }
	
}
