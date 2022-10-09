package com.bluebee.modules.member;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;


public class Member {
	private String memberSeq;
	private String memberID;
	private String memberPW;
	private String memberNick;
	private String memberDob;
	private Integer memberGender;
	private String memberEmail;
	private Integer memberMobile;
	private Integer memberDelNy;
	private Integer memberAd;
	private Integer memberGrade;
	private Integer memberPoint;
	private String memberName;
	private String addrSeq;
	private Integer defaultNy;
	private String  reciver;
	private String zipcode;
	private String seq;
	// image
	private Integer type;
	private Integer idefaultNy;
	private Integer sort;
	private String path;
	private String originalName;
	private String uuidName;
	private String ext;
	private long size;
	private MultipartFile[] UploadedProfileImage;
	private MultipartFile[] UploadedImage;
	private MultipartFile[] UploadedFile;
	private Integer idelNy;
	private String pseq;
	private String tableName;
	
	public String getTableName() {
		return tableName;
	}
	public void setTableName(String tableName) {
		this.tableName = tableName;
	}
	public String getPseq() {
		return pseq;
	}
	public void setPseq(String pseq) {
		this.pseq = pseq;
	}
	public MultipartFile[] getUploadedProfileImage() {
		return UploadedProfileImage;
	}
	public void setUploadedProfileImage(MultipartFile[] uploadedProfileImage) {
		UploadedProfileImage = uploadedProfileImage;
	}
	public MultipartFile[] getUploadedImage() {
		return UploadedImage;
	}
	public void setUploadedImage(MultipartFile[] uploadedImage) {
		UploadedImage = uploadedImage;
	}
	public MultipartFile[] getUploadedFile() {
		return UploadedFile;
	}
	public void setUploadedFile(MultipartFile[] uploadedFile) {
		UploadedFile = uploadedFile;
	}
	public long getSize() {
		return size;
	}
	public void setSize(long size) {
		this.size = size;
	}
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
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

	public Integer getIdelNy() {
		return idelNy;
	}
	public void setIdelNy(Integer idelNy) {
		this.idelNy = idelNy;
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
	private String addr1;
	private String addr2;
	
	public Date getMemberRegdate() {
		return memberRegdate;
	}
	public void setMemberRegdate(Date memberRegdate) {
		this.memberRegdate = memberRegdate;
	}
	public Date getMemberUpdate() {
		return memberUpdate;
	}
	public void setMemberUpdate(Date memberUpdate) {
		this.memberUpdate = memberUpdate;
	}
	private Date memberRegdate;
	private Date memberUpdate;
	
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getMemberPW() {
		return memberPW;
	}
	public void setMemberPW(String memberPW) {
		this.memberPW = memberPW;
	}
	public String getMemberNick() {
		return memberNick;
	}
	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}
	public String getMemberDob() {
		return memberDob;
	}
	public void setMemberDob(String memberDob) {
		this.memberDob = memberDob;
	}
	public Integer getMemberGender() {
		return memberGender;
	}
	public void setMemberGender(Integer memberGender) {
		this.memberGender = memberGender;
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
	public Integer getMemberDelNy() {
		return memberDelNy;
	}
	public void setMemberDelNy(Integer memberDelNy) {
		this.memberDelNy = memberDelNy;
	}
	public Integer getMemberAd() {
		return memberAd;
	}
	public void setMemberAd(Integer memberAd) {
		this.memberAd = memberAd;
	}
	public Integer getMemberGrade() {
		return memberGrade;
	}
	public void setMemberGrade(Integer memberGrade) {
		this.memberGrade = memberGrade;
	}
	public Integer getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(Integer memberPoint) {
		this.memberPoint = memberPoint;
	}

	
}
