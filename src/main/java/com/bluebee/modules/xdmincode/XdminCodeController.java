package com.bluebee.modules.xdmincode;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bluebee.modules.codegroup.CodeGroup;
import com.bluebee.modules.codegroup.CodeGroupVo;
import com.bluebee.modules.xdmincg.XdminCGVo;

@Controller
@RequestMapping(value = "/xdmin/")
public class XdminCodeController {
	@Autowired
	XdminCodeServiceImpl service;
	
	@RequestMapping(value = "code")
	public String codeList(Model model, @ModelAttribute("vo") XdminCodeVo vo) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));

		List<XdminCode> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/xdmin/wowCode";
	}
	@RequestMapping(value = "codeView")
	public String codeView(Model model, @ModelAttribute("vo") XdminCodeVo vo) throws Exception {

		XdminCode views = service.selectOne(vo);
		model.addAttribute("item", views);
		
		List<XdminCode> list = service.codegroupViewer();
		model.addAttribute("list", list);
		
		return "infra/xdmin/wowCodeForm";
	}
	
	@RequestMapping(value = "codeform")
	public String codeForm(Model model, @ModelAttribute("vo") XdminCodeVo vo) throws Exception {	

		XdminCode views = service.selectOne(vo);
		model.addAttribute("item", views);
		
		List<XdminCode> list = service.codegroupViewer();
		model.addAttribute("list", list);
		
		return "infra/xdmin/wowCodeForm";
	}

	@RequestMapping(value = "codeInst")
	public String codeInst(XdminCodeVo vo, XdminCode dto) throws Exception {
		service.insert(dto);
		
		return "redirect:/xdmin/code";
	}
	@RequestMapping(value = "codeUpdt")
	public String codeUpdt(XdminCode dto) throws Exception {
		service.update(dto);
		
		return "redirect:/xdmin/code";
	}
}