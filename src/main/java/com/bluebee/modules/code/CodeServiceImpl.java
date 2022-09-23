package com.bluebee.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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

	@Override
	public int selectOneCount(CodeVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}
	
//	@PostConstruct
//	public void selectListCachedCodeArrayList() throws Exception {
//		List<Code> codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
////		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
//		Code.cachedCodeArrayList.clear(); 
//		Code.cachedCodeArrayList.addAll(codeListFromDb);
//		System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size() + " chached !");
//	}
//	
//	public static List<Code> selectListCachedCode(String ccgSeq) throws Exception {
//		List<Code> rt = new ArrayList<Code>();
//		for(Code codeRow : Code.cachedCodeArrayList) {
//			if (codeRow.getCcgseq().equals(ccgSeq)) {
//				rt.add(codeRow);
//			} else {
//				// by pass
//			}
//		}
//		return rt;
//	}
//	
//	public static String selectOneCachedCode(int code) throws Exception {
//		String rt = "";
//		for(Code codeRow : Code.cachedCodeArrayList) {
//			if (codeRow.getCcgseq().equals(Integer.toString(code))) {
//				rt = codeRow.getCname();
//				System.out.println("selectOneCachedCode");
//			} else {
//				// by pass
//			}
//		}
//		return rt;
//	}
//	
//	
//	public static void clear() throws Exception {
//		Code.cachedCodeArrayList.clear();
//	}
	
}