<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
		<link href="/resources/Images/memberFind.css" rel="stylesheet">
		</style>
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
			<h1>아이디/비밀번호 찾기</h1>
			<hr>
				<div class='left shadow p-5 mb-5 bg-body rounded'>
					<h6>아이디 찾기</h6>
					<hr>
					<span>아이디 찾을 방법을 선택해주세요.</span>
					<br><br><br>
					<div class="form-check">
					  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
					  <label class="form-check-label mb-2" for="flexRadioDefault1">가입한 이메일로 찾기</label>
					  <input class="form-control" type="text" placeholder="이메일을 입력해주세요">
					</div>
					<hr>
					<div class="form-check">
					  <input class="form-check-input mb-2" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
					  <label class="form-check-label mb-2" for="flexRadioDefault2"> 가입한 휴대번호로 찾기</label>
					<input class="form-control mb-2" type="text" placeholder="이름을 입력해주세요">
					<input class="form-control" type="text" placeholder="휴대전화(-를 제외하고 입력해주세요)" aria-label="default input example">
					  <hr>
					  	<div class="d-grid gap-2 col-12">
				<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80);" onclick="location='findID'">아이디 찾기</button>
				</div>
					</div>
				</div>
				<div class='right shadow p-5 mb-5 bg-body rounded'>
					<h6>비밀번호 찾기</h6>
					<hr>
					<span>비밀번호를 찾을 방법을 선택해주세요.</span>
										<br><br><br>
					<div class="form-check">
					  <input class="form-check-input mb-2" type="radio" name="flexRadioDefault" id="flexRadioDefault3">
					  <label class="form-check-label mb-2" for="flexRadioDefault3">가입한 이메일로 찾기</label>
					  <input class="form-control" type="text" placeholder="이메일을 입력해주세요">
					</div>
					<hr>
					<div class="form-check">
					  <input class="form-check-input mb-2" type="radio" name="flexRadioDefault" id="flexRadioDefault4">
					  <label class="form-check-label mb-2" for="flexRadioDefault4"> 가입한 휴대번호로 찾기</label>
					<input class="form-control mb-2" type="text" placeholder="이름을 입력해주세요">
					<input class="form-control" type="text" placeholder="휴대전화(-를 제외하고 입력해주세요)">
					 <hr>
					 	<div class="d-grid gap-2 col-12">
				<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80);" onclick="location='findPW'">비밀번호 찾기</button>
				</div>
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
