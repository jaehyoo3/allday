<!<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>

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
		<link href="/resources/Images/memberBasketCss.css" rel="stylesheet">
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
		            <li><a href="#" onClick="storeNew"><b>New</b></a></li>
		            <li><a href="#"><b>Best</b></a></li>
		            <li><a href="#"><b>Outer</b></a></li>
		            <li><a href="#"><b>Top</b></a></li>
		            <li><a href="#"><b>Pants</b></a></li>
		            <li><a href="#"><b><div class="vr"></b></a></li>
		            <li><a href="#"><b><i class="fa-brands fa-instagram fa-xl"></i></b></a></li>
		        </ul>
	  		</div>
			<div id='content'>
				<h4>장바구니</h4><br>
				<table style="width:100%">
					<thead>
						<tr>
							<td style="width:3%;"><input type="checkbox"></td>
							<td style="width: 50%;">상품정보</td>
							<td style="width: 15%">수량</td>
							<td style="width: 15%">주문금액</td>
							<td style="width: 10%">배송정보</td>	
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox"></td>
							<td>
								<div class='left'><img src='/resources/Images/img/knit.jpg' style="width:50%;"></div>
								<div class='right'><p>이비자 코스트 시트론 레트로 네츄럴 메쉬 니트 | TOP</p>
								<div class='option'>Green / Midium - 95</div></div>
							</td>
							<td>
								<p>1</p>
								<button class='btn text-black btn-sm btn-outline-dark' style='background-color:white;'>옵션/수량변경</button>
							</td>
							<td>
								<p class='bold'>￦49,000</p>
									<button class='btn text-white fw-bold btn-sm' style='background-color:rgb(44, 62, 80);'>바로구매</button>
							</td>
							<td>
								<p class='bold'>무료</p>
								<p>택배</p>
							</td>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td>
								<div class='left'><img src='/resources/Images/img/knit.jpg' style="width:50%;"></div>
								<div class='right'><p>이비자 코스트 시트론 레트로 네츄럴 메쉬 니트 | TOP</p>
								<div class='option'>Green / Large - 100</div></div>
							</td>
							<td>
								<p>1</p>
								<button class='btn text-black btn-sm btn-outline-dark' style='background-color:white;'>옵션/수량변경</button>
							</td>
							<td>
								<p class='bold'>￦49,000</p>
								<button class='btn text-white fw-bold btn-sm' style='background-color:rgb(44, 62, 80);'>바로구매</button>
							</td>
							<td>
								<p class='bold'>무료</p>
								<p>택배</p>
							</td>
						</tr>
					</tbody>
				</table>
				<button class='btn text-black btn-sm btn-outline-dark' style='background-color:white;'>선택상품 삭제</button>
				<button class='btn text-black btn-sm btn-outline-dark' style='background-color:white;'>품절상품 삭제</button>
				<br><br>
				
				<div class='buytheway'>
					<table style="width:100%">
						<thead>
							<tr>
								<td>총 주문 상품 2개</td>
							</tr>
						</thead>
						<tbody>
							<tr>
							<td> <span>￦98,000 + 무료 = </span><span>￦98,000</span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class='buttons'>
					<button class='btn w-50 text-white fw-bold' style='background-color:rgb(44, 62, 80);'>주문하기</button>
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
