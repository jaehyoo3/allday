<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>WoW</title>
		<link href="/resources/Images/css/bootstrap.min.css" rel="stylesheet"> 
    	<link href="/resources/Images/ccReg.css" rel="stylesheet" />
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
		<form method='post' name='form'>
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="/resources/Images/logo2.png" height="60"
					onClick="location.href='./wowMain.html'">
				</a>
				<ul id="menu">
					<li><a href="#" onClick="location.href='./wowProduct.html'"><b>상품관리</b></a></li>
					<li><a href="#"><b>회원관리</b></a></li>
					<li><a href="#"><b>문의관리</b></a></li>
					<li><a href="#"><b>배송관리</b></a></li>
				</ul>
			</div>
			<div id='content'>
			<input type="hidden" name='memberSeq' value="<c:out value="${item.memberSeq }"/>">
			<input type="hidden" id="checkIdNy" name="checkIdNy"> 
				<div class="container">
				<h3>코드관리</h3>
					<div class="row mb-3">
						<div class="col">
							<span>ID</span>
							<input class="form-control" type="text" id='memberID' name='memberID' value="<c:out value="${item.memberID }"/>">
							<div class='invalid-feedback' id='idFeedback'></div>
			    		</div>
   				 		<div class="col">
							<span>비밀번호</span>
							<input class="form-control" type="text" name='memberPW' value="<c:out value="${item.memberPW }"/>">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>닉네임</span>
							<input class="form-control" type="text" name='memberNick' value="<c:out value="${item.memberNick }"/>">
			    		</div>
   				 		<div class="col">
							<span>이름</span>
							<input class="form-control" type="text" name='memberName' value="<c:out value="${item.memberName }"/>">
						</div>
					</div>
					<div class="row mb-3">
   				 		<div class="col">
							<span>성별</span>
							<select class="form-select" name="memberGender">
								<option>사용</option>
								<option value='1' <c:if test="${item.memberGender eq 1 }">selected</c:if>>남자</option>
								<option value='2' <c:if test="${item.memberGender eq 2 }">selected</c:if>>여자</option>
								<option value='3' <c:if test="${item.memberGender eq 3 }">selected</c:if>>기타</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>이메일</span>
							<input class="form-control" type="text" name='memberEmail' value="<c:out value="${item.memberEmail }"/>">
			    		</div>
   				 		<div class="col">
							<span>핸드폰</span>
							<input class="form-control" type="text" name='memberMobile' value="<c:out value="${item.memberMobile }"/>" >
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>등급</span>
							<select class="form-select" name="memberGrade">
								<option>사용</option>
								<option value='1' <c:if test="${item.memberGrade eq 1 }">selected</c:if>>브론즈</option>
								<option value='2' <c:if test="${item.memberGrade eq 2 }">selected</c:if>>실버</option>
								<option value='3' <c:if test="${item.memberGrade eq 3 }">selected</c:if>>골드</option>
								<option value='4' <c:if test="${item.memberGrade eq 4 }">selected</c:if>>다이아몬드</option>
							</select>
			    		</div>
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#ban_del"><i class="fa-solid fa-list"></i></button></div>
					<div class="p-1  ms-auto"><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ban_del2"><i class="fa-solid fa-x"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1"><button type="button" name='btnSave' id='btnSave' class="btn btn-success"><i class="fa-solid fa-bookmark"></i></button></div>
					<input type='submit'>
				</div>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3d9122ea8fc388f07cd56d7692121430&libraries=services"></script>
		
		<script>
	    var goUrlList = "/member/memberList"; 			/* #-> */
		var goUrlInst = "/member/memberInst"; 			/* #-> */
		var goUrlUpdt = "/member/memberUpdt";				/* #-> */
		var goUrlUele = "/code/codeUele";				/* #-> */
		var goUrlDele = "/code/codeDele";				/* #-> */
		
		var seq = $("input:hidden[name=memberSeq]");				/* #-> */
		
		var form = $("form[name=form]")

		$("#btnSave").on("click", function() {
			if(seq.val() == "0" || seq.val() == "") {
				form.attr("action", goUrlInst).submit();
			} else {
				form.attr("action", goUrlUpdt).submit();
			}
		});
		
		$("#memberID").on("focusout", function(){
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/xdmin/checkId"
					/* ,data : $("#formLogin").serialize() */
					,data : { "memberID" : $("#memberID").val() }
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("memberID").classList.remove('is-invalid');
							document.getElementById("memberID").classList.add('is-valid');
		
							document.getElementById("idFeedback").classList.remove('invalid-feedback');
							document.getElementById("idFeedback").classList.add('valid-feedback');
							document.getElementById("idFeedback").innerText = "사용 가능 합니다.";
							
							document.getElementById("checkIdNy").value = 1;
							
						} else {
							document.getElementById("memberID").classList.remove('is-valid');
							document.getElementById("memberID").classList.add('is-invalid');
							
							document.getElementById("idFeedback").classList.remove('valid-feedback');
							document.getElementById("idFeedback").classList.add('invalid-feedback');
							document.getElementById("idFeedback").innerText = "사용 불가능 합니다";
							
							document.getElementById("checkIdNy").value = 0;
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					} 
				});
			});

		  	    
	</script>
		
	</body>
</html>
