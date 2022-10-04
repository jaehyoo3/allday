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
		<link href="/resources/Images/css/code.css" rel="stylesheet">
	</head>
	<body>
		<form name='form' method="post">
		<%@include file="../../../infra/includeV1/xdminSetting.jsp" %>
			<div class="main-content">
				<h1><i class="fa-solid fa-user"></i> Member</h1>
				<div class='form-box'>
					<p style="padding-bottom:30px; padding-top:30px;">No.</p>
					<p>* 코드그룹 이름(Kor)</p>
					<input type="text">
					<p>* 코드그룹 이름(Eng)</p>
					<input type="text">
					<p>코드그룹 사용 여부</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select>
						<option>설정</option>
						<option>사용하기</option>
						<option>사용하지않기</option>
					</select>
					<p>코드그룹 삭제 여부</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select>
						<option>설정</option>
						<option>사용하기</option>
						<option>사용하지않기</option>
					</select>
					<ul>
						<li>
						<span>등록일: </span>
						<input type=text readonly>
						</li>
						<li>
						<span>수정일: </span>
						<input type=text readonly>
						</li>
					</ul>
					<button style='background-color:#ab000d; float:left;'>DELETE</button>
					<button style='background-color:#ab000d; float:left;'>UELETE</button>
					<button style='float:right;'>INSERT</button>
				</div>
			</div>
		<script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
  
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		 <script type="text/javascript">
		  $('.btn-expand-collapse').click(function(e) {
				$('.navbar-primary').toggleClass('collapsed');
		});
  		</script>
  </body>
</html>