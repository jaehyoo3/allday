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
			<input type="hidden" name='userCode' value="<c:out value="${item.userCode }"/>">
				<div class="container">
				<h3>코드관리</h3>
					<div class="row mb-3">
						<div class="col">
							<span>ID</span>
							<input class="form-control" type="text" name='userID' value="<c:out value="${item.userID }"/>">
			    		</div>
   				 		<div class="col">
							<span>비밀번호</span>
							<input class="form-control" type="text" name='userPW' value="<c:out value="${item.userPW }"/>">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>닉네임</span>
							<input class="form-control" type="text" name='userNick' value="<c:out value="${item.userNick }"/>">
			    		</div>
   				 		<div class="col">
							<span>이름</span>
							<input class="form-control" type="text" name='userName' value="<c:out value="${item.userName }"/>">
						</div>
					</div>
					<div class="row mb-3">
   				 		<div class="col">
							<span>성별</span>
							<select class="form-select">
								<option>사용</option>
								<option value='1' <c:if test="${userGender.yn eq 1 }">selected</c:if>>남자</option>
								<option value='2' <c:if test="${userGender.yn eq 2 }">selected</c:if>>여자</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>이메일</span>
							<input class="form-control" type="text" name='userEmail' value="<c:out value="${item.userEmail }"/>">
			    		</div>
   				 		<div class="col">
							<span>핸드폰</span>
							<input class="form-control" type="text" name='userPhone' value="<c:out value="${item.userPhone }"/>" >
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>등급</span>
							<select class="form-select">
								<option>사용</option>
								<option value='1' <c:if test="${userGrade.yn eq 1 }">selected</c:if>>브론즈</option>
								<option value='2' <c:if test="${userGrade.yn eq 2 }">selected</c:if>>실버</option>
								<option value='3' <c:if test="${userGrade.yn eq 3 }">selected</c:if>>골드</option>
								<option value='4' <c:if test="${userGrade.yn eq 4 }">selected</c:if>>다이아몬드</option>
							</select>
			    		</div>
   				 		<div class="col">
							<span>zip</span>
							<input class="form-control" type="text" id='zip' name='zip' value="<c:out value="${item.zip }"/>">
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<span>주소</span>
							<input class="form-control" type="text" name='addr1' id='addr1' value="<c:out value="${item.addr1 }"/>">
			    		</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>상세주소</span>
							<input class='form-control' type='text' id='addr3'>
							<input class="form-control" type="text" id='addr2' name='addr2' value="<c:out value="${item.addr2 }"/>">
			    		</div>
					</div>
				</div>
				<input type="text" id="sample6_postcode" name="zip" value="<c:out value="${item.zip }"/>" placeholder="우편번호">
				<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
				<input type="text" id="sample6_address" name='addr1' value="<c:out value="${item.addr1 }"/>" placeholder="주소"><br>
				<input type="text" id="sample6_detailAddress" name='addr1' value="<c:out value="${item.addr2 }"/>" placeholder="상세주소">
				<input type="text" id="sample6_extraAddress" name='addr2' value="<c:out value="${item.addr2 }"/>" placeholder="참고항목">
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
		
		<script>
	    var goUrlList = "/member/memberList"; 			/* #-> */
		var goUrlInst = "/member/memberInst"; 			/* #-> */
		var goUrlUpdt = "/member/memberUpdt";				/* #-> */
		var goUrlUele = "/code/codeUele";				/* #-> */
		var goUrlDele = "/code/codeDele";				/* #-> */
		
		var seq = $("input:hidden[name=userCode]");				/* #-> */
		
		var form = $("form[name=form]")

		$("#btnSave").on("click", function() {
			if(seq.val() == "0" || seq.val() == "") {
				form.attr("action", goUrlInst).submit();
			} else {
				form.attr("action", goUrlUpdt).submit();
			}
		});
		
	    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
	</script>
		
	</body>
</html>
