package com.bluebee.modules.codegroup;

import java.util.List;
import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codeGroup/")
public class CodeGroupController {
	
	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model, @ModelAttribute("vo") CodeGroupVo vo) throws Exception {
		
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
	public String codeGroupView(Model model, @ModelAttribute("vo") CodeGroupVo vo) throws Exception {
		if(vo.getCcgseq().equals("0") || vo.getCcgseq().equals("")) {
		
		} else {
		CodeGroup views = service.selectOne(vo);
		model.addAttribute("item", views);
		}
		return "infra/codegroup/xdmin/codeGroupForm";
	}
	
	@RequestMapping(value= "codeGroupInst")
	public String codeGroupInst(CodeGroup dto) throws Exception {
		
		int result = service.insert(dto);
		System.out.println("controller result: " + result);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupUpdt")
	public String codeGroupUpdt(CodeGroup dto) throws Exception {
		int result = service.update(dto);
		System.out.println("controller result updt: " + result);
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupUele")
	public String codeGroupUele(CodeGroup dto) throws Exception {
		int result = service.uelete(dto);
		
		return "redirect:/codeGroup/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupDele")
	public String codeGroupDele(Model model, CodeGroupVo vo) throws Exception {
		int dele = service.delete(vo);
		model.addAttribute("item", dele);
		
		return "redirect:/codeGroup/codeGroupList";
	}

}