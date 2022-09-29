	<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/LoginCss.css" rel="stylesheet">
	</head>
	
	<body>
		<form method="post">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
		<div id='content'>
			<div class='login'>
				<h3><strong>로그인</strong></h3>
				<span>가입하신 아이디로 로그인하세요.</span>
				<br>
				<hr>
				<br>
				<input type="text" class="form-control" id="memberID" name='memberID' placeholder="아이디">
				<input type="password" class="form-control" id="memberPW" name='memberPW' placeholder="비밀번호">
				<div class="d-flex mb-1">
					<div class="p-1">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">
							<label class="form-check-label" for="flexCheckIndeterminate">
								로그인상태유지
							</label>
						</div>
					</div>
					<div class="p-1 ms-auto"><span><a href="find" >아이디·비밀번호 찾기</a></span></div>
				</div>
				<br>
				<div class="d-grid gap-2">
					<button type="button" class="btn text-white fw-bold" id='btnLogin' onkeyup="enterkey()" name='btnLogin' style="background-color:rgb(44, 62, 80);">로그인</button>
				</div>
				<br>
				<div class="hr-sect"> 또는 </div>
				<br>
				<div class="d-grid gap-2 col-12">
					<button class="btn text-white fw-bold" type="button" style="background-color:#2DB400;">네이버로 시작하기</button>
					<button class="btn text-white fw-bold" type="button" style="background-color:#FEE500;">카카오로 시작하기</button>
				</div>
			</div>
				<div class='join'>
				<h3 ><strong>BLUE BEE 회원가입</strong></h3>
				<span>BLUEBEE가 제공하는 많은 쇼핑 혜택들 누리 실 수 있습니다.</span><br>
				<br><button type="button" class="btn text-white fw-bold" style="background-color:rgb(44, 62, 80);" onClick="location.href='reg1'">가입하기</button>
			</div>
		</div>
		<div id='footer'>
			   	<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
		</div>
		</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
				
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script>
			$("#btnLogin").on("click", function(){
				
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					,url: "/member/loginProc"
					,data : { "memberID" : $("#memberID").val(), "memberPW" : $("#memberPW").val()}
					,success: function(response) {
						if(response.rt == "success") {
							location.href = "/";
						} else {
							alert("회원없음");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				});
			});

			function enterkey() {
		        if (window.event.keyCode == 13) {
		             $("#btnLogin").click();
		        }
		}
		</script>
	</body>
	

</html>
