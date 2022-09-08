package com.bluebee.modules.store;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreController {
		
		@RequestMapping(value = "/")
		public String StoreMain() {
			return "infra/store/storeMain";
		}
		@RequestMapping(value = "login")
		public String Login() {
			return "infra/store/memberLogin";
		}
		@RequestMapping(value = "reg1")
		public String reg1() {
			return "infra/store/memberReg1";
		}
		@RequestMapping(value = "reg2")
		public String reg2() {
			return "infra/store/memberReg2";
		}
		@RequestMapping(value = "reg3")
		public String reg3() {
			return "infra/store/memberReg3";
		}
		@RequestMapping(value = "storeNew")
		public String StoreNew() {
			return "infra/store/storeNew";
		}
}
