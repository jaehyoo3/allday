package com.bluebee.modules.store;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bluebee.modules.member.Member;

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
			return "infra/product/xdmin/productList";
		}
		
		@RequestMapping(value = "xdmin/productView")
		
		public String ProductView(Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
			Store item = service.selectOne(vo);
			model.addAttribute("item", item);
			
			List<Store> cl = service.cL(vo);
			List<Store> sl = service.sL(vo);

			model.addAttribute("clist", cl);
			model.addAttribute("slist", sl);
			return "infra/product/xdmin/productForm";
		}
		
		@RequestMapping(value = "xdmin/productForm")
		public String ProductForm(Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
			List<Store> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			List<Store> cl = service.cL(vo);
			List<Store> sl = service.sL(vo);

			model.addAttribute("clist", cl);
			model.addAttribute("slist", sl);
			
			return "infra/product/xdmin/productForm";
		}
		@RequestMapping(value = "")
		public String AdminUser() {
			return "infra/main";
		}
		@RequestMapping(value = "xdmin/productInst")
		public String productInst(HttpServletRequest request, Store dto) throws Exception {        
	        
			service.insert(dto);
			return "redirect:/xdmin/productList";
		}
		@RequestMapping(value = "xdmin/productUpdt")
		public String productUpdt(@ModelAttribute("vo") StoreVo vo, Store dto, RedirectAttributes redirectAttributes) throws Exception {
			service.update(dto);
			
			return "redirect:/xdmin/productList";
		}
	/*  User  */
		@RequestMapping(value = "/main")
		public String StoreMain(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			return "infra/store/storeMain";
		}
		
		@RequestMapping(value = "/search")
		public String StoreSearch(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.selectList(vo);
			model.addAttribute("list", list);
			return "infra/store/storeSearch";
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
		@RequestMapping(value = "storeTop")
		public String StoreTop(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			return "infra/store/storeTop";
		}
		@RequestMapping(value = "storePants")
		public String StorePants(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			return "infra/store/storePants";
		}
		@RequestMapping(value = "storeOuter")
		public String StoreOuter(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.selectList(vo);
			model.addAttribute("list", list);
			
			return "infra/store/storeOuter";
		}
		
		@RequestMapping(value = "productView")
		public String Prodcut(Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
			Store item = service.selectOne(vo);
			model.addAttribute("item", item);
			
			List<Store> ColorList = service.productColor(vo);
			model.addAttribute("ColorList", ColorList);
			
			List<Store> SizeList = service.productSize(vo);
			model.addAttribute("SizeList", SizeList);
			
			List<Store> mainImgList = service.mainImg(vo);
			model.addAttribute("mainImgList", mainImgList);
			
			List<Store> detailImgList = service.detailImg(vo);
			model.addAttribute("detailImgList", detailImgList);
			
			return "infra/store/storeProduct";
		}
		/*
		 * @RequestMapping(value = "reviewInst") public String reviewInst(Store dto)
		 * throws Exception { service.reviewInsert(dto); return
		 * "redirect:/productView?&ProductSeq=" + dto.getProduct_Seq(); }
		 */
		
		/*
		 * @RequestMapping(value = "wishInst") public String WishInst(Store dto) throws
		 * Exception { service.wish(dto); return "redirect:/productView?&ProductSeq=" +
		 * dto.getProduct_Seq(); }
		 */
		@RequestMapping(value = "product")
		public String Product() {
			return "infra/store/storeProduct";
		}
		
		@RequestMapping(value = "storeBuy")
		public String StoreBuy(Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
			
			Store item = service.selectOne(vo);
			model.addAttribute("item", item);
			
			return "infra/store/storeBuy";
		}
		@RequestMapping(value = "storeInst")
		public String StoreBuyInst(Model model, @ModelAttribute("vo") StoreVo vo, Store dto) throws Exception {
			
			return "infra/store/storeBuysuccess";
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