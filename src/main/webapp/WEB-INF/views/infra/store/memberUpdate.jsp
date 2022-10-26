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
   		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
		<link href="/resources/Images/css/memberUpdateCss.css" rel="stylesheet">
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
								<lable>아이디</lable>
								<input class="form-control" type="text" name="memberID" value="<c:out value="${sessId}"/>" readonly>
								<lable>닉네임</lable>
								<input class="form-control" type="text" name="memberNick" value="<c:out value="${item.memberNick}"/>" readonly>
								<label>등급</label>
								<input class="form-control" type="text" name="memberGrade" value="<c:out value="${item.memberGrade}"/>" readonly>
 								<input class="form-control" type="hidden" name="memberPW" value="<c:out value="${item.memberPW}"/>" placeholder="기존 비밀번호 입력" >
<!--								<input type="password" class="form-control" placeholder="비밀번호를 변경 하는 경우 입력 하세요">
								<input type="password" class="form-control" placeholder=" 비밀번호 확인"> -->
								<br>
								<button type="button" id='pwChange' class='btn btn-primary'>비밀번호 변경</button>
								
								<div class="modal fade" id="modalConfirm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h1 class="modal-title fs-5" id="exampleModalLabel">비밀번호 변경</h1>
								        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
								      </div>
								      <div class="modal-body">
								        비밀번호 확인 <input type="text" class='form-control'>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
								        <button type="button" class="btn btn-primary">Save changes</button>
								      </div>
								    </div>
								  </div>
								</div>
								<br>
								<lable>이름</lable>
								<input class="form-control" type="text" name="memberName" value="<c:out value="${item.memberName}" />"readonly>
								<br>
								<lable>성별</lable>
								<div class="d-flex mb-1">
									<div class="p-1">
										<input class="form-check-input" name="memberGender" type="radio" id="man" value='1' <c:if test="${item.memberGender eq 1 }">checked</c:if>>
										<label for="man">남자</label>
									</div>
									<div class="p-1 mx-auto">
										<input class="form-check-input" name="memberGender" id="girl" value='2' type="radio"<c:if test="${item.memberGender eq 2 }">checked</c:if>>
										<label for="girl">여자</label>
									</div>
								</div><br>
								<lable>연락처</lable>
								<input class="form-control" type="text" name="memberMobile" value="<c:out value="${item.memberMobile}"/>" readonly>
								<br>
								<lable>이메일</lable>
								<div class="input-group flex-nowrap">
									<input class="form-control" type="text" name="memberEmail" value="<c:out value="${item.memberEmail}"/>">
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
									<input class="form-control" type="text" name="memberDob" value="<c:out value="${item.memberDob }"/>" style="text-align:center;" readonly>
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
						<button class="btn text-white fw-bold" type="button" id="btnUpdt" style="background-color:rgb(44, 62, 80); width:15%;">수정하기</button>
					</div>
					
				</div>
			</div>
			<!-- footer s  -->
				<%@include file="../../infra/includeV1/footer.jsp"%>
			<!-- footer e --> 
		</form>
		<!-- jsLink s  -->
			<%@include file="../../infra/includeV1/jsLink.jsp"%>
		<!-- jsLink e --> 
	    
		<script type="text/javascript">
		var goUrlView = "/memberView";
		var goUrlUpdt = "/memberUpdt";
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=memberSeq]");
		
		$("#btnUpdt").on("click", function(){
			form.attr("action", goUrlUpdt).submit();
		});
			
        if(document.getElementById("memberAd").checked) {
    	    document.getElementById("memberAd_hidden").disabled = true;
    	}
    	    
		goForm = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlView).submit();
		}

		</script>
	</body>
</html>
