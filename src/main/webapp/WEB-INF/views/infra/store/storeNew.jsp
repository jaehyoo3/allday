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
		<link href="/resources/Images/storeMenuCss.css" rel="stylesheet" />
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
				<div class='newinfo'>
					<h1>New Arrivals</h1>
					<p>22 Summer 새로운 상품들을 만나보세요 ! </p>
					<br><br><br>
					<hr>
				</div>
			</div>
			<div class="products">
				<a href="#" onClick="location.href='product'"> 
					<img src="/resources/Images/img/knit.jpg"><br>
					<span>이비자 코스트 시트론 레트로 네츄럴 메쉬 니트</span> <span class='new'>New</span>
					<p class="price">￦49,000</p>
				</a> 
				<a href="#"> 
					<img src="/resources/Images/img/best2.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦49,000</p>
				</a>
				 <a href="#"> 
					 <img src="/resources/Images/img/best3.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
				 <a href="#">
				 	<img src="/resources/Images/img/best4.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a> 
				<a href="#"> 
					<img src="/resources/Images/img/best5.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a> 
				<a href="#"> 
					<img src="/resources/Images/img//best1.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a> 
				<a href="#">
					 <img src="/resources/Images/img/lphoto.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
				 <a href="#"> 
					 <img src="/resources/Images/img/rphoto.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a> 
				<a href="#">
				 	<img src="/resources/Images/img/mainimg.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
	</body>
</html>
