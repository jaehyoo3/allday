package com.bluebee.modules.xdmincg;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/xdmin/")
public class XdminCGController {
		
		@RequestMapping(value = "/")
		public String wowLogin() {
			return "infra/xdmin/wowLogin";
		}
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
		public String wowCodeGroup() {
			return "infra/xdmin/wowCodeGroup";
		}
		@RequestMapping(value = "codegroupform")
		public String wowCodeGroupForm() {
			return "infra/xdmin/wowCodeGroupForm";
		}
}
