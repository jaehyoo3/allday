package com.bluebee.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bluebee.modules.util.UtilSecurity;
import com.bluebee.modules.util.UtilUpload;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Override
	public int selectOneCount(MemberVo vo) throws Exception {
		return dao.selectOneCount(vo);
	}

	@Autowired
	MemberDao dao;
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {return dao.selectList(vo); }

	@Override
	public int insert(Member dto) throws Exception { 
		try {
    		dao.insert(dto);
        int j = 0;
	    	for(MultipartFile multipartFile : dto.getUploadedImage() ) {
	    		if(!multipartFile.isEmpty()) {
	    		
	    			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");		
	    			UtilUpload.upload(multipartFile, pathModule, dto, 0);
	    			
		    		dto.setTableName("productUploaded");
		    		dto.setType(1);
		    		dto.setIdefaultNy(j == 0 ? 1 : 0);
		    		dto.setSort(j + 1);
		    		dto.setPseq(dto.getMemberSeq());
	
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
	public Member selectOne(MemberVo vo) throws Exception { return dao.selectOne(vo); }

	@Override
	public int signup(Member dto) throws Exception { 
		 try {
			 dto.setMemberPW(UtilSecurity.encryptSha256(dto.getMemberPW())); 
		 	dao.signup(dto);
		 	dao.memberaddr(dto);
	 	return 1;
		    } catch (Exception e) {
		        throw new Exception();
		    }
	}
	@Override
	public int selectOneIdCheck(Member dto) throws Exception {return dao.selectOneIdCheck(dto); }

	@Override
	public int uelete(Member dto) throws Exception {
		return dao.uelete(dto);
	}

	@Override
	public int delete(MemberVo vo) throws Exception {

		return dao.delete(vo);
	}

	@Override
	public int update(Member dto) throws Exception {

		return dao.update(dto);
	}

	@Override
	public Member selectOneId(Member dto) throws Exception {
		return dao.selectOneId(dto);
	}

	@Override
	public Member selectOneLogin(Member dto) throws Exception {
		return dao.selectOneLogin(dto);
	}

	@Override
	public int selectOneNickCheck(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneNickCheck(dto);
	}

	@Override
	public int selectOnePwCheck(Member dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOnePwCheck(dto);
	}

	@Override
	public List<Member> orderList(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.orderList(vo);
	}



}