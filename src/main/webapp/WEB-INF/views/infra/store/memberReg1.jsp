<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>

		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/memberReg.css" rel="stylesheet">
	</head>
	
	<body>
		<form id='reg1' name='form' method='post'>
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
		<div id='content'>
			<h1>이용약관</h1>
			<span>BLUEBEE가 제공하는 많은 쇼핑 혜택들 누리 실 수 있습니다!</span>
			<br><br><br>
			<hr>
			<br>
			<div class="d-flex mb-1">
				<div class="p-1">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="flexCheckIndeterminate" onclick="selectAll(this)">
						<label class="form-check-label" for="flexCheckIndeterminate">
							이용약관, 개인정보 수집 및 이용에 모두 동의합니다.
						</label>
					</div>
				</div>
			</div>
			<div class="d-flex mb-1">
				<div class="p-1">
					<div class="form-check">
						<input class="form-check-input" type="checkbox" id="usecheck1" name='checking'>
						<label class="form-check-label" for="ma1">
							이용약관 동의 (필수)
						</label>
					</div>
				</div>
				<div class="p-1 ms-auto">
					<span style="color:rgb(44, 62, 80);"><b>약관동의</b> > 회원가입 정보입력 > 가입완료</span>
			</div>	
		</div>
			<div class="mb-3">
	  			<textarea class="form-control" id="exampleFormControlTextarea1" rows="10"style="resize: none;">ddd</textarea>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value="" id="usecheck2" name='checking'>
				<label class="form-check-label" for="222">
					개인정보 수집 및 이용 동의 (필수)
				</label>
			</div>
			<div class="mb-3">
	  			<textarea class="form-control" id="exampleFormControlTextarea1" rows="10"style="resize: none;">ddd</textarea>
			</div>
			<span>마케팅 활용 동의 및 광고 수신 동의</span>
				<div class="mb-3">
	  				<textarea class="form-control" id="exampleFormControlTextarea1" rows="10"style="resize: none;">ddd</textarea>
				</div>
			<div class="form-check">
				<input class="form-check-input" type="checkbox" value='1' id="memberAd" name='memberAd'>
				<input type="hidden" name="memberAd" value='0' id="memberAd_hidden"/>
				<label class="form-check-label" for="memberAd">
					E-Mail 수신 동의 (선택)
				</label>
			</div>
			<center>
				<button type="button" class="btn btn-secondary">취소</button> 
				<button type="button" class="btn text-white fw-bold" id='nextBtn' style="background-color:rgb(44, 62, 80);">가입하기</button>
			</center>
			</div> 
			<div id='footer'>
				   	<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		
		<script type="text/javascript">
		var memberReg2 = '/reg2';
		var form = $("form[name=form]")
		
			function selectAll(selectAll)  {
				const checkboxes = document.getElementsByName('checking');
				checkboxes.forEach((checkbox) => {
					checkbox.checked = selectAll.checked;
				})
			}
			<!-- 유효성 검사 -->
	           $("#nextBtn").click(function(){    
	                if($("#usecheck1").is(":checked") == false){
	                    alert("필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
	                    $("#usecheck1").focus();
	                    return;
	                }else if($("#usecheck2").is(":checked") == false){
	                    alert("필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다..");
	                    $("#usecheck2").focus();
	                    return;
	                }else{
	                	form.attr("action", memberReg2).submit();
	                }
	            });
	           
	          <!-- 광고선택 -->
	          if(document.getElementById("memberAd").checked) {
	        	    document.getElementById("memberAd_hidden").disabled = true;
	        	}

			</script>
	</body>
</html>