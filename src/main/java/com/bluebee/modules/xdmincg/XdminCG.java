package com.bluebee.modules.xdmincg;
import java.util.Date;

public class XdminCG {
	private String codeGroupSeq;
	private String codeGroupName;
	private String codeGroupNameEng;
	private int codeGroupOrder;
	private int codeGroupUseNY;
	private int codeGroupDelNY;
	private Date codeGroupRegdate;
	private Date codeGroupUpdate;
	
	public String getCodeGroupSeq() {
		return codeGroupSeq;
	}
	public void setCodeGroupSeq(String codeGroupSeq) {
		this.codeGroupSeq = codeGroupSeq;
	}
	public String getCodeGroupName() {
		return codeGroupName;
	}
	public void setCodeGroupName(String codeGroupName) {
		this.codeGroupName = codeGroupName;
	}
	public String getCodeGroupNameEng() {
		return codeGroupNameEng;
	}
	public void setCodeGroupNameEng(String codeGroupNameEng) {
		this.codeGroupNameEng = codeGroupNameEng;
	}
	public int getCodeGroupOrder() {
		return codeGroupOrder;
	}
	public void setCodeGroupOrder(int codeGroupOrder) {
		this.codeGroupOrder = codeGroupOrder;
	}
	public int getCodeGroupUseNY() {
		return codeGroupUseNY;
	}
	public void setCodeGroupUseNY(int codeGroupUseNY) {
		this.codeGroupUseNY = codeGroupUseNY;
	}
	public int getCodeGroupDelNY() {
		return codeGroupDelNY;
	}
	public void setCodeGroupDelNY(int codeGroupDelNY) {
		this.codeGroupDelNY = codeGroupDelNY;
	}
	public Date getCodeGroupRegdate() {
		return codeGroupRegdate;
	}
	public void setCodeGroupRegdate(Date codeGroupRegdate) {
		this.codeGroupRegdate = codeGroupRegdate;
	}
	public Date getCodeGroupUpdate() {
		return codeGroupUpdate;
	}
	public void setCodeGroupUpdate(Date codeGroupUpdate) {
		this.codeGroupUpdate = codeGroupUpdate;
	}
	
	// API
	
	public Object header;
	public String resultCode;
	public String resultMsg;

	public Object body;
	public Object[] items;

	public Object getHeader() {
		return header;
	}
	public void setHeader(Object header) {
		this.header = header;
	}
	public String getResultCode() {
		return resultCode;
	}
	public void setResultCode(String resultCode) {
		this.resultCode = resultCode;
	}
	public String getResultMsg() {
		return resultMsg;
	}
	public void setResultMsg(String resultMsg) {
		this.resultMsg = resultMsg;
	}
	public Object getBody() {
		return body;
	}
	public void setBody(Object body) {
		this.body = body;
	}
	public Object[] getItems() {
		return items;
	}
	public void setItems(Object[] items) {
		this.items = items;
	}

	

}
