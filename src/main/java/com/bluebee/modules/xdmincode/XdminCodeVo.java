package com.bluebee.modules.xdmincode;

import com.bluebee.common.base.BaseVo;

public class XdminCodeVo extends BaseVo {
	private String codeSeq;
	private String codeName;

	public String getCodeName() {
		return codeName;
	}

	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}

	public String getCodeSeq() {
		return codeSeq;
	}

	public void setCodeSeq(String codeSeq) {
		this.codeSeq = codeSeq;
	}
	
}