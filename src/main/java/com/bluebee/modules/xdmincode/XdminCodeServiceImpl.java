package com.bluebee.modules.xdmincode;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class XdminCodeServiceImpl implements XdminCodeService {
	@Autowired
	XdminCodeDao dao;
	
	@Override
	public int update(XdminCode dto) throws Exception { return dao.update(dto); }
	@Override
	public List<XdminCode> selectList(XdminCodeVo vo) throws Exception { return dao.selectList(vo); }
	@Override
	public int insert(XdminCode dto) throws Exception { return dao.insert(dto); }
	@Override
	public List<XdminCode> codegroupViewer() throws Exception { return dao.codegroupViewer(); }
	@Override
	public XdminCode selectOne(XdminCodeVo vo) throws Exception { return dao.selectOne(vo); }
	@Override
	public int selectOneCount(XdminCodeVo vo) throws Exception { return dao.selectOneCount(vo); }
	

	@Override
	public int uelete(XdminCode dto) throws Exception { return dao.uelete(dto); }
	@Override
	public int delete(XdminCodeVo vo) throws Exception { return dao.delete(vo); }
	
	@PostConstruct
	public void selectListCachedCodeArrayList() throws Exception {
		List<XdminCode> codeListFromDb = (ArrayList<XdminCode>) dao.selectListCachedCodeArrayList();
//		codeListFromDb = (ArrayList<Code>) dao.selectListCachedCodeArrayList();
		XdminCode.cachedCodeArrayList.clear(); 
		XdminCode.cachedCodeArrayList.addAll(codeListFromDb);
		System.out.println("cachedCodeArrayList: " + XdminCode.cachedCodeArrayList.size() + " chached !");
	}
	
	public static List<XdminCode> selectListCachedCode(String cGroupSeq) throws Exception {
		List<XdminCode> rt = new ArrayList<XdminCode>();
		for(XdminCode codeRow : XdminCode.cachedCodeArrayList) {
			if (codeRow.getcGroupSeq().equals(cGroupSeq)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	public static String selectOneCachedCode(int code) throws Exception {
		String rt = "";
		for(XdminCode codeRow : XdminCode.cachedCodeArrayList) {
			if (codeRow.getCodeGroupSeq().equals(Integer.toString(code))) {
				rt = codeRow.getCodeName();
				System.out.println("selectOneCachedCode");
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	
	public static void clear() throws Exception {
		XdminCode.cachedCodeArrayList.clear();
	}
}