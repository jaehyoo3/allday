package com.bluebee.modules.store;

import com.bluebee.modules.base.BaseVo;

public class StoreVo extends BaseVo{
	private String productSeq;
	private String productType;
	private String productName;
	private String colorName;
	private String Size;
	private Integer orderPrice;
	private String path;
	private String uuidName;
	private String memberSeq;
	private Integer wishListCount;
	private String product_Seq;
	private Integer orderNum;
	
	public Integer getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
	}
	public String getProduct_Seq() {
		return product_Seq;
	}
	public void setProduct_Seq(String product_Seq) {
		this.product_Seq = product_Seq;
	}
	public Integer getWishListCount() {
		return wishListCount;
	}
	public void setWishListCount(Integer wishListCount) {
		this.wishListCount = wishListCount;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getSize() {
		return Size;
	}
	public void setSize(String size) {
		Size = size;
	}
	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}

	public String getUuidName() {
		return uuidName;
	}

	public void setUuidName(String uuidName) {
		this.uuidName = uuidName;
	}
	private String detailSeq;

	public String getDetailSeq() {
		return detailSeq;
	}

	public void setDetailSeq(String detailSeq) {
		this.detailSeq = detailSeq;
	}

	public String getProductSeq() {
		return productSeq;
	}

	public void setProductSeq(String productSeq) {
		this.productSeq = productSeq;
	}

	public String getProductType() {
		return productType;
	}

	public void setProductType(String productType) {
		this.productType = productType;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getColorName() {
		return colorName;
	}

	public void setColorName(String colorName) {
		this.colorName = colorName;
	}

	public Integer getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(Integer orderPrice) {
		this.orderPrice = orderPrice;
	}

	
	
}
