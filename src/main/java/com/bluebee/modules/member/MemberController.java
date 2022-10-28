package com.bluebee.modules.member;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bluebee.modules.constants.Constants;
import com.bluebee.modules.util.UtilSecurity;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/xdmin/memberList")
	public String MemberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/wowUser";
	}
	
	@RequestMapping(value = "/xdmin/memberForm")
	public String MemberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/wowUserForm";
	}
	
	@RequestMapping(value = "/xdmin/memberInst")
	public String memberInst(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		vo.setMemberSeq(dto.getMemberSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/memberForm";
	}
	
	@RequestMapping(value = "/xdmin/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
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
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception { 		
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/wowUserForm"; 
	}
	
//	USER
	@RequestMapping(value = "/reg1")
	public String memberSignFirst(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		return "infra/store/memberReg1"; 
	}
	@RequestMapping(value = "/reg2")
	public String memberSignSecond(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
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
	@ResponseBody
	@RequestMapping(value = "xdmin/checkNick")
	public Map<String, Object> checkNick(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneNickCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			dto.setMemberPW(UtilSecurity.encryptSha256(dto.getMemberPW()));
			Member rtMember2 = service.selectOneLogin(dto);

			if(rtMember2 != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMemberSeq());
				httpSession.setAttribute("sessId", rtMember2.getMemberID());
				httpSession.setAttribute("sessName", rtMember2.getMemberName());
				httpSession.setAttribute("sessNick", rtMember2.getMemberNick());
				returnMap.put("rt", "success");
			} else {
				dto.setMemberSeq(rtMember.getMemberSeq());
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "member/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	@RequestMapping(value = "/memberView")
	public String userView(@ModelAttribute("vo") MemberVo vo, Model model, Member dto) throws Exception { 		
				
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/store/memberUpdate"; 
	}
	
	@RequestMapping(value = "/memberUpdt")
	public String userUpdate(MemberVo vo, Model model, Member dto, RedirectAttributes redirectAttributes) throws Exception { 		
		service.update(dto);		
		vo.setMemberSeq(dto.getMemberSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/memberView"; 
	}
	
	@RequestMapping(value = "modify")
	public String MemberModify(Model model, MemberVo vo) throws Exception {
		
		List<Member> list = service.orderList(vo);
		model.addAttribute("list", list);
		
		return "infra/store/memberMod";
	}
	@RequestMapping(value = "basket")
	public String MemberBasket(Model model, MemberVo vo) throws Exception {
		List<Member> list = service.basketList(vo);
		model.addAttribute("list", list);
		
		return "infra/store/memberBasket";
	}
	
	@RequestMapping(value = "orderbuy")
	public String BasketBuy(Model model, MemberVo vo) throws Exception {
		List<Member> list = service.basketList(vo);
		model.addAttribute("list", list);
		
		return "infra/store/memberBasket";
	}
}
