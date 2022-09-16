package com.bluebee.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

	@Override
	public int update(Code dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.update(dto);
	}

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public int insert(Code dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public List<Code> ccgviewr() throws Exception {
		// TODO Auto-generated method stub
		return dao.ccgviewr();
	}

	@Override
	public Code selectOne(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}


	
}