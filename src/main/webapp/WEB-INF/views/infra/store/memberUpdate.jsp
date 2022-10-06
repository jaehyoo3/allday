<!<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<html>
	<head>
		<meta charset='uTF-8'> 
		<meta name ='viewport' content='width=device-width, initial-scaLe=1.0'>
		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/memberUpdateCss.css" rel="stylesheet">
	</head>
	
	<body>
		<form name="form" method="post">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			<div id='content'>
				<div class='modify'>
					<%@include file="../../infra/includeV1/modifyMenu.jsp"%>
					<div class='right'>
						<h1>개인정보수정</h1>
						<br>
						<div class='boxx shadow p-3 mb-5 bg-body rounded'>
							<div class='boxupdate'>
								<input type=file name='fileup1' accept='image/*' style='display: none;'>
								<div class="box" style="background: #BDBDBD;">
									<img class="profile" src='https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png' name='find' id='find' border='0' onclick='document.all.fileup1.click(); document.all.fileup2.value=document.all.fileup1.value' style="cursor:pointer;">
								</div>
								<input type='text' name='file2' id='file2' style='display:none;'> 
								<br>
								아이디
								<input class="form-control" type="text" value="<c:out value="${sessId}"/>" readonly>
								닉네임
								<input class="form-control" type="text" value="<c:out value="${item.memberNick}"/>" readonly>
<!-- 							<input class="form-control" type="password" placeholder="기존 비밀번호 입력">
								<input type="password" class="form-control" placeholder="비밀번호를 변경 하는 경우 입력 하세요">
								<input type="password" class="form-control" placeholder=" 비밀번호 확인"> -->
								<button class='btn'>비밀번호 변경하기</button>
								<br>
								<br>
								<lable>이름</lable>
								<input class="form-control" type="text" value="<c:out value="${item.memberName}" />" disabled readonly>
								<br>
								<lable>성별</lable>
								<div class="d-flex mb-1">
									<div class="p-1">
										<input class="form-check-input" name="gender" type="radio" id="man" <c:if test="${item.memberGender eq 1 }">checked</c:if>>
										<label for="man">남자</label>
									</div>
									<div class="p-1 mx-auto">
										<input class="form-check-input" name="gender" id="girl" type="radio"<c:if test="${item.memberGender eq 2 }">checked</c:if>>
										<label for="girl">여자</label>
									</div>
								</div><br>
								<lable>연락처</lable>
								<input class="form-control" type="text" value="<c:out value="${item.memberMobile}"/>" readonly>
								<br>
								<lable>이메일</lable>
								<div class="input-group flex-nowrap">
									<input class="form-control w-50" type="text" value="wowdmin123">
									<span class="input-group-text" id="addon-wrapping">@</span>
									<select class="form-select w-50">
									  <option selected>naver.com</option>
									  <option value="1">daum.net</option>
									  <option value="2">gmail.com</option>
									</select>
								</div>
								<br>
								<label>주소</label>		
								<div class="input-group flex-nowrap" style="width:40%">	
									<input class="form-control" type="text" value="<c:out value="${item.zipcode }" />">
									<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80);">검색하기</button>
								</div>
								<input class="form-control" type="text" value="<c:out value="${item.addr1 }" />">
								<input class="form-control" type="text" value="<c:out value="${item.addr2 }" />">	
								<br>
								<label>생년월일</label>	
								<div class="input-group flex-nowrap" >
									<input class="form-control" type="text" value="<c:out value="${item.memberDob }"/>" style="text-align:center;" disabled readonly>
								</div>
								<br>
								<label>이메일/혜택 소식 수신 여부</label>
								<div class="form-check">
								  <input class="form-check-input" type="checkbox" value='1' id="memberAd" name='memberAd' <c:if test="${item.memberAd eq 1 }">checked</c:if>>
								<input type="hidden" name="memberAd" value='0' id="memberAd_hidden"/>
								  <label class="form-check-label" for="flexCheckDefault">E-Mail 수신 동의</label>
								</div>		
							</div>
						</div>
						<br>
						<button class="btn text-white fw-bold" type="button" style="background-color:rgb(127, 127, 127); width:15%;">취소</button>
						<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80); width:15%;">수정하기</button>
					</div>
					
				</div>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
	    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script type="text/javascript">
		var goUrlView = "/memberView";
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=memberSeq]");
		
        if(document.getElementById("memberAd").checked) {
    	    document.getElementById("memberAd_hidden").disabled = true;
    	    
		goForm = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlView).submit();
		}
		</script>
	</body>
</html>
