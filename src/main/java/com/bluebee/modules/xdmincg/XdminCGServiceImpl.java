package com.bluebee.modules.xdmincg;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class XdminCGServiceImpl implements XdminCGService {
	@Autowired
	XdminCGDao dao;

	@Override
	public List<XdminCG> selectList() throws Exception { return dao.selectList(); }
	
	
}
