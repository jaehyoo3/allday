package com.bluebee.modules.store;
import java.util.Date;

import com.bluebee.modules.base.Base;

public class Store extends Base {
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
	private Integer colorSeq;

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
	private String reviewRegDate;
	private Integer wishListDelNy;
	private String wishSeq;
	private String productDetail_detailSeq;
	private String purChase;
	private Integer price;
	private String memberAddr_addrSeq;
	private Integer payment;
	private Integer orderMemo;
	private String basketSeq;
	private String basketDelNy;
	private Integer productWishCnt;

// -----------------카카오페이
	
	public String tid;
	public String next_redirect_pc_url;
    //response
    private String aid;
    private String cid; 
    private String sid; 
    private String partner_order_id;
    private String partner_user_id;
    private String payment_method_type;
    
    //amout 객체 안에 데이터
    private Object amount;
    private Integer total;
    private Integer tax_free;
    private Integer vat;
    private Integer point;
    private Integer discount;
    
    //card_info 객체 안에 데이터
    private Object card_info;
	private String purchase_corp;
	private String purchase_corp_code;
    private String issuer_corp;
    private String issuer_corp_code;
    private String bin;
    private String card_type;
    private String install_month;
    private String approved_id;
    private String card_mid;
    private String interest_free_install;
    private String card_item_code;
    private String item_name;
    private String item_code;
    private String payload;
    private Integer quantity;
    private Integer tax_free_amount;
    private Integer vat_amount;
    private Date created_at;
    private Date approved_at;
    private String pg_token;
 // ------------------------------------
    
	public Integer getProductWishCnt() {
		return productWishCnt;
	}
	public void setProductWishCnt(Integer productWishCnt) {
		this.productWishCnt = productWishCnt;
	}
	public String getBasketSeq() {
		return basketSeq;
	}
	public void setBasketSeq(String basketSeq) {
		this.basketSeq = basketSeq;
	}
	public String getBasketDelNy() {
		return basketDelNy;
	}
	public void setBasketDelNy(String basketDelNy) {
		this.basketDelNy = basketDelNy;
	}
	public Integer getOrderMemo() {
		return orderMemo;
	}
	public void setOrderMemo(Integer orderMemo) {
		this.orderMemo = orderMemo;
	}
	public Integer getPayment() {
		return payment;
	}
	public void setPayment(Integer payment) {
		this.payment = payment;
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

	public String getReviewRegDate() {
		return reviewRegDate;
	}
	public void setReviewRegDate(String reviewRegDate) {
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
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getNext_redirect_pc_url() {
		return next_redirect_pc_url;
	}
	public void setNext_redirect_pc_url(String next_redirect_pc_url) {
		this.next_redirect_pc_url = next_redirect_pc_url;
	}
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getPartner_order_id() {
		return partner_order_id;
	}
	public void setPartner_order_id(String partner_order_id) {
		this.partner_order_id = partner_order_id;
	}
	public String getPartner_user_id() {
		return partner_user_id;
	}
	public void setPartner_user_id(String partner_user_id) {
		this.partner_user_id = partner_user_id;
	}
	public String getPayment_method_type() {
		return payment_method_type;
	}
	public void setPayment_method_type(String payment_method_type) {
		this.payment_method_type = payment_method_type;
	}
	public Object getAmount() {
		return amount;
	}
	public void setAmount(Object amount) {
		this.amount = amount;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	public Integer getTax_free() {
		return tax_free;
	}
	public void setTax_free(Integer tax_free) {
		this.tax_free = tax_free;
	}
	public Integer getVat() {
		return vat;
	}
	public void setVat(Integer vat) {
		this.vat = vat;
	}
	public Integer getPoint() {
		return point;
	}
	public void setPoint(Integer point) {
		this.point = point;
	}
	public Integer getDiscount() {
		return discount;
	}
	public void setDiscount(Integer discount) {
		this.discount = discount;
	}
	public Object getCard_info() {
		return card_info;
	}
	public void setCard_info(Object card_info) {
		this.card_info = card_info;
	}
	public String getPurchase_corp() {
		return purchase_corp;
	}
	public void setPurchase_corp(String purchase_corp) {
		this.purchase_corp = purchase_corp;
	}
	public String getPurchase_corp_code() {
		return purchase_corp_code;
	}
	public void setPurchase_corp_code(String purchase_corp_code) {
		this.purchase_corp_code = purchase_corp_code;
	}
	public String getIssuer_corp() {
		return issuer_corp;
	}
	public void setIssuer_corp(String issuer_corp) {
		this.issuer_corp = issuer_corp;
	}
	public String getIssuer_corp_code() {
		return issuer_corp_code;
	}
	public void setIssuer_corp_code(String issuer_corp_code) {
		this.issuer_corp_code = issuer_corp_code;
	}
	public String getBin() {
		return bin;
	}
	public void setBin(String bin) {
		this.bin = bin;
	}
	public String getCard_type() {
		return card_type;
	}
	public void setCard_type(String card_type) {
		this.card_type = card_type;
	}
	public String getInstall_month() {
		return install_month;
	}
	public void setInstall_month(String install_month) {
		this.install_month = install_month;
	}
	public String getApproved_id() {
		return approved_id;
	}
	public void setApproved_id(String approved_id) {
		this.approved_id = approved_id;
	}
	public String getCard_mid() {
		return card_mid;
	}
	public void setCard_mid(String card_mid) {
		this.card_mid = card_mid;
	}
	public String getInterest_free_install() {
		return interest_free_install;
	}
	public void setInterest_free_install(String interest_free_install) {
		this.interest_free_install = interest_free_install;
	}
	public String getCard_item_code() {
		return card_item_code;
	}
	public void setCard_item_code(String card_item_code) {
		this.card_item_code = card_item_code;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_code() {
		return item_code;
	}
	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}
	public String getPayload() {
		return payload;
	}
	public void setPayload(String payload) {
		this.payload = payload;
	}
	public Integer getQuantity() {
		return quantity;
	}
	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}
	public Integer getTax_free_amount() {
		return tax_free_amount;
	}
	public void setTax_free_amount(Integer tax_free_amount) {
		this.tax_free_amount = tax_free_amount;
	}
	public Integer getVat_amount() {
		return vat_amount;
	}
	public void setVat_amount(Integer vat_amount) {
		this.vat_amount = vat_amount;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getApproved_at() {
		return approved_at;
	}
	public void setApproved_at(Date approved_at) {
		this.approved_at = approved_at;
	}
	public String getPg_token() {
		return pg_token;
	}
	public void setPg_token(String pg_token) {
		this.pg_token = pg_token;
	}

}
