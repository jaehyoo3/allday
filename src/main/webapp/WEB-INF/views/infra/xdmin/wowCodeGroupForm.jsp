<!<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>관리자 페이지</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/xdminCodeForm.css" rel="stylesheet">
	</head>

	<body>
		<form>
			<input type="checkbox" id="menu-toggle"/>
			<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
			<div class="content-container">
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="../img/logo2.png" height="60"
					onClick="location.href='main'">
				</a>
			</div>
			<div id='content'>
				<div class="container">
				<h3>코드그룹 관리</h3>
					<div class="row mb-3">
						<div class="col">
							<span>코드그룹 코드</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
			    		</div>
   				 		<div class="col">
							<span>코드그룹 코드(Another)</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>코드그룹 이름(한글)</span>
							<input class="form-control" type="text" placeholder="한글,숫자">
			    		</div>
   				 		<div class="col">
							<span>코드그룹 이름(영문)</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>사용 여부</span>
							<select class="form-select">
								<option>N</option>
								<option>Y</option>
							</select>
			    		</div>
   				 		<div class="col">
							<span>순서</span>
							<input class="form-control" type="text" aria-label="default input example">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>설명</span>
							<textarea  class="form-control" type="text" aria-label="Disabled input example"></textarea>
			    		</div>
   				 		<div class="col">
							<span>삭제여부</span>
							<select class="form-select" aria-label="Default select example">
								<option>N</option>
								<option>Y</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>예비1(varchar type)</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
			    		</div>
   				 		<div class="col">
							<span>예비2(varchar type)</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<span>예비3(varchar type)</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
			    		</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>예비1(Int type)</span>
							<input class="form-control" type="text" placeholder="숫자">
			    		</div>
   				 		<div class="col">
							<span>예비2(Int type)</span>
							<input class="form-control" type="text"  placeholder="숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<span>예비3(Int type)3</span>
							<input class="form-control" type="text" placeholder="숫자">
			    		</div>
					</div>
				</div>
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-secondary"><i class="fa-solid fa-list"></i></button></div>
					<div class="p-1  ms-auto"><button type="button" class="btn btn-danger"><i class="fa-solid fa-x"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-success"><i class="fa-solid fa-bookmark"></i></button></div>
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
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 
	</body>
</html>
