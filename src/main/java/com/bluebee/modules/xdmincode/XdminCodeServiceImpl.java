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
	
	/*
	 * @PostConstruct public void selectListCachedCodeArrayList() throws Exception {
	 * List<Code> codeListFromDb = (ArrayList<Code>)
	 * dao.selectListCachedCodeArrayList(); // codeListFromDb = (ArrayList<Code>)
	 * dao.selectListCachedCodeArrayList(); Code.cachedCodeArrayList.clear();
	 * Code.cachedCodeArrayList.addAll(codeListFromDb);
	 * System.out.println("cachedCodeArrayList: " + Code.cachedCodeArrayList.size()
	 * + " chached !"); }
	 * 
	 * public static List<Code> selectListCachedCode(String ccgSeq) throws Exception
	 * { List<Code> rt = new ArrayList<Code>(); for(Code codeRow :
	 * Code.cachedCodeArrayList) { if (codeRow.getCcgseq().equals(ccgSeq)) {
	 * rt.add(codeRow); } else { // by pass } } return rt; }
	 * 
	 * public static String selectOneCachedCode(int code) throws Exception { String
	 * rt = ""; for(Code codeRow : Code.cachedCodeArrayList) { if
	 * (codeRow.getCcgseq().equals(Integer.toString(code))) { rt =
	 * codeRow.getCname(); System.out.println("selectOneCachedCode"); } else { // by
	 * pass } } return rt; }
	 * 
	 * 
	 * public static void clear() throws Exception {
	 * Code.cachedCodeArrayList.clear(); }
	 */
	
}