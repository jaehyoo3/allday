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
		<link href="/resources/Images/xdminUserForm.css" rel="stylesheet">
	</head>
	
	<body>
		<form>
			<input type="checkbox" id="menu-toggle"/>
			<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
			<div class="content-container">
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="../img/logo2.png" height="60"
					onClick="location.href='./wowMain.html'">
				</a>
			</div>
			<div id='content'>
			<h3>회원관리</h3>
				<input type=file name='fileup1' accept='image/*' style='display: none;'>
				<div class="box" style="background: #BDBDBD;">
					<img class="profile" src='https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png' name='find' id='find' border='0' onclick='document.all.fileup1.click(); document.all.fileup2.value=document.all.fileup1.value' style="cursor:pointer;">
				</div>
				<input type='text' name='file2' id='file2' style='display:none;'>
				<lable>CODE</lable>
				<input type='text' class='form-control' value='1' disabled>
				<lable>이름</lable>
				<input type='text' class='form-control' value="정봉남">
				닉네임<input type='text 'class='form-control' value='사망한직후'>
				ID:<input type='text' class='form-control' value="sadplz">
				생년월일<div class="input-group"><input type='text' class='form-control' value='2022'>
				<input type='text' class='form-control' value='07'>
				<input type='text' class='form-control' value='10'>
				</div>
				등급<select class="form-select w-25">
					<option>브론즈</option>
					<option selected>실버</option>
					<option>골드</option>
					<option>플레티넘</option>
				</select>
				<label>전화번호</label>
				<div class="input-group flex-nowrap">
				<select class="form-select w-20" >
					<option selected>SKT</option>
					<option>KT</option>
					<option>LG U+</option>
				</select><input type='text' class='form-control w-50' value='01012345678'>
				</div>
				Email
				<div class="input-group flex-nowrap">
				<input type='text' class='form-control' value='sadending'>
				<select class="form-select">
				<option selected>gmail.com</option>
				<option>naver.com</option>
				<option>daum.net</option>
				</select>
				</div>
				<lable>성별</lable>
				<div class="d-flex mb-1">
					<div class="p-1">
						<input class="form-check-input" name="gender" type="radio" id="man"checked>
						<label for="man">남자</label>
					</div>
					<div class="p-1 mx-auto">
						<input class="form-check-input" name="gender" id="girl" type="radio">
						<label for="girl">여자</label>
					</div>
				</div>
					<label>주소(기본배송지)</label>		
				<div class="input-group flex-nowrap" style="width:40%">	
					<input class="form-control" type="text" value="14759">
					<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80);">검색하기</button>
				</div>
				<input class="form-control" type="text" value="인천광역시 부평구 어디로 999번길 10(부평동, 동아아파트)">
				<input class="form-control" type="text" value="999동 9999호">
				<br>
				<label>추가배송지</label>
				<div class="input-group flex-nowrap" style="width:40%">	
				<input class="form-control" type="text">
				<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80);">검색하기</button>
				</div>
				<input class="form-control" type="text">
				<input class="form-control" type="text">
				<br>
				<center>
				<button class="btn text-white fw-bold" type="button" style="background-color:rgb(127, 127, 127); width:15%;">취소</button>
				<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80); width:15%;">수정하기</button>
				</center>	
			</div>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
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
