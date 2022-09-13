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
		<link href="/resources/Images/memberMod.css" rel="stylesheet">
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
						<div class='boxx'>
							<div class='grade'>
							<h3><b><span style='color:purple'>Normal</span>_홍길동님 안녕하세요</b></h3>
							<p>구매금액: 10,000,000원 달성시<br>Bronze로 승급 됩니다.</p>
						</div>
						<div class="point">
							<div class="d-flex" style="height: 150px;">
  								<div class="vr"></div>
							</div>
						</div>
							<div class="point2">
								<p>포인트</p>
								<p style="font-size:50px;"><b>0P</b></p>
							</div>
						</div>
						<div class='listt'>
							<h6>주문조회</h6>
							<div class='storeorder'>
							<a href='#'>
								<div class='storeimg'><img src='/resources/Images/img/knit.jpg'> </div>
								<div class='storeinfor'>
									<span class='title'>LOGO TEE | TOP</span><br>
									<span class='option'>01. RED</span><br>
									<span class='price'>￦29,000</span>
								</div>
								<div class='situation'>
								입금대기</div>
							</div>
							</a>
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
