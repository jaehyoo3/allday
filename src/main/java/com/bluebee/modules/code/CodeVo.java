package com.bluebee.modules.code;

import com.bluebee.modules.base.BaseVo;

public class CodeVo extends BaseVo {
	private String ccseq;
	private String cname;

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getCcseq() {
		return ccseq;
	}

	public void setCcseq(String ccseq) {
		this.ccseq = ccseq;
	}
	
}