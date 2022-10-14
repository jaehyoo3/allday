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
		<form name='form' method="post">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
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
			<!-- footer s  -->
				<%@include file="../../infra/includeV1/footer.jsp"%>
			<!-- footer e --> 
		</form>
		<!-- jsLink s  -->
			<%@include file="../../infra/includeV1/jsLink.jsp"%>
		<!-- jsLink e --> 
	
	</body>
</html>
