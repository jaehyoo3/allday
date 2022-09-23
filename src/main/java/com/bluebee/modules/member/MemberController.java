package com.bluebee.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/xdmin/memberList")
	public String MemberList(Model model, MemberVo vo) throws Exception {

		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/memberList";
	}
	
	@RequestMapping(value = "/xdmin/memberForm")
	public String MemberForm() throws Exception {
		
		return "infra/member/xdmin/memberForm";
	}
	
	@RequestMapping(value = "/xdmin/memberInst")
	public String memberInst(Member dto) throws Exception {
		service.insert(dto);
		
		return "redirect:/member/memberList";
	}
	
	@RequestMapping(value = "/xdmin/memberView")
	public String memberView(MemberVo vo, Model model) throws Exception { 		
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/memberForm"; 
	}
//	USER
	@RequestMapping(value = "/reg1")
	public String memberSignFirst(Member dto) throws Exception {
		
		return "infra/store/memberReg1"; 
	}
	@RequestMapping(value = "/reg2")
	public String memberSignSecond(Member dto) throws Exception {
		return "infra/store/memberReg2"; 
	}
	
	@RequestMapping(value = "signUp")
	public String SignUp(Member dto) throws Exception {
		service.signup(dto);
		return "redirect:/reg3"; 
	}
	
	@RequestMapping(value = "/reg3")
	public String memberSignThird(Member dto) throws Exception {
		return "infra/store/memberReg3"; 
	}
	
}
