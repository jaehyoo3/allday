package com.bluebee.modules.store;

import com.bluebee.modules.base.BaseVo;

public class StoreVo extends BaseVo{
	private String productSeq;
	private String productType;
	private String productName;
	private String colorName;
	private String sel_size;
	public String getSel_size() {
		return sel_size;
	}

	public void setSel_size(String sel_size) {
		this.sel_size = sel_size;
	}

	private Integer productPrice;
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

	public Integer getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(Integer productPrice) {
		this.productPrice = productPrice;
	}

	
	
}
