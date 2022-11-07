package com.bluebee.modules.store;

import java.util.Calendar;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

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
	public int insert(Store dto) throws Exception { 
		try {
    		dao.insert(dto);	
			for(int i = 0 ; i < dto.getNumarr().length ; i++) {
				if(!dto.getNumarr()[i].equals(null)) {	 
					dto.setColor_colorseq(dto.getColor_colorseqarr()[i]);
					dto.setNum(dto.getNumarr()[i]);
					dto.setSize_size(dto.getSize_sizearr()[i]);
					dao.detailinsert(dto);
				}
			}
			
    		int j = 0;
	    	for(MultipartFile multipartFile : dto.getUploadedImage() ) {
	    		if(!multipartFile.isEmpty()) {
	    		
	    			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");	
	    			Integer type = Integer.valueOf(dto.getProductSeq());
	    			UtilUpload.upload(multipartFile, pathModule, dto, type);
	    			
		    		dto.setTableName("productUploaded");
		    		dto.setType(dto.getProductType());
		    		dto.setIdefaultNy(j == 0 ? 1 : 0);
		    		dto.setSort(j + 1);
		    		dto.setPseq(dto.getProductSeq());
		    		dto.setArticle(0);
		    		
					dao.insertUploaded(dto);
					j++;
	    		}
			}
    		j = 0;
	    	for(MultipartFile multipartFile : dto.getUploadedImage2() ) {
	    		if(!multipartFile.isEmpty()) {
	    		
	    			String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");	
	    			Integer type = Integer.valueOf(dto.getProductSeq());
	    			UtilUpload.upload(multipartFile, pathModule, dto, type);
	    			
		    		dto.setTableName("productDetailUploaded");
		    		dto.setType(dto.getProductType());
		    		dto.setIdefaultNy(j == 0 ? 1 : 0);
		    		dto.setSort(j + 1);
		    		dto.setPseq(dto.getProductSeq());
		    		dto.setArticle(1);
	
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

	@Override
	public List<Store> cL(StoreVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.cL(vo);
	}

	@Override
	public List<Store> sL(StoreVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.sL(vo);
	}


	
	  @Override public int reviewInsert(Store dto) throws Exception { return dao.reviewInsert(dto); }
	  
	  @Override public List<Store> reviewList(StoreVo vo) throws Exception { return dao.reviewList(vo); }
	 

	@Override
	public List<Store> productColor(StoreVo vo) throws Exception { return dao.productColor(vo);}
	@Override
	public List<Store> productSize(StoreVo vo) throws Exception { return dao.productSize(vo); }
	@Override
	public List<Store> mainImg(StoreVo vo) throws Exception { return dao.mainImg(vo); }
	@Override
	public List<Store> detailImg(StoreVo vo) throws Exception { return dao.detailImg(vo); }
	@Override
	public int buyOrder(Store dto) throws Exception {
		 Calendar cal = Calendar.getInstance();
		 int year = cal.get(Calendar.YEAR);
		 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		 String subNum = "";
		 
		 for(int i = 1; i <= 6; i ++) {
		  subNum += (int)(Math.random() * 10);
		 }
		 
		 String orderId = ymd + "_" + subNum;
		 dto.setOrderNum(orderId);
		
		return dao.buyOrder(dto); 
		}

	@Override
	public Store buyOneList(StoreVo vo) throws Exception {
		return dao.buyOneList(vo);
	}

	@Override
	public Store detailList(StoreVo vo) throws Exception {
		return dao.detailList(vo);
	}

	@Override
	public int basketInsert(Store dto) throws Exception {
		return dao.basketInsert(dto);
	}

	@Override
	public int basketCheck(Store dto) throws Exception {
		return dao.basketCheck(dto);
	}

	@Override
	public int basketUpdt(Store dto) throws Exception {
		return dao.basketUpdt(dto);
	}

	@Override
	public int buyCheck(Store dto) throws Exception {
		return dao.buyCheck(dto);
	}

	@Override
	public int wishinst(Store dto) throws Exception {
		return dao.wishinst(dto);
	}

	@Override
	public int wishListCount(Store dto) throws Exception {
		return dao.wishListCount(dto);
	}

	@Override
	public int wishListCheck(Store dto) throws Exception {
		return dao.wishListCheck(dto);
	}

	@Override
	public int wishListDele(Store dto) throws Exception {
		return dao.wishListDele(dto);
	}

	@Override
	public List<Store> productList(StoreVo vo) throws Exception {
		return dao.productList(vo);
	}

	@Override
	public List<Store> wishList(StoreVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.wishList(vo);
	}

	@Override
	public List<Store> totalBuy(StoreVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.totalBuy(vo);
	}

	@Override
	public int orderDetail(Store dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.orderDetail(dto);
	}
	
	
}
