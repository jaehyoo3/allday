package com.bluebee.modules.store;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StoreController {
		
		@RequestMapping(value = "/")
		public String StoreMain() {
		
			return "infra/store/storeMain";
		}
}
