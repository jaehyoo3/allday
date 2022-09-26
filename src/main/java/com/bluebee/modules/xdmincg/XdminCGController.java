package com.bluebee.modules.xdmincg;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


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

		@RequestMapping(value = "codegroup")
		public String wowCodeGroup(@ModelAttribute("vo") XdminCGVo vo, Model model) throws Exception {
			
			vo.setParamsPaging(service.selectOneCount(vo));
			
			List<XdminCG> list = service.selectList(vo);
			model.addAttribute("list", list);
			return "infra/xdmin/wowCodeGroup";
		}
				
		@RequestMapping(value = "codegroupform")
		public String wowCodeGroupForm(@ModelAttribute("vo") XdminCGVo vo, Model model) throws Exception { 
			XdminCG item = service.selectOne(vo);
			model.addAttribute("item", item);

			return "infra/xdmin/wowCodeGroupForm"; 
		}
		
		@RequestMapping(value = "codegroupInst")
		public String wowCodeGroupInst(XdminCGVo vo, XdminCG dto, RedirectAttributes redirectAttributes) throws Exception { 		
			
			service.insert(dto);
			vo.setCodeGroupSeq(dto.getCodeGroupSeq());
			redirectAttributes.addFlashAttribute("vo", vo);
			
			return "redirect:/xdmin/codegroupform";
		}
		
		@RequestMapping(value = "codegroupUpdt")
		public String wowCodeGroupUpdt(XdminCGVo vo, XdminCG dto, RedirectAttributes redirectAttributes) throws Exception { 		
			service.update(dto);
			vo.setCodeGroupSeq(dto.getCodeGroupSeq());
			redirectAttributes.addFlashAttribute("vo", vo);
			return "redirect:/xdmin/codegroupform";
		}
		@RequestMapping(value = "codegroupView")
		public String wowCodeGroupView(XdminCGVo vo, Model model) throws Exception { 		
			
			XdminCG item = service.selectOne(vo);
			model.addAttribute("item", item);
			
			return "infra/xdmin/wowCodeGroupForm"; 
		}
		
		@RequestMapping(value = "codegroupUele")
		public String codeGroupUele(XdminCG dto) throws Exception {
			int result = service.uelete(dto);
			
			return "redirect:/xdmin/codegroup";
		}
		
		@RequestMapping(value = "codegroupDele")
		public String codeGroupDele(Model model, XdminCGVo vo) throws Exception {
			int dele = service.delete(vo);
			model.addAttribute("item", dele);
			
			return "redirect:/xdmin/codegroup";
		}
}
