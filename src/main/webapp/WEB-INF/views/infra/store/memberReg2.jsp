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
		<form>
			<div id='header'>
				<div class='menu'>
					<ul class='ul'>
						<li class='b'>
							<div class="search-box">
					    		<a href="#"><button class="btn-search"><i class="fas fa-search"></i></button></a>
					   			<input type="text" class="input-search" placeholder="Search">
					  		</div>
						</li>
						<li class='b'><div class="vr"></li>
						<li class='b'><a href="#" onClick="location.href='basket'"><i class="fa-solid fa-bag-shopping"></i></a></li>
						<li class='b'><a href="#" onClick="location.href='modify'"><i class="fa-solid fa-user"></i></a></li>
						<li class='b'><a href="#" onClick="location.href='login'"><i class="fa-solid fa-right-to-bracket"></i></a></li>
						<li class='b'><div class="vr"></li>
						<li class='b'><a href="#">고객센터</a></li>
					</ul>
				</div>
			</div>
			<div class="navbar">
		        <a href="#" id="logo">
		            <img src="/resources/Images/img/logo2.png" height="60" onClick="location.href='/'">
		        </a>
		        <ul id="menu">
		            <li><a href="#" onClick="location.href='storeNew'"><b>New</b></a></li>
		            <li><a href="#"><b>Best</b></a></li>
		            <li><a href="#"><b>Outer</b></a></li>
		            <li><a href="#"><b>Top</b></a></li>
		            <li><a href="#"><b>Pants</b></a></li>
		            <li><a href="#"><b><div class="vr"></b></a></li>
		            <li><a href="#"><b><i class="fa-brands fa-instagram fa-xl"></i></b></a></li>
		        </ul>
	  		</div>
			<div id='content'>
				<h1>회원가입 정보입력</h1>
				<div class="d-flex mb-1">
					<div class="p-1 ms-auto">
						<span style="color:rgb(44, 62, 80);">약관동의 > <b>회원가입 정보입력</b> > 가입완료</span>
					</div>	
				</div>
				<hr>
				<center>
					<input type=file name='fileup1' accept='image/*' style='display: none;'>
					<div class="box" style="background: #BDBDBD;">
						<img class="profile" src='https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png' name='find' id='find' border='0' onclick='document.all.fileup1.click(); document.all.fileup2.value=document.all.fileup1.value' style="cursor:pointer;">
					</div>
					<input type='text' name='file2' id='file2' style='display:none;'> 
					<br>
				</center>
				<input type="text" class="form-control mb-2" id="userid" placeholder="아이디">
				<input type="password" class="form-control mb-2" id="inputPassword" placeholder="비밀번호">
				<input type="password" class="form-control mb-2" id="inputPassword" placeholder="비밀번호 확인">
				<span>닉네임</span>
				<input type="text" class="form-control mb-2" id="nickname" placeholder="닉네임">
				<span>이름</span>
				<input type="text" class="form-control mb-2" id="name" placeholder="이름">
				<span>생년월일</span>
				<div class="input-group flex-nowrap">
						<input type="number" class="form-control mb-2" id="usernumber" name="usernumber"min="1900" max="2022" value="2022" style="width:200px;">
						<input type="number" class="form-control mb-2" id="usernumber" name="usernumber"min="1" max="12" value="7" style="width:200px;">
						<input type="number" class="form-control mb-2" id="usernumber" name="usernumber"min="1" max="31" value="26" style="width:200px;">
				</div>
				<span>성별</span>
				<div class="d-flex mb-1">
					<div class="p-1">
					<input class="form-check-input" name="gender" type="radio" id="man"checked>
					<label for="man">남자</label>
					</div>
					<div class="p-1 mx-auto">
					<input class="form-check-input" name="gender" id="girl" type="radio">
					<label for="girl">여자</label>
					</div>
				</div>
				<span>이메일</span>
				<div class="row">
					<div class="col">
						<input type="text" class="form-control mb-2" id="userid" placeholder="이메일">
					</div>
					<div class="col">
     					<select class="form-select">
							<option selected>주소</option>
							<option value="1">naver.com</option>
							<option value="2">gmail.com</option>
							<option value="3">daum.net</option>
							<option value="4">기타</option>
						</select>
					</div>
				<span>연락처</span
				<div class="row">
					<div class="col">
						<select class="form-select">
							<option value="1">010</option>
							<option value="2">011</option>
							<option value="3">012</option>
							<option value="4">070</option>
						</select>
					</div>
					<div class="col">
							<input type="text" class="form-control mb-2">
					</div>
					<div class="col">
						<input type="text" class="form-control mb-2">
					</div>
				</div>
				<span>주소</span>
				<div class="d-flex mb-1">
					<div class="p-0">
						<input type="text" id="postcode" class="form-control mb-2" disabled>
					</div>
					<div class="p-1">
						<button type="button" class="btn text-white fw-bold" onclick="DaumPostcode()" style="background-color:rgb(44, 62, 80);">주소검색</button>
					</div>
				</div>
				<input type="text" id="address" class="form-control mb-2">
				<input type="text" id="detailAddres" class="form-control mb-2">
				
				<div class="row">
					<div class="col">
						<input type="text" id="result_x" class="form-control mb-2" disabled>
					</div>
					<div class="col">
						<input type="text" id="result_y" class="form-control mb-2" disabled>
					</div>
				</div>
				<div class="d-grid gap-2 col-12">
					<button type="button" class="btn text-white fw-bold" onClick="location.href='reg3'" style="background-color:rgb(44, 62, 80);">가입하기</button>
					</div>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
		
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3d9122ea8fc388f07cd56d7692121430&libraries=services"></script>
		
		<script>

		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		
		    function DaumPostcode() {
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
		                        addr = '' + addr + ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		              		}

			            geocoder.addressSearch(data.address, function(results, status) {
			            		
			                // 정상적으로 검색이 완료됐으면
				                if (status === daum.maps.services.Status.OK) {
					                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					                document.getElementById('postcode').value = data.zonecode;
					                document.getElementById('address').value = addr;
					                document.getElementById('detailAddres').focus();
				                    document.getElementById("result_x").value = results[0].x;
				                    document.getElementById("result_y").value = results[0].y;
			                	}
			           	 })
		            }
		        }).open();
		    }
		</script>
	</body>
</html>
