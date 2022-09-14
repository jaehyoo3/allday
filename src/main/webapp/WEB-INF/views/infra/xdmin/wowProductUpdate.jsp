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
		<link href="/resources/Images/xdminProductAdd.css" rel="stylesheet">
	</head>
	<body>
		<form>
			<input type="checkbox" id="menu-toggle"/>
				<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
				<div class="content-container">
			<div id='haeder'></div>
				<div class="navbar">
			        <a href="#" id="logo">
			            <img src="resources/Images/img/logo2.png" height="60" onClick="location.href='wowMain'">
			        </a>
		  		</div>
			<div id='content'>
				<h2>상품수정</h2>
				<br>
				<div class='left'>
					대표이미지<br>
					<img src='../img/knit.jpg'>
					<input type='file'>
				</div>
				<div class='right'>
					상품명: <input type='text' value='어쩌고 니트'>
					타입:
					<select> 
						<option>Top</option>
						<option>Pants</option>
						<option>Outer</option>
					</select><br>
					메인:<input type='checkbox'>
					베스트:<input type='checkbox'>
					NEW:<input type='checkbox'><br>
					가격:<input type='text' value='49000'><br>
					사이즈: S <input type='checkbox'> M <input type='checkbox'> L <input type='checkbox'><br>
				</div>
				<div class='writer'>
					<input type='file'><br>
					<textarea cols="150" rows="50"></textarea><br>
				</div>
				<button>취소</button>
				<button>수정하기</button>
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
