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
}
