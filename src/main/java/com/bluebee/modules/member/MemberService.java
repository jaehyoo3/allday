package com.bluebee.modules.member;

import java.util.List;

public interface MemberService {
	public List<Member> selectList(MemberVo vo) throws Exception;
}
