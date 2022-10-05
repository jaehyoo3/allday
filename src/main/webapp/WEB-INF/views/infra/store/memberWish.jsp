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
		<link href="/resources/Images/memberWishCss.css" rel="stylesheet" />
	</head>
	<body>
		<form metod='post'>
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			<div id='content'>
				<div class='modify'>
					<%@include file="../../infra/includeV1/modifyMenu.jsp"%>
					<div class='right'>
						<div class='boxx'>
							<div class='grade'>
							<h3><b>Normal_홍길동님 안녕하세요</b></h3>
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
							<h6>위시리스트</h6>
						<div class="products">
							<a href="#" onClick="location.href='product'"> 
								<img src="/resources/Images/img/knit.jpg"><br>
								<span class='title'>이비자 코스트 시트론 레트로 네츄럴 메쉬 니트</span>
								<p class="price">￦49,000</p>
							</a> 
							<a href="#" onClick="location.href='product'"> 
								<img src="/resources/Images/img/knit.jpg"><br>
								<span class='title'>이비자 코스트 시트론 레트로 네츄럴 메쉬 니트</span>
								<p class="price">￦49,000</p>
							</a> 
							<a href="#" onClick="location.href='product'"> 
								<img src="/resources/Images/img/knit.jpg"><br>
								<span class='title'>이비자 코스트 시트론 레트로 네츄럴 메쉬 니트</span>
								<p class="price">￦49,000</p>
							</a> 
						</div>
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
