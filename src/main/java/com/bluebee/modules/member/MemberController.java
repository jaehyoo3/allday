package com.bluebee.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bluebee.modules.xdmincg.XdminCG;
import com.bluebee.modules.xdmincg.XdminCGVo;


@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/admin/memberList")
	public String MemberList(Model model, MemberVo vo) throws Exception {

		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "memberForm")
	public String MemberForm() throws Exception {
		
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "memberInst")
	public String memberInst(Member dto) throws Exception {
		service.insert(dto);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "memberView")
	public String memberView(MemberVo vo, Model model) throws Exception { 		
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/memberForm"; 
	}
}
