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
						<input type="text" class="form-control mb-2">
					</div>
					<div class="p-1">
						<button type="button" class="btn text-white fw-bold" style="background-color:rgb(44, 62, 80);">주소검색</button>
					</div>
				</div>
				<input type="text" class="form-control mb-2">
				<input type="text" class="form-control mb-5">
				
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
	</body>
</html>
