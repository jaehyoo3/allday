package com.bluebee.modules.base;

import org.springframework.web.multipart.MultipartFile;

public class Base {
	private Integer type;
	private Integer idefaultNy;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private MultipartFile[] uploadedImage;
	private MultipartFile[] uploadedImage2;
	private Integer idelNy;
	private String pseq;
	private String tableName;
	private Integer article;
	private String memberSeq;
	private String memberEmail;
	private Integer memberMobile;
	private Integer memberPoint;
	private String addrSeq;
	private Integer defaultNy;
	private String  reciver;
	private String zipcode;
	private String addr1;
	private String addr2;
	
	/* 상품 */
	private String detailSeq;
	private String colorName;
	private String productSeq;
	private String productName;
	private Integer productPrice;
	private String sizeName;
	
	public String getSizeName() {
		return sizeName;
	}
	public void setSizeName(String sizeName) {
		this.sizeName = sizeName;
	}
	public String getDetailSeq() {
		return detailSeq;
	}
	public void setDetailSeq(String detailSeq) {
		this.detailSeq = detailSeq;
	}
	public String getColorName() {
		return colorName;
	}
	public void setColorName(String colorName) {
		this.colorName = colorName;
	}
	public String getProductSeq() {
		return productSeq;
	}
	public void setProductSeq(String productSeq) {
		this.productSeq = productSeq;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Integer getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public Integer getArticle() {
		return article;
	}
	public void setArticle(Integer article) {
		this.article = article;
	}
	public MultipartFile[] getUploadedImage2() {
		return uploadedImage2;
	}
	public void setUploadedImage2(MultipartFile[] uploadedImage2) {
		this.uploadedImage2 = uploadedImage2;
	}
	public Integer getType() {
		return type;
	}
	public void setType(Integer type) {
		this.type = type;
	}
	public Integer getIdefaultNy() {
		return idefaultNy;
	}
	public void setIdefaultNy(Integer idefaultNy) {
		this.idefaultNy = idefaultNy;
	}
	public Integer getSort() {
		return sort;
	}
	public void setSort(Integer sort) {
		this.sort = sort;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getOriginalName() {
		return originalName;
	}
	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}
	public String getUuidName() {
		return uuidName;
	}
	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	public String getExt() {
		return ext;
	}
	public void setExt(String ext) {
		this.ext = ext;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	public MultipartFile[] getUploadedImage() {
		return uploadedImage;
	}
	public void setUploadedImage(MultipartFile[] uploadedImage) {
		this.uploadedImage = uploadedImage;
	}
	public Integer getIdelNy() {
		return idelNy;
	}
	public void setIdelNy(Integer idelNy) {
		this.idelNy = idelNy;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public Integer getMemberMobile() {
		return memberMobile;
	}
	public void setMemberMobile(Integer memberMobile) {
		this.memberMobile = memberMobile;
	}
	public Integer getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(Integer memberPoint) {
		this.memberPoint = memberPoint;
	}
	public String getAddrSeq() {
		return addrSeq;
	}
	public void setAddrSeq(String addrSeq) {
		this.addrSeq = addrSeq;
	}
	public Integer getDefaultNy() {
		return defaultNy;
	}
	public void setDefaultNy(Integer defaultNy) {
		this.defaultNy = defaultNy;
	}
	public String getReciver() {
		return reciver;
	}
	public void setReciver(String reciver) {
		this.reciver = reciver;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	
}
