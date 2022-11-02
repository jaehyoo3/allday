package com.bluebee.modules.xdmincg;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;


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
			return "infra/codegroup/xdmin/wowProductUpdate";
		}
		@RequestMapping(value = "codegroup")
		public String wowCodeGroup(@ModelAttribute("vo") XdminCGVo vo, Model model) throws Exception {
			
			vo.setParamsPaging(service.selectOneCount(vo));
			
			List<XdminCG> list = service.selectList(vo);
			model.addAttribute("list", list);
			return "infra/codegroup/xdmin/wowCodeGroup";
		}
				
		@RequestMapping(value = "codegroupform")
		public String wowCodeGroupForm(@ModelAttribute("vo") XdminCGVo vo, Model model) throws Exception { 
			XdminCG item = service.selectOne(vo);
			model.addAttribute("item", item);

			return "infra/codegroup/xdmin/wowCodeGroupForm"; 
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
			service.uelete(dto);
			
			return "redirect:/xdmin/codegroup";
		}
		
		@RequestMapping(value = "codegroupDele")
		public String codeGroupDele(Model model, XdminCGVo vo) throws Exception {
			int dele = service.delete(vo);
			model.addAttribute("item", dele);
			
			return "redirect:/xdmin/codegroup";
		}
		
		@RequestMapping(value = "/test/apitest")
		public String publicCorona1List(Model model) throws Exception {
			
			String apiUrl = "http://apis.data.go.kr/B552584/ArpltnInforInqireSvc/getCtprvnRltmMesureDnsty?sidoName=%EC%9D%B8%EC%B2%9C&pageNo=1&numOfRows=100&returnType=json&serviceKey=8pDUWDvj2GsfKzH%2F9jqv2XoNTtmMGkqHVaB5Lr5WU%2FnEgBgGQuDOhfGslMWSHlENIm%2BBCQFiFbTYNrNArRP5bA%3D%3D&ver=1.0&numOfRows=100&pageNo=1";
			
			URL url = new URL(apiUrl);
			HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
			httpURLConnection.setRequestMethod("GET");
			
			BufferedReader bufferedReader;
			if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
			} else {
				bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
			}
			
			StringBuilder stringBuilder = new StringBuilder();
			String line;
			while ((line = bufferedReader.readLine()) != null) {
				System.out.println("line: " + line);
				stringBuilder.append(line);
			}

			bufferedReader.close();
			httpURLConnection.disconnect();

			System.out.println("stringBuilder.toString(): " + stringBuilder.toString());
			
//			json object + array string -> java map
			
	        ObjectMapper objectMapper = new ObjectMapper();	        Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
	        
	        System.out.println("######## Map");
			for (String key : map.keySet()) {
				String value = String.valueOf(map.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}
			

			Map<String, Object> body = new HashMap<String, Object>();
			body = (Map<String, Object>) map.get("body");
			
			for (String key : body.keySet()) {
				String value = String.valueOf(body.get(key));	// ok
				System.out.println("[key]:" + key + ", [value]:" + value);
			}

			
			List<XdminCG> items = new ArrayList<XdminCG>();
			items = (List<XdminCG>) body.get("items");
			
			
			System.out.println("items.size(): " + items.size());
			
//			for(Home item : items) {
//				System.out.println(item.getMM());
//			}

			model.addAllAttributes(body);
			
			return "infra/codegroup/xdmin/apitest";
		}
}
