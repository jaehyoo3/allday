package com.bluebee.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService {

	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception {
		return dao.selectList(vo);
	}

	@Override
	public int insert(CodeGroup dto) throws Exception {
		return dao.insert(dto);
	}

	@Override
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int update(CodeGroup dto) throws Exception {
		return dao.update(dto);
	}

	@Override
	public int uelete(CodeGroup dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.uelete(dto);
	}

	@Override
	public int delete(CodeGroupVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.delete(vo);
	}

	@Override
	public int selectOneCount(CodeGroupVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneCount(vo);
	}

}