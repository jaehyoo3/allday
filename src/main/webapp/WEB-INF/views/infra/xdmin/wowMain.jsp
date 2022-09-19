<!<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>관리자 페이지</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/xdminMain.css" rel="stylesheet">
	</head>
	<body>
		<form>
			<input type="checkbox" id="menu-toggle"/>
			<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
			<div class="content-container">
				<div id='haeder'></div>
				<div class="navbar">
			        <a href="#" id="logo">
			            <img src="resources/Images/img/logo2.png" height="60" onClick="location.href='main'">
			        </a>
		  		</div>
		  		<div id='content'>
					<h4>Today</h4>
					<table>
						<thead>
							<tr>
								<th>주문</th>
								<th>매출</th>
								<th>신규회원</th>
								<th>1:1문의</th>
								<th>상품문의</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>0건</td>
								<td>0원</td>
								<td>0명</td>
								<td>0개</td>
								<td>0개</td>
							</tr>					
						</tbody>
					</table>
					<h4>배송관련</h4>
					<div class='container'>
						<div class='items'>
							<div class="icon-wrapper">
								<i class="fa-solid fa-coins"></i>
							</div>
							<div class="project-name">
								<p>입금대기</p>
							</div>
							<div class="project-num">
								<p>0건</p>
							</div>
						</div>
						<div class='items'>
							<div class="icon-wrapper">
								<i class="fa-solid fa-money-bill-wave"></i>
							</div>
							<div class="project-name">
								<p>입금완료</p>
							</div>
							<div class="project-num">
								<p>0건</p>
							</div>
						</div>
						<div class='items'>
							<div class="icon-wrapper">
								<i class="fa-solid fa-dumpster"></i>
							</div>
							<div class="project-name">
								<p>배송준비</p>
							</div>
							<div class="project-num">
								<p>0건</p>
							</div>
						</div>
						<div class='items'>
							<div class="icon-wrapper">
								<i class="fa-solid fa-truck-fast"></i>
							</div>
							<div class="project-name">
								<p>배송중</p>
							</div>
							<div class="project-num">
								<p>0건</p>
							</div>
						</div>
						<div class='items'>
							<div class="icon-wrapper">
								<i class="fa-solid fa-check"></i>
							</div>
							<div class="project-name">
								<p>배송완료</p>
							</div>
							<div class="project-num">
								<p>0건</p>
							</div>
						</div>
					</div>
					<h4>1:1 문의 내역</h4>
					<span class='otherview'>> 더보기</span>
					<table style="width:100%;">
						<thead>
							<tr>
								<th style="width:5%;">No.</th>
								<th>제목</th>
								<th>닉네임</th>
								<th>날짜</th>
								<th>답변</th>
							</tr>
						</thead>
						<tbody class='size''>
							<tr>
								<td>1</td>
								<td>배송관련</td>
								<td>김덕철사랑해</td>
								<td>2022.08.25</td>
								<td>N</td>
							</tr>
							<tr>
								<td>2</td>
								<td>배송관련</td>
								<td>사망한직후</td>
								<td>2022.08.25</td>
								<td>N</td>
							</tr>
							<tr>
								<td>3</td>
								<td>배송관련</td>
								<td>쉬운인생</td>
								<td>2022.08.25</td>
								<td>N</td>
							</tr>
						</tbody>					
					</table>
					<h4>상품 문의 내역</h4>
					<table class='gongback' style="width:100%;">
						<thead>
							<tr>
								<th style='width:5%;'>No.</th>
								<th>제목</th>
								<th>닉네임</th>
								<th>날짜</th>
								<th>답변</th>
							</tr>
						</thead>
						<tbody class='size'>
							<tr>
								<td>1</td>
								<td>사이즈관련</td>
								<td>김덕철사랑해</td>
								<td>2022.08.25</td>
								<td>N</td>
							</tr>
							<tr>
								<td>2</td>
								<td>재고관련</td>
								<td>사망한직후</td>
								<td>2022.08.25</td>
								<td>N</td>
							</tr>
							<tr>
								<td>3</td>
								<td>배송관련</td>
								<td>쉬운인생</td>
								<td>2022.08.25</td>
								<td>N</td>
							</tr>
						</tbody>						
					</table>
				</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</div>
		<div class="slideout-sidebar">
			<i class="fa-regular fa-user fa-5x"></i>
			<p>관리자님</p>환영합니다
			<i class="fa-solid fa-x fa-xs"></i>
				<ul>
					<li onClick="location.href='main'">HOME</li>
					<li onClick="location.href='product'">상품관리</li>
					<li onClick="location.href='user'">회원관리</li>
					<li>문의관리</li>
					<li>배송관리</li>
					<li onClick="location.href='code'">코드관리</li>
					<li onClick="location.href='codegroup'">코드그룹관리</li>
				</ul>
			</div>
		</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
	</body>
	
</html>	