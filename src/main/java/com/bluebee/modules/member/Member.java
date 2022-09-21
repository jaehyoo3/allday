package com.bluebee.modules.member;

import java.util.Date;

public class Member {
	private String userCode;
	private String userID;
	private String userNick;
	private String userPW;
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	private String userPhone;
	public String getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}
	private String userName;
	private Date userDOB;
	private Integer userGender;
	private String userGrade;
	private String AddrCode;
	private String member_userCode;
	private String userEmail;
	private String addrname;
	private String receiver;
	private Integer addrdefault;
	private String addr1;
	private Integer zip;
	private String addr2;
	
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getAddrCode() {
		return AddrCode;
	}
	public void setAddrCode(String addrCode) {
		AddrCode = addrCode;
	}
	public String getMember_userCode() {
		return member_userCode;
	}
	public void setMember_userCode(String member_userCode) {
		this.member_userCode = member_userCode;
	}
	public String getAddrname() {
		return addrname;
	}
	public void setAddrname(String addrname) {
		this.addrname = addrname;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public Integer getAddrdefault() {
		return addrdefault;
	}
	public void setAddrdefault(Integer addrdefault) {
		this.addrdefault = addrdefault;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public Integer getZip() {
		return zip;
	}
	public void setZip(Integer zip) {
		this.zip = zip;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getUserCode() {
		return userCode;
	}
	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserNick() {
		return userNick;
	}
	public void setUserNick(String userNick) {
		this.userNick = userNick;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Date getUserDOB() {
		return userDOB;
	}
	public void setUserDOB(Date userDOB) {
		this.userDOB = userDOB;
	}
	public Integer getUserGender() {
		return userGender;
	}
	public void setUserGender(Integer userGender) {
		this.userGender = userGender;
	}
	public String getUserGrade() {
		return userGrade;
	}
	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}
}
