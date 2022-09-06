package com.bluebee.modules.codegroup;

import java.util.Date;

public class CodeGroup {
	private String ccgseq;
	private Integer userNY;
	private Integer ccorder;
	private Date regDate;
	private Date modifyDate;
	private Integer cnt;
	private String codeName;
	private Integer delNy;
	private String codeNameEng;
	
	public String getCodeNameEng() {
		return codeNameEng;
	}
	public void setCodeNameEng(String codeNameEng) {
		this.codeNameEng = codeNameEng;
	}
	public Integer getDelNy() {
		return delNy;
	}
	public void setDelNy(Integer delNy) {
		this.delNy = delNy;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public Date getRegDate() {
		return regDate;
	}
	public Integer getCnt() {
		return cnt;
	}
	public void setCnt(Integer cnt) {
		this.cnt = cnt;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}
	public String getCcgseq() {
		return ccgseq;
	}
	public void setCcgseq(String ccgseq) {
		this.ccgseq = ccgseq;
	}
	public Integer getUserNY() {
		return userNY;
	}
	public void setUserNY(Integer userNY) {
		this.userNY = userNY;
	}
	public Integer getCcorder() {
		return ccorder;
	}
	public void setCcorder(Integer ccorder) {
		this.ccorder = ccorder;
	}
}
