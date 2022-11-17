package com.bluebee.modules.member;

import java.util.Date;
import com.bluebee.modules.base.Base;


public class Member extends Base {
	private String memberPW;
	private String memberDob;
	private Integer memberGender;
	private Integer memberDelNy;
	private Integer memberAd;
	private Integer memberGrade;
	private Integer memberPoint;
	private String memberName;
	private String seq;
	private Integer price;
	private String snsId;
	
	public String getSnsId() {
		return snsId;
	}
	public void setSnsId(String snsId) {
		this.snsId = snsId;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	// image	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
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

	public String getMemberPW() {
		return memberPW;
	}
	public void setMemberPW(String memberPW) {
		this.memberPW = memberPW;
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
