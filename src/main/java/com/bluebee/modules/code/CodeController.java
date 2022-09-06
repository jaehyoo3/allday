package com.bluebee.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/code/")
public class CodeController {
	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "codeList")
	public String codeList(Model model, CodeVo vo) throws Exception {
		
		System.out.println("vo.getShValue: " + vo.getShValue());
		System.out.println("vo.getShOption: " + vo.getShOption());
		System.out.println("vo.getDelNy: " + vo.getShDelNy());
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeList";
	}
	
	@RequestMapping(value = "codeForm")
	public String codeForm(Model model) throws Exception {	
		List<Code> list = service.ccgviewr();
		model.addAttribute("list", list);
		
		return "infra/code/xdmin/codeForm";
	}

	@RequestMapping(value = "codeInst")
	public String codeInst(Code dto) throws Exception {
		int result = service.insert(dto);
		
		return "redirect:/code/codeList";
	}
}