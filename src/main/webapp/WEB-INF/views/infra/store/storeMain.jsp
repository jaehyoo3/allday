<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/mainCss.css" rel="stylesheet" />
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
						<li class='b'><a href="#" onClick="location.href='login'"><i class="fa-solid fa-bag-shopping"></i></a></li>
						<li class='b'><a href="#" onClick="location.href='../member/memberMod.html'"><i class="fa-solid fa-user"></i></a></li>
						<li class='b'><div class="vr"></li>
						<li class='b'><a href="#">고객센터</a></li>
					</ul>
				</div>
			</div>
			<div class="navbar">
		        <a href="#" id="logo">
		            <img src="/resources/Images/img/logo2.png" height="60">
		        </a>
		        <ul id="menu">
		            <li><a href="#" onClick="location.href='../store/storeNew.html'"><b>New</b></a></li>
		            <li><a href="#"><b>Best</b></a></li>
		            <li><a href="#"><b>Outer</b></a></li>
		            <li><a href="#"><b>Top</b></a></li>
		            <li><a href="#"><b>Pants</b></a></li>
		            <li><a href="#"><b><div class="vr"></b></a></li>
		            <li><a href="#"><b><i class="fa-brands fa-instagram fa-xl"></i></b></a></li>
		        </ul>
			</div>
			<div id='ad'>
				<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="/resources/Images/img/bg1.jpg" class="d-block w-100">
				    </div>
				    <div class="carousel-item">
				      <img src="/resources/Images/img/bg2.jpg" class="d-block w-100">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div>
			</div>
			<div id='content'>
				<span style="font-size: 40px; font-weight: bold; color:purple;">BB:PICK</span><br>
				<p style="font-size: 24px;">이 달의 추천 제품</p>
				<hr>
				<div class='mainproduct'>
					<img src = '/resources/Images/img/mainimg.jpg'>
					<span style="font-weight: bold;">Apple T-shirt(IVORY WHITE)</span>
					<p style="text-align:right">> Preview</p> 
					<hr><br>
					<div class='left'>
						<img src='/resources/Images/img/lphoto.jpg'>
						<span style="font-weight: bold; font-size:18px;"> CALVIN KLEIN JEANS / J217960 YAF</span>
						<p style="text-align:right">> Preview</p> 
						<hr>
					</div>
					<div class='right'>
						<img src='/resources/Images/img/rphoto.jpg'>
						<span style="font-weight: bold;font-size:18px;">CALVIN KLEIN JEANS / J321612 BEH</span>
						<p style="text-align:right">> Preview</p> 
						<hr>
					</div>				
				</div>
			</div>
			<div id='bestcontent'>
					<div class='bastproduct'>
						<span style="font-size: 40px; font-weight: bold; color:purple;">BB:RANK</span><br>
						<p style="font-size: 24px;">이 달의 판매량</p>
						<section>
							<div class="container">
								<div class="card">
									<div class="content">
										<div class="imgBx">
											<img src="/resources/Images/img/best1.jpg">
										</div>
										<div class="contentBx">
											<h3>Logo TEE<br><span>￦59,000</span></h3>
										</div>
									</div>
									<ul class="sci">
										<li>
											<a href="#">Buy</a>
										</li>
									</ul>
								</div>
								<div class="card">
									<div class="content">
										<div class="imgBx">
											<img src="/resources/Images/img/best2.jpg">
										</div>
										<div class="contentBx">
											<h3>OverFit TEE<br><span>￦59,000</span></h3>
										</div>
									</div>
									<ul class="sci">
										<li>
											<a href="#">Buy</a>
										</li>
									</ul>
								</div>
								<div class="card">
									<div class="content">
										<div class="imgBx">
											<img src="/resources/Images/img/best3.jpg">
										</div>
										<div class="contentBx">
											<h3>IN LOVE TEE(WHITE)<br><span>￦28,900</span></h3>
										</div>
									</div>
									<ul class="sci">
										<li>
											<a href="#">Buy</a>
										</li>
									</ul>
								</div>
								<div class="card">
									<div class="content">
										<div class="imgBx">
											<img src="/resources/Images/img/best4.jpg">
										</div>
										<div class="contentBx">
											<h3>Logo Tee Black<br><span>￦28,900</span></h3>
										</div>
									</div>
									<ul class="sci">
										<li>
											<a href="#">Buy</a>
										</li>
									</ul>
								</div>
								<div class="card">
									<div class="content">
										<div class="imgBx">
											<img src="/resources/Images/img/best5.jpg">
										</div>
										<div class="contentBx">
											<h3>DAN TEE BLACK<br><span>￦99,900</span></h3>
										</div>
									</div>
									<ul class="sci">
										<li>
											<a href="#">Buy</a>
										</li>
									</ul>
								</div>
							</div>
						</section>
					</div>
			</div>
			<div id='poster'></div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
	</body>
</html>
