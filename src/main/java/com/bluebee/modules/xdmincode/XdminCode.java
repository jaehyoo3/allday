package com.bluebee.modules.xdmincode;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class XdminCode {
	private String codeSeq;
	private String codeGroupSeq;
	private String codeName;
	private String codeNameEng;
	private Integer codeOrder;
	private Integer codeUseNY;
	private Integer codeDelNY;
	private Date codeRegdate;
	private Date codeUpdate;
	private String codeGroupName;
	
	public static List<XdminCode> cachedCodeArrayList = new ArrayList<XdminCode>();
	
	public String getCodeGroupName() {
		return codeGroupName;
	}
	public void setCodeGroupName(String codeGroupName) {
		this.codeGroupName = codeGroupName;
	}
	public String getCodeSeq() {
		return codeSeq;
	}
	public void setCodeSeq(String codeSeq) {
		this.codeSeq = codeSeq;
	}
	public String getCodeGroupSeq() {
		return codeGroupSeq;
	}
	public void setCodeGroupSeq(String codeGroupSeq) {
		this.codeGroupSeq = codeGroupSeq;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public String getCodeNameEng() {
		return codeNameEng;
	}
	public void setCodeNameEng(String codeNameEng) {
		this.codeNameEng = codeNameEng;
	}
	public Integer getCodeOrder() {
		return codeOrder;
	}
	public void setCodeOrder(Integer codeOrder) {
		this.codeOrder = codeOrder;
	}
	public Integer getCodeUseNY() {
		return codeUseNY;
	}
	public void setCodeUseNY(Integer codeUseNY) {
		this.codeUseNY = codeUseNY;
	}
	public Integer getCodeDelNY() {
		return codeDelNY;
	}
	public void setCodeDelNY(Integer codeDelNY) {
		this.codeDelNY = codeDelNY;
	}
	public Date getCodeRegdate() {
		return codeRegdate;
	}
	public void setCodeRegdate(Date codeRegdate) {
		this.codeRegdate = codeRegdate;
	}
	public Date getCodeUpdate() {
		return codeUpdate;
	}
	public void setCodeUpdate(Date codeUpdate) {
		this.codeUpdate = codeUpdate;
	}

	
}