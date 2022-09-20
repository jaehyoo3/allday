package com.bluebee.modules.xdmincg;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/xdmin/")

public class XdminCGController {
		@Autowired 
		XdminCGServiceImpl service;
		
		@RequestMapping(value = "/")
		public String wowLogin() { return "infra/xdmin/wowLogin"; }
		
		@RequestMapping(value = "main")
		public String wowMain() {
			return "infra/xdmin/wowMain";
		}
		@RequestMapping(value = "product")
		public String wowProduct() {
			return "infra/xdmin/wowProduct";
		}
		@RequestMapping(value = "productadd")
		public String wowProductAdd() {
			return "infra/xdmin/wowProductAdd";
		}
		@RequestMapping(value = "productupdt")
		public String wowProductUpdt() {
			return "infra/xdmin/wowProductUpdate";
		}
		@RequestMapping(value = "user")
		public String wowUser() {
			return "infra/xdmin/wowUser";
		}
		@RequestMapping(value = "userform")
		public String wowUserForm() {
			return "infra/xdmin/wowUserForm";
		}
		@RequestMapping(value = "code")
		public String wowCode() {
			return "infra/xdmin/wowCode";
		}
		@RequestMapping(value = "codeform")
		public String wowCodeForm() {
			return "infra/xdmin/wowcodeForm";
		}
		
		@RequestMapping(value = "codegroup")
		public String wowCodeGroup(@ModelAttribute("vo") XdminCGVo vo, Model model) throws Exception {
			
			vo.setParamsPaging(service.selectOneCount(vo));
			
			List<XdminCG> list = service.selectList(vo);
			model.addAttribute("list", list);
			return "infra/xdmin/wowCodeGroup";
		}
				
		@RequestMapping(value = "codegroupform")
		public String wowCodeGroupForm() throws Exception { 		
			return "infra/xdmin/wowCodeGroupForm"; 
		}
		
		@RequestMapping(value = "codegroupInst")
		public String wowCodeGroupInst(XdminCG dto) throws Exception { 		
			service.insert(dto);
			
			return "redirect:/xdmin/codegroup";
		}
		
		@RequestMapping(value = "codegroupUpdt")
		public String wowCodeGroupUpdt(XdminCG dto) throws Exception { 		
			service.update(dto);
			
			return "redirect:/xdmin/codegroup";
		}
		@RequestMapping(value = "codegroupView")
		public String wowCodeGroupView(XdminCGVo vo, Model model) throws Exception { 		
			
			XdminCG item = service.selectOne(vo);
			model.addAttribute("item", item);
			
			return "infra/xdmin/wowCodeGroupForm"; 
		}
}
