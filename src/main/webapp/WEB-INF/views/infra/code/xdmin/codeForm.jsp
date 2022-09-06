<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>WoW</title>
		<link href="/resources/Images/css/bootstrap.min.css" rel="stylesheet"> 
    	<link href="/resources/Images/ccReg.css" rel="stylesheet" />
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
		<form method='post' action='codeInst'>
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="/resources/Images/logo2.png" height="60"
					onClick="location.href='./wowMain.html'">
				</a>
				<ul id="menu">
					<li><a href="#" onClick="location.href='./wowProduct.html'"><b>상품관리</b></a></li>
					<li><a href="#"><b>회원관리</b></a></li>
					<li><a href="#"><b>문의관리</b></a></li>
					<li><a href="#"><b>배송관리</b></a></li>
				</ul>
			</div>
			<div id='content'>
				<div class="container">
				<h3>코드관리</h3>
					<div class="row mb-3">
						<div class="col-6">
							<span>코드그룹</span>
							<select class="form-select" name='codegroup_ccgSeq'>
							<c:forEach items="${list}" var="list" varStatus="status">
								<option value=<c:out value="${list.ccgseq}"/>><c:out value="${list.codeName }"/></option>
							</c:forEach>
							</select>
				    		</div>
				    	</div>
					<div class="row mb-3">
						<div class="col">
							<span>코드</span>
							<input class="form-control" type="text" placeholder="자동생성" aria-label="Disabled input example" disabled>
			    		</div>
   				 		<div class="col">
							<span>코드(Another)</span>
							<input class="form-control" type="text"  aria-label="default input example">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>코드 이름(한글)</span>
							<input class="form-control" type="text" name='cname'  aria-label="Disabled input example">
			    		</div>
   				 		<div class="col">
							<span>코드 이름(영문)</span>
							<input class="form-control" type="text" aria-label="default input example">
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
							<input class="form-control" type="text" aria-label="Disabled input example">
			    		</div>
   				 		<div class="col">
							<span>예비2(varchar type)</span>
							<input class="form-control" type="text" aria-label="default input example">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<span>예비3(varchar type)</span>
							<input class="form-control" type="text" aria-label="Disabled input example">
			    		</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>예비1(Int type)</span>
							<input class="form-control" type="text" aria-label="Disabled input example">
			    		</div>
   				 		<div class="col">
							<span>예비2(Int type)</span>
							<input class="form-control" type="text"  aria-label="default input example">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<span>예비3(Int type)3</span>
							<input class="form-control" type="text" aria-label="Disabled input example">
			    		</div>
					</div>
				</div>
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#ban_del"><i class="fa-solid fa-list"></i></button></div>
					<div class="p-1  ms-auto"><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ban_del2"><i class="fa-solid fa-x"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-success"><i class="fa-solid fa-bookmark"></i></button></div>
					<input type='submit'>
				</div>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 
	</body>
</html>
