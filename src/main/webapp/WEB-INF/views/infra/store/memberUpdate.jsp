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
				<div class='modify'>
					<div class='left'>
						<ul class="a">
							<li><a href="#" onClick="location.href='basket'">장바구니</a></li>
							<li><a href="#" onclick="location.href='modify'">주문조회</a></li>
							<li><a href="#" onClick="location.href='wish'">위시리스트</a></li>
							<li><a href="#" onClick="location.href='update'">개인정보수정</a></li>
							<li><a href="#">회원탈퇴</a></li>
						</ul>
					</div>
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
								<input class="form-control" type="text" value="wowdmin123" disabled readonly>
								<input class="form-control" type="password" placeholder="기존 비밀번호 입력">
								<input type="password" class="form-control" placeholder="비밀번호를 변경 하는 경우 입력 하세요">
								<input type="password" class="form-control" placeholder=" 비밀번호 확인">
								<br>
								<br>
								<lable>이름</lable>
								<input class="form-control" type="text" value="홍길동" disabled readonly>
								<br>
								<lable>성별</lable>
								<div class="d-flex mb-1">
									<div class="p-1">
										<input class="form-check-input" name="gender" type="radio" id="man"checked>
										<label for="man">남자</label>
									</div>
									<div class="p-1 mx-auto">
										<input class="form-check-input" name="gender" id="girl" type="radio">
										<label for="girl">여자</label>
									</div>
								</div><br>
								<lable>연락처</lable>
								<input class="form-control" type="text" value="010-1234-5678" disabled readonly>
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
									<input class="form-control" type="text" value="14759">
									<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80);">검색하기</button>
								</div>
								<input class="form-control" type="text" value="인천광역시 부평구 어디로 999번길 10(부평동, 동아아파트)">
								<input class="form-control" type="text" value="999동 9999호">	
								<br>
								<label>생년월일</label>	
								<div class="input-group flex-nowrap" >
									<input class="form-control" type="text" value="1997" style="text-align:center;" disabled readonly>
									<input class="form-control" type="text" value="08" style="text-align:center;" disabled readonly>
									<input class="form-control" type="text" value="18" style="text-align:center;" disabled readonly>
								</div>
								<br>
								<label>이메일/혜택 소식 수신 여부</label>
								<div class="form-check">
								  <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
								  <label class="form-check-label" for="flexCheckDefault">E-Mail 수신 동의
								  </label>
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
	</body>
</html>
