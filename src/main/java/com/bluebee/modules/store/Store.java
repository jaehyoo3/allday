package com.bluebee.modules.store;

public class Store {
	private String productSeq;
	private String productName;
	private Integer productType;
	private Integer productPrice;
	private Integer productBest;
	private Integer productNew;
	
	public Integer getProductBest() {
		return productBest;
	}
	public void setProductBest(Integer productBest) {
		this.productBest = productBest;
	}
	public Integer getProductNew() {
		return productNew;
	}
	public void setProductNew(Integer productNew) {
		this.productNew = productNew;
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
	public Integer getProductType() {
		return productType;
	}
	public void setProductType(Integer productType) {
		this.productType = productType;
	}
	public Integer getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}

}
