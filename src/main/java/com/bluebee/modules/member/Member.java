package com.bluebee.modules.member;

import java.util.Date;

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
