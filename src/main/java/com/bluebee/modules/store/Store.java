package com.bluebee.modules.store;
import java.util.Date;

import com.bluebee.modules.base.Base;

public class Store extends Base {
	private String productSeq;
	private String productName;
	private Integer productType;
	private Integer productPrice;
	private Integer productBest;
	private Integer productNew;
	private String productRegDate;
	private String productModDate;
	private Integer[] color_colorseqarr;
	private Integer[] size_sizearr;
	private Integer numarr[];
	private Integer color_colorseq;
	private Integer size_size;
	private Integer num;
	private String detailSeq;
	private String colorName;
	private Integer colorSeq;
	private String sizeName;
	private String informationType;
	private String informationColor;
	private String informationSize;
	private String informationCompany;
	private String informationCountry;
	private String informationWarning;
	private String product_Seq;
	private String reViewSeq;
	private String member_memberSeq;
	private Integer Score;
	private String Content;
	private Integer reviewDelNy;
	private Date reviewRegDate;
	private Integer wishListDelNy;
	private String wishSeq;
	private String productOrderSeq;
	private String productDetail_detailSeq;
	private String purChase;
	private Integer price;
	private String memberAddr_addrSeq;
	private String productOrder_productOrderSeq;
	
	public String getProductOrderSeq() {
		return productOrderSeq;
	}
	public void setProductOrderSeq(String productOrderSeq) {
		this.productOrderSeq = productOrderSeq;
	}
	public String getProductDetail_detailSeq() {
		return productDetail_detailSeq;
	}
	public void setProductDetail_detailSeq(String productDetail_detailSeq) {
		this.productDetail_detailSeq = productDetail_detailSeq;
	}
	public String getPurChase() {
		return purChase;
	}
	public void setPurChase(String purChase) {
		this.purChase = purChase;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public String getMemberAddr_addrSeq() {
		return memberAddr_addrSeq;
	}
	public void setMemberAddr_addrSeq(String memberAddr_addrSeq) {
		this.memberAddr_addrSeq = memberAddr_addrSeq;
	}
	public String getProductOrder_productOrderSeq() {
		return productOrder_productOrderSeq;
	}
	public void setProductOrder_productOrderSeq(String productOrder_productOrderSeq) {
		this.productOrder_productOrderSeq = productOrder_productOrderSeq;
	}
	public String getWishSeq() {
		return wishSeq;
	}
	public void setWishSeq(String wishSeq) {
		this.wishSeq = wishSeq;
	}
	public Integer getWishListDelNy() {
		return wishListDelNy;
	}
	public void setWishListDelNy(Integer wishListDelNy) {
		this.wishListDelNy = wishListDelNy;
	}
	public void setReViewSeq(String reViewSeq) {
		this.reViewSeq = reViewSeq;
	}
	public String getReViewSeq() {
		return reViewSeq;
	}
	public String getMember_memberSeq() {
		return member_memberSeq;
	}
	public void setMember_memberSeq(String member_memberSeq) {
		this.member_memberSeq = member_memberSeq;
	}
	public Integer getScore() {
		return Score;
	}
	public void setScore(Integer score) {
		Score = score;
	}
	public String getContent() {
		return Content;
	}
	public void setContent(String content) {
		Content = content;
	}
	public Integer getReviewDelNy() {
		return reviewDelNy;
	}
	public void setReviewDelNy(Integer reviewDelNy) {
		this.reviewDelNy = reviewDelNy;
	}
	public Date getReviewRegDate() {
		return reviewRegDate;
	}
	public void setReviewRegDate(Date reviewRegDate) {
		this.reviewRegDate = reviewRegDate;
	}
	public String getProduct_Seq() {
		return product_Seq;
	}
	public void setProduct_Seq(String product_Seq) {
		this.product_Seq = product_Seq;
	}
	public String getInformationWarning() {
		return informationWarning;
	}
	public void setInformationWarning(String informationWarning) {
		this.informationWarning = informationWarning;
	}
	private String informationQuality;
	private String informationAS;
	private Integer productDelNy;
	
	public String getInformationAS() {
		return informationAS;
	}
	public void setInformationAS(String informationAS) {
		this.informationAS = informationAS;
	}
	public String getInformationType() {
		return informationType;
	}
	public void setInformationType(String informationType) {
		this.informationType = informationType;
	}
	public String getInformationColor() {
		return informationColor;
	}
	public void setInformationColor(String informationColor) {
		this.informationColor = informationColor;
	}
	public String getInformationSize() {
		return informationSize;
	}
	public void setInformationSize(String informationSize) {
		this.informationSize = informationSize;
	}
	public String getInformationCompany() {
		return informationCompany;
	}
	public void setInformationCompany(String informationCompany) {
		this.informationCompany = informationCompany;
	}
	public String getInformationCountry() {
		return informationCountry;
	}
	public void setInformationCountry(String informationCountry) {
		this.informationCountry = informationCountry;
	}

	public String getInformationQuality() {
		return informationQuality;
	}
	public void setInformationQuality(String informationQuality) {
		this.informationQuality = informationQuality;
	}
	public Integer getProductDelNy() {
		return productDelNy;
	}
	public void setProductDelNy(Integer productDelNy) {
		this.productDelNy = productDelNy;
	}
	public String getSizeName() {
		return sizeName;
	}
	public void setSizeName(String sizeName) {
		this.sizeName = sizeName;
	}
	public String getColorName() {
		return colorName;
	}
	public void setColorName(String colorName) {
		this.colorName = colorName;
	}
	public Integer getColorSeq() {
		return colorSeq;
	}
	public void setColorSeq(Integer colorSeq) {
		this.colorSeq = colorSeq;
	}
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
	public String getProductRegDate() {
		return productRegDate;
	}
	public void setProductRegDate(String productRegDate) {
		this.productRegDate = productRegDate;
	}
	public String getProductModDate() {
		return productModDate;
	}
	public void setProductModDate(String productModDate) {
		this.productModDate = productModDate;
	}
	public String getDetailSeq() {
		return detailSeq;
	}
	public void setDetailSeq(String detailSeq) {
		this.detailSeq = detailSeq;
	}
	public Integer[] getColor_colorseqarr() {
		return color_colorseqarr;
	}
	public void setColor_colorseqarr(Integer[] color_colorseqarr) {
		this.color_colorseqarr = color_colorseqarr;
	}
	public Integer[] getSize_sizearr() {
		return size_sizearr;
	}
	public void setSize_sizearr(Integer[] size_sizearr) {
		this.size_sizearr = size_sizearr;
	}

	public Integer[] getNumarr() {
		return numarr;
	}
	public void setNumarr(Integer[] numarr) {
		this.numarr = numarr;
	}
	public Integer getColor_colorseq() {
		return color_colorseq;
	}
	public void setColor_colorseq(Integer color_colorseq) {
		this.color_colorseq = color_colorseq;
	}
	public Integer getSize_size() {
		return size_size;
	}
	public void setSize_size(Integer size_size) {
		this.size_size = size_size;
	}
	public Integer getNum() {
		return num;
	}
	public void setNum(Integer num) {
		this.num = num;
	}




}
