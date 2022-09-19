package com.bluebee.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bluebee.modules.codegroup.CodeGroup;
import com.bluebee.modules.codegroup.CodeGroupVo;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "codeList")
	public String codeList(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception {
		/* vo.setShDelNy(vo.getShDelNy() == null ? 0 : vo.getShDelNy()); */
		vo.setParamsPaging(service.selectOneCount(vo));
		
		System.out.println("vo.getShValue: " + vo.getShValue());
		System.out.println("vo.getShOption: " + vo.getShOption());
		System.out.println("vo.getDelNy: " + vo.getShDelNy());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	@RequestMapping(value = "codeView")
	public String codeView(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception {
		if(vo.getCcseq().equals("0") || vo.getCcseq().equals("")) {
		
		} else {
		Code views = service.selectOne(vo);
		model.addAttribute("item", views);
		}
		
		List<Code> list = service.ccgviewr();
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeForm";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(Model model, @ModelAttribute("vo") CodeVo vo) throws Exception {	

		Code views = service.selectOne(vo);
		model.addAttribute("item", views);
		
		List<Code> list = service.ccgviewr();
		model.addAttribute("list", list);
		
		
		return "infra/code/xdmin/codeForm";
	}

	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception {
		int result = service.insert(dto);
		
		return "redirect:/code/codeList";
	}
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(Code dto) throws Exception {
		int result = service.update(dto);
		System.out.println("controller result updt: " + result);
		return "redirect:/code/codeList";
	}
}