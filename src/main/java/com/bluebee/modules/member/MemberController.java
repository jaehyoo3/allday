package com.bluebee.modules.member;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.bluebee.modules.constants.Constants;
import com.bluebee.modules.util.UtilSecurity;
import com.bluebee.modules.xdmincode.XdminCodeServiceImpl;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/xdmin/memberList")
	public String MemberList(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		vo.setParamsPaging(service.selectOneCount(vo));
		
		List<Member> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/wowUser";
	}
	
	@RequestMapping(value = "/xdmin/memberForm")
	public String MemberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/wowUserForm";
	}
	
	@RequestMapping(value = "/xdmin/memberInst")
	public String memberInst(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.insert(dto);
		vo.setMemberSeq(dto.getMemberSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/memberForm";
	}
	
	@RequestMapping(value = "/xdmin/memberUpdt")
	public String memberUpdt(@ModelAttribute("vo") MemberVo vo, Member dto, RedirectAttributes redirectAttributes) throws Exception {
		service.update(dto);
		vo.setMemberSeq(dto.getMemberSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/xdmin/memberForm";
	}
	@RequestMapping(value = "/xdmin/memberUele")
	public String memberUele(Member dto) throws Exception {
		service.uelete(dto);
		return "redirect:/xdmin/memberList";
	}
	@RequestMapping(value = "/xdmin/memberDele")
	public String memberDele(MemberVo vo) throws Exception {
		service.delete(vo);
		return "redirect:/xdmin/memberList";
	}
	
	@RequestMapping(value = "/xdmin/memberView")
	public String memberView(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception { 		
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/member/xdmin/wowUserForm"; 
	}
	
//	USER
	@RequestMapping(value = "/reg1")
	public String memberSignFirst(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		return "infra/store/memberReg1"; 
	}
	@RequestMapping(value = "/reg2")
	public String memberSignSecond(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		return "infra/store/memberReg2"; 
	}
	
	@RequestMapping(value = "signUp")
	public String SignUp(Member dto) throws Exception {
		service.signup(dto);
		return "redirect:/reg3"; 
	}
	
	@RequestMapping(value = "/reg3")
	public String memberSignThird(Member dto) throws Exception {
		return "infra/store/memberReg3"; 
	}
	
	@ResponseBody
	@RequestMapping(value = "xdmin/checkId")
	public Map<String, Object> checkId(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneIdCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	@ResponseBody
	@RequestMapping(value = "xdmin/checkNick")
	public Map<String, Object> checkNick(Member dto) throws Exception {

		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int result = service.selectOneNickCheck(dto);

		if (result > 0) {
			returnMap.put("rt", "fail");
		} else {
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/loginProc")
	public Map<String, Object> loginProc(Member dto, HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();

		Member rtMember = service.selectOneId(dto);

		if (rtMember != null) {
			dto.setMemberPW(UtilSecurity.encryptSha256(dto.getMemberPW()));
			Member rtMember2 = service.selectOneLogin(dto);

			if(rtMember2 != null) {
				httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE); // 60second * 30 = 30minute
				httpSession.setAttribute("sessSeq", rtMember2.getMemberSeq());
				httpSession.setAttribute("sessId", rtMember2.getMemberID());
				httpSession.setAttribute("sessName", rtMember2.getMemberName());
				httpSession.setAttribute("sessNick", rtMember2.getMemberNick());
				returnMap.put("rt", "success");
			} else {
				dto.setMemberSeq(rtMember.getMemberSeq());
				returnMap.put("rt", "fail");
			}
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "/member/kakaoLoginProc")
	public Map<String, Object> kakaoLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member kakaoLogin = service.snsLoginCheck(dto);
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	@ResponseBody
	@RequestMapping(value = "/member/naverLoginProc")
	public Map<String, Object> naverLoginProc(Member dto, HttpSession httpSession) throws Exception {
	    Map<String, Object> returnMap = new HashMap<String, Object>();
	    
		Member kakaoLogin = service.snsLoginCheck(dto);
		
		if (kakaoLogin == null) {
			service.kakaoInst(dto);
			
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
            session(dto, httpSession); 
			returnMap.put("rt", "success");
		} else {
			httpSession.setMaxInactiveInterval(60 * Constants.SESSION_MINUTE);
			
			session(kakaoLogin, httpSession);
			returnMap.put("rt", "success");
		}
		return returnMap;
	}
	 public void session(Member dto, HttpSession httpSession) {
	     httpSession.setAttribute("sessSeq", dto.getMemberSeq());    
	     httpSession.setAttribute("sessId", dto.getMemberID());
	     httpSession.setAttribute("sessName", dto.getMemberName());
	     httpSession.setAttribute("sessEmail", dto.getMemberEmail());
	 }
	
	@ResponseBody
	@RequestMapping(value = "member/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) throws Exception {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		httpSession.invalidate();
		returnMap.put("rt", "success");
		return returnMap;
	}
	
	@RequestMapping(value = "/memberView")
	public String userView(@ModelAttribute("vo") MemberVo vo, Model model, Member dto) throws Exception { 		
				
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		return "infra/store/memberUpdate"; 
	}
	
	@RequestMapping(value = "/memberUpdt")
	public String userUpdate(MemberVo vo, Model model, Member dto, RedirectAttributes redirectAttributes) throws Exception { 		
		service.update(dto);		
		vo.setMemberSeq(dto.getMemberSeq());
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/memberView"; 
	}
	
	@RequestMapping(value = "modify")
	public String MemberModify(Model model, MemberVo vo) throws Exception {
		
		List<Member> list = service.orderList(vo);
		model.addAttribute("list", list);
		
		return "infra/store/memberMod";
	}
	@RequestMapping(value = "basket")
	public String MemberBasket(Model model, MemberVo vo) throws Exception {
		List<Member> list = service.basketList(vo);
		model.addAttribute("list", list);
		
		return "infra/store/memberBasket";
	}
	
	@RequestMapping(value = "orderbuy")
	public String BasketBuy(Model model, MemberVo vo) throws Exception {
		List<Member> list = service.basketList(vo);
		model.addAttribute("list", list);
		
		return "infra/store/memberBasket";
	}
	
	@RequestMapping("/xdmin/excelDownload")
    public void excelDownload(MemberVo vo, HttpServletResponse httpServletResponse) throws Exception {
			List<Member> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"Seq", "이름", "아이디", "닉네임", "전화번호", "생년월일", "이메일", "등급", "등록일", "수정일"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}
			
//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);

	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getMemberSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberID());
	        	
	            cell = row.createCell(3);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberNick());
	        	
	            cell = row.createCell(4);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberMobile());
	        	
	            cell = row.createCell(5);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberDob());
	        	
	            cell = row.createCell(6);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getMemberEmail());

	            cell = row.createCell(7);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getMemberGrade());
	            
	            cell = row.createCell(8);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getMemberRegdate());
	            
	            cell = row.createCell(9);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getMemberUpdate());    
	            
	        }
	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		
    }
}
