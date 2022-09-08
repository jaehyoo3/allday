<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<html>
	<head>
		<link href="/resources/Images/loginCss.css" rel="stylesheet" />
		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	</head>
	
	<body>
		<form>
			<div id='header'>
				<div class='menu'>
					<ul class='ul'>
						<li class='b'><i class="fa-solid fa-magnifying-glass"></i></li>
						<li class='b'><div class="vr"></li>
						<li class='b'><i class="fa-solid fa-bag-shopping"></i></li>
						<li class='b'><i class="fa-solid fa-user"></i></li>
						<li class='b'><div class="vr"></li>
						<li class='b'>고객센터</li>
					</ul>
				</div>
			</div>
			<div class="navbar">
		        <a href="#" id="logo">
		            <img src="/resources/Images/img/logo2.png" height="60" onClick="location.href='/'">
		        </a>
		        <ul id="menu">
		            <li><a href="#"><b>New</b></a></li>
		            <li><a href="#"><b>Best</b></a></li>
		            <li><a href="#"><b>Outer</b></a></li>
		            <li><a href="#"><b>Top</b></a></li>
		            <li><a href="#"><b>Pants</b></a></li>
		            <li><a href="#"><b><div class="vr"></b></a></li>
		            <li><a href="#"><b><i class="fa-brands fa-instagram fa-xl"></i></b></a></li>
		        </ul>
	  		</div>
		<div id='content'>
			<div class='login'>
				<h3><strong>로그인</strong></h3>
				<span>가입하신 아이디로 로그인하세요.</span>
				<br>
				<hr>
				<br>
				<input type="text" class="form-control" id="exampleFormControlInput1" placeholder="아이디">
				<input type="password" class="form-control" id="inputPassword" placeholder="비밀번호">
				<div class="d-flex mb-1">
					<div class="p-1">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="flexCheckIndeterminate">
							<label class="form-check-label" for="flexCheckIndeterminate">
								로그인상태유지
							</label>
						</div>
					</div>
					<div class="p-1 ms-auto"><span><a href="#">아이디·비밀번호 찾기</a></span></div>
				</div>
				<br>
				<div class="d-grid gap-2">
					<button type="button" class="btn text-white fw-bold" style="background-color:rgb(44, 62, 80);">로그인</button>
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
				<br><button type="button" class="btn text-white fw-bold" style="background-color:rgb(44, 62, 80);" onClick="location.href='./memberReg1.html'">가입하기</button>
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
