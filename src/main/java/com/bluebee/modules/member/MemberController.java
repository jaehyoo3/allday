package com.bluebee.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/xdmin/memberList")
	public String MemberList(MemberVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/xdmin/wowUser";
	}
	
	@RequestMapping(value = "/xdmin/memberForm")
	public String MemberForm(MemberVo vo, Model model) throws Exception {
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/xdmin/wowUserForm";
	}
	
	@RequestMapping(value = "/xdmin/memberInst")
	public String memberInst(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		vo.setMemberSeq(dto.getMemberSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/memberForm";
	}
	
	@RequestMapping(value = "/xdmin/memberUpdt")
	public String memberUpdt(MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setMemberSeq(dto.getMemberSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/memberForm";
	}
	@RequestMapping(value = "/xdmin/memberUele")
	public String memberUele(Member dto) throws Exception {
		service.uelete(dto);
		return "redirect:/xdmin/memberList";
	}
	@RequestMapping(value = "/xdmin/memberDele")
	public String memberDele(MemberVo vo) throws Exception {
		service.delete(vo);
		return "redirect:/xdmin/memberList";
	}
	
	@RequestMapping(value = "/xdmin/memberView")
	public String memberView(MemberVo vo, Model model) throws Exception { 		
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/xdmin/wowUserForm"; 
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
	
	@ResponseBody
	@RequestMapping(value = "xdmin/checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
}
