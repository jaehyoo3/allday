package com.bluebee.modules.store;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bluebee.modules.member.Member;
import com.bluebee.modules.util.UtilUpload;

@Service
public class StoreServiceImpl implements StoreService {

	@Autowired
	StoreDao dao;

	@Override
	public List<Store> selectList(StoreVo vo) throws Exception {
		return dao.selectList(vo);
	}
	
	@Override
	public Store selectOne(StoreVo vo) throws Exception {
		return dao.selectOne(vo);
	}

	@Override
	public int selectOneCount(StoreVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Override
	public List<Store> colorList(StoreVo vo) throws Exception {
		return dao.colorList(vo);
	}

	@Override
	public List<Store> sizeList(StoreVo vo) throws Exception {
		return dao.sizeList(vo);
	}

	@Override
	public int insert(Store dto) throws Exception { 
		try {
    		dao.insert(dto);
        int j = 0;
	    	for(MultipartFile multipartFile : dto.getUploadedImage() ) {
	    		if(!multipartFile.isEmpty()) {
	    		
	    			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");	
	    			Integer type = dto.getProductType();
	    			UtilUpload.upload(multipartFile, pathModule, dto, type);
	    			
		    		dto.setTableName("productUploaded");
		    		dto.setType(dto.getProductType());
		    		dto.setIdefaultNy(j == 0 ? 1 : 0);
		    		dto.setSort(j + 1);
		    		dto.setPseq(dto.getProductSeq());
	
					dao.insertUploaded(dto);
					j++;
	    		}
			}
	 		return 1;
	    } catch (Exception e) {
	        throw new Exception();
	  }
}

	@Override
	public int update(Store dto) throws Exception {
		return dao.update(dto);
	}
}
