package com.bluebee.modules.member;
import com.bluebee.modules.base.BaseVo;

public class MemberVo extends BaseVo{

	private String memberSeq;
	private Integer memberAd;
	

	public Integer getMemberAd() {
		return memberAd;
	}

	public void setMemberAd(Integer memberAd) {
		this.memberAd = memberAd;
	}

	public String getMemberSeq() {
		return memberSeq;
	}

	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}



}
