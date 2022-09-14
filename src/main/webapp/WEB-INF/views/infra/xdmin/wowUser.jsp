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
		<link href="/resources/Images/xdminUser.css" rel="stylesheet">
	</head>
	
	<body>
		<form>
			<div id='haeder'></div>
			<input type="checkbox" id="menu-toggle"/>
			<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
			<div class="content-container">
			<div class="navbar">
				<a href="#" id="logo"> <img src="../img/logo2.png" height="60"
					onClick="location.href='main.html'">
				</a>

			</div>
			<div id='content'>
			<h3>회원관리</h3>
				<table>
					<thead>
						<tr>
							<th style='width:3%;'><input type='checkbox'></th>
							<th style='width:5%;'>#</th>
							<th>이름</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>전화번호</th>
							<th>이메일</th>
							<th>성별</th>
							<th>등급</th>
							<th>가입일</th>
							<th>최근 접속일</th>
						</tr>
					</thead>
					<tbody>
						<tr onclick="location.href='./wowUserMod.html'" style="cursor: pointer;">
							<td><input type='checkbox'></td>
							<td>1</td>
							<td>정봉남</td>
							<td>sadplz</td>
							<td>사망한직후</td>
							<td>010-1234-5678</td>
							<td>sadending@gmail.com</td>
							<td>남</td>
							<td>브론즈</td>
							<td>2022.08.25</td>
							<td>2022.08.25 15:12</td>
						</tr>
					</tbody>
				</table>
				<div class='Rposition'>
					<button type='button' onClick="location.href='userform'">+</button>
					<button>-</button>
				</div>
				<div class="container">
				  <ul class="pagination">
				    <li class="icon">
				      <a href="#"><span class="fas fa-angle-left"></span></a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li class="icon">
				      <a href="#"><span class="fas fa-angle-right"></span></a>
				    </li>
				  </ul>
				</div>
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
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
	</body>
</html>
