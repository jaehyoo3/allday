package com.bluebee.modules.store;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
		public String StoreMain(@ModelAttribute("vo") StoreVo vo, Model model) throws Exception {
			List<Store> list = service.MainproductList(vo);
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
			List<Store> list = service.productList(vo);
			model.addAttribute("list", list);
			
			List<Store> mainImg = service.mainImg(vo);
			model.addAttribute("mainImgList", mainImg);
			
			return "infra/store/storeBest";
		}
		@RequestMapping(value = "storeTop")
		public String StoreTop(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.productList(vo);
			model.addAttribute("list", list);
			
			List<Store> mainImg = service.mainImg(vo);
			model.addAttribute("mainImgList", mainImg);
			return "infra/store/storeTop";
		}
		@RequestMapping(value = "storePants")
		public String StorePants(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.productList(vo);
			model.addAttribute("list", list);
			
			List<Store> mainImg = service.mainImg(vo);
			model.addAttribute("mainImgList", mainImg);
			return "infra/store/storePants";
		}
		@RequestMapping(value = "storeOuter")
		public String StoreOuter(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.productList(vo);
			model.addAttribute("list", list);
			
			List<Store> mainImg = service.mainImg(vo);
			model.addAttribute("mainImgList", mainImg);
			
			return "infra/store/storeOuter";
		}
		
		@RequestMapping(value = "productView")
		public String Prodcut(Store dto, Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
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
			
			List<Store> reviewList = service.reviewList(vo);
			model.addAttribute("reviewList", reviewList);
			
			List<Store> wishListCount = service.wishListCnt(dto);
			model.addAttribute("wishListCount", wishListCount);
			
			return "infra/store/storeProduct";
		}
		@RequestMapping(value = "product")
		public String Product() {
			return "infra/store/storeProduct";
		}
		
		@RequestMapping(value = "storeBuy")
		public String StoreBuy(Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
			
			Store item = service.buyOneList(vo);
			model.addAttribute("item", item);
			
			Store detail = service.detailList(vo);
			model.addAttribute("detail",detail);
			
			return "infra/store/storeBuy";
		}
		@RequestMapping(value = "totalBuy")
		public String TotalBuy(Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
			Store item = service.buyOneList(vo);
			model.addAttribute("item", item);
			
			List<Store> list = service.totalBuy(vo);
			model.addAttribute("list", list);
			
			return "infra/store/totalBuy";
		}
		@RequestMapping(value = "storeInst")
		public String StoreBuyInst(Model model, @ModelAttribute("vo") StoreVo vo, Store dto) throws Exception {
			service.buyOrder(dto);

			return "infra/store/storeBuysuccess";
		}
		
		@RequestMapping(value = "storeBuySuccess")
		public String StoreBuySuccess(Model model, StoreVo vo) throws Exception {
			List<Store> list = service.orderList(vo);
			model.addAttribute("list", list);
			return "infra/store/storeBuysuccess";
		}

		@RequestMapping(value = "wish")
		public String MemberWish(Model model, @ModelAttribute("vo") StoreVo vo) throws Exception {
			
			List<Store> list = service.wishList(vo);
			model.addAttribute("list", list);

			return "infra/store/memberWish";
		}
		@RequestMapping(value = "update")
		public String MemberUpdate() {
			return "infra/store/memberUpdate";
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
			
		@ResponseBody
		@RequestMapping(value = "/reviewProc")
		public Map<String, Object> reviewProc(Model model, Store dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			  int ckOrder = service.buyCheck(dto);
			  int reviewCk = service.reviewCheck(dto);
			  
			  if(ckOrder == 0) {
				  returnMap.put("rt", "fail");
			  } else if(reviewCk == 1) {
				  returnMap.put("rt", "existence");
			  } else {
				service.reviewInsert(dto);
				
				List<Store> rList = service.reviewList3(dto);
				model.addAttribute("rList", rList);
				
				returnMap.put("rList", rList);
				returnMap.put("rt", "success");

			}			
			return returnMap;
		}
		
		@ResponseBody
		@RequestMapping(value = "/basketProc")
		public Map<String, Object> basketProc(Store dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			
			int ckBasket = service.basketCheck(dto);


			if(ckBasket == 1) {
				service.basketUpdt(dto);
				returnMap.put("rt", "fail");
				
			} else {
				service.basketInsert(dto);
				returnMap.put("rt", "success");
			}
			return returnMap;
		}
		
		@ResponseBody
		@RequestMapping(value = "/wishProc")
		public Map<String, Object> wishProc(Model model, StoreVo vo, Store dto, HttpSession httpSession) throws Exception {
			Map<String, Object> returnMap = new HashMap<String, Object>();
			int ckWish = service.wishListCheck(dto);

			if(ckWish == 0) {
					service.wishinst(dto);
					List<Store> WList = service.wishListCnt(dto);
					model.addAttribute("WList", WList);
					
					returnMap.put("WList", WList);
					returnMap.put("rt", "success");
			} else if(ckWish == 1) {
					service.wishListDele(dto);
					List<Store> WList = service.wishListCnt(dto);
					model.addAttribute("WList", WList);
					returnMap.put("WList", WList);
					returnMap.put("rt", "delete");
			} else {
				returnMap.put("rt", "fail");
			}
			return returnMap;
		}
}
