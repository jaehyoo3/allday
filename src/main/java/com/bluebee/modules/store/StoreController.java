package com.bluebee.modules.store;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bluebee.modules.xdmincode.XdminCode;

@Controller
public class StoreController {
	@Autowired
	StoreServiceImpl service;
	
	/* Admin */
		@RequestMapping(value = "xdmin/productList")
		
		public String ProductList(Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
			vo.setParamsPaging(service.selectOneCount(vo));
			
			List<Store> list = service.selectList(vo);
			model.addAttribute("list", list);
			return "infra/product/xdmin/productForm";
		}
		
		@RequestMapping(value = "xdmin/productForm")
		public String ProductForm(Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
			return "infra/product/xdmin/productList";
		}
		
	
	
	/*  User  */
		@RequestMapping(value = "/")
		public String StoreMain() {
			return "infra/store/storeMain";
		}
		@RequestMapping(value = "login")
		public String Login() {
			return "infra/store/memberLogin";
		}
		@RequestMapping(value = "storeNew")
		public String StoreNew(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			return "infra/store/storeNew";
		}
		@RequestMapping(value = "storeBest")
		public String StoreBest(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			return "infra/store/storeBest";
		}
		@RequestMapping(value = "product")
		public String Product() {
			return "infra/store/storeProduct";
		}
		@RequestMapping(value = "storeBuy")
		public String StoreBuy() {
			return "infra/store/storeBuy";
		}
		@RequestMapping(value = "storeBuySuccess")
		public String StoreBuySuccess() {
			return "infra/store/storeBuysuccess";
		}
		@RequestMapping(value = "modify")
		public String MemberModify() {
			return "infra/store/memberMod";
		}
		@RequestMapping(value = "wish")
		public String MemberWish() {
			return "infra/store/memberWish";
		}
		@RequestMapping(value = "update")
		public String MemberUpdate() {
			return "infra/store/memberUpdate";
		}
		@RequestMapping(value = "basket")
		public String MemberBasket() {
			return "infra/store/memberBasket";
		}
		@RequestMapping(value = "find")
		public String MemberFind() {
			return "infra/store/memberFind";
		}
		@RequestMapping(value = "findID")
		public String MemberFindID() {
			return "infra/store/memberFindID";
		}
		@RequestMapping(value = "findPW")
		public String MemberFindPW() {
			return "infra/store/memberFindPW";
		}
		
		
}