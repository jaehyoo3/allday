package com.bluebee.modules.codegroup;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bluebee.modules.code.Code;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, CodeGroupVo vo) throws Exception {
		
		System.out.println("vo.getShValue: " + vo.getShValue());
		System.out.println("vo.getShOption: " + vo.getShOption());
		System.out.println("vo.getDelNy: " + vo.getShDelNy());
		System.out.println(vo.getShstartDate());
		System.out.println(vo.getShendDate());
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/codegroup/xdmin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm() throws Exception {
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	@RequestMapping(value = "codeGroupView")
	public String codeGroupView(Model model, CodeGroupVo vo) throws Exception {
		CodeGroup views = service.selectOne(vo);
		model.addAttribute("item", views);
		
		return "infra/codegroup/xdmin/codeGroupView";
	}
	
	@RequestMapping(value= "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}

}