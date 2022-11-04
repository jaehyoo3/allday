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
	public int pageNo;
	public int totalCount;
	public int numOfRows;
	
	public Object[] items;
	public String so2Grade;
	public String coFlag;
	public int khaiValue;
	public String so2Value;
	public String coValue;
	public String pm25Flag;
	public String pm10Flag;
	public int o3Grade;
	public int pm10Value;
	public int khaiGrade;
	public int pm25Value;
	public String sidoName;
	public String no2Flag;
	public String no2Grade;
	public String o3Flag;
	public String pm25Grade;
	public String so2Flag;
	public String dataTime;
	public String coGrade;
	public String no2Value;
	public String stationName;
	public String pm10Grade;
	public String o3Value;

	public int getPageNo() {
		return pageNo;
	}
	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}
	public int getNumOfRows() {
		return numOfRows;
	}
	public void setNumOfRows(int numOfRows) {
		this.numOfRows = numOfRows;
	}
	public String getSo2Grade() {
		return so2Grade;
	}
	public void setSo2Grade(String so2Grade) {
		this.so2Grade = so2Grade;
	}
	public String getCoFlag() {
		return coFlag;
	}
	public void setCoFlag(String coFlag) {
		this.coFlag = coFlag;
	}
	public int getKhaiValue() {
		return khaiValue;
	}
	public void setKhaiValue(int khaiValue) {
		this.khaiValue = khaiValue;
	}
	public String getSo2Value() {
		return so2Value;
	}
	public void setSo2Value(String so2Value) {
		this.so2Value = so2Value;
	}
	public String getCoValue() {
		return coValue;
	}
	public void setCoValue(String coValue) {
		this.coValue = coValue;
	}
	public String getPm25Flag() {
		return pm25Flag;
	}
	public void setPm25Flag(String pm25Flag) {
		this.pm25Flag = pm25Flag;
	}
	public String getPm10Flag() {
		return pm10Flag;
	}
	public void setPm10Flag(String pm10Flag) {
		this.pm10Flag = pm10Flag;
	}
	public int getO3Grade() {
		return o3Grade;
	}
	public void setO3Grade(int o3Grade) {
		this.o3Grade = o3Grade;
	}
	public int getPm10Value() {
		return pm10Value;
	}
	public void setPm10Value(int pm10Value) {
		this.pm10Value = pm10Value;
	}
	public int getKhaiGrade() {
		return khaiGrade;
	}
	public void setKhaiGrade(int khaiGrade) {
		this.khaiGrade = khaiGrade;
	}
	public int getPm25Value() {
		return pm25Value;
	}
	public void setPm25Value(int pm25Value) {
		this.pm25Value = pm25Value;
	}
	public String getSidoName() {
		return sidoName;
	}
	public void setSidoName(String sidoName) {
		this.sidoName = sidoName;
	}
	public String getNo2Flag() {
		return no2Flag;
	}
	public void setNo2Flag(String no2Flag) {
		this.no2Flag = no2Flag;
	}
	public String getNo2Grade() {
		return no2Grade;
	}
	public void setNo2Grade(String no2Grade) {
		this.no2Grade = no2Grade;
	}
	public String getO3Flag() {
		return o3Flag;
	}
	public void setO3Flag(String o3Flag) {
		this.o3Flag = o3Flag;
	}
	public String getPm25Grade() {
		return pm25Grade;
	}
	public void setPm25Grade(String pm25Grade) {
		this.pm25Grade = pm25Grade;
	}
	public String getSo2Flag() {
		return so2Flag;
	}
	public void setSo2Flag(String so2Flag) {
		this.so2Flag = so2Flag;
	}
	public String getDataTime() {
		return dataTime;
	}
	public void setDataTime(String dataTime) {
		this.dataTime = dataTime;
	}
	public String getCoGrade() {
		return coGrade;
	}
	public void setCoGrade(String coGrade) {
		this.coGrade = coGrade;
	}
	public String getNo2Value() {
		return no2Value;
	}
	public void setNo2Value(String no2Value) {
		this.no2Value = no2Value;
	}
	public String getStationName() {
		return stationName;
	}
	public void setStationName(String stationName) {
		this.stationName = stationName;
	}
	public String getPm10Grade() {
		return pm10Grade;
	}
	public void setPm10Grade(String pm10Grade) {
		this.pm10Grade = pm10Grade;
	}
	public String getO3Value() {
		return o3Value;
	}
	public void setO3Value(String o3Value) {
		this.o3Value = o3Value;
	}
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
