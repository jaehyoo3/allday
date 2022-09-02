<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
	<head>
		<title>WoW</title>
		<link href="/resources/Images/css/bootstrap.min.css" rel="stylesheet"> 
    	<link href="/resources/Images/ccgstyleSheet.css" rel="stylesheet" />
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
		<form method="post" action="/codeGroup/codeGroupList">
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="/resources/Images/logo2.png" height="60"onClick="location.href='./wowMain.html'">
				</a>
				<ul id="menu">
					<li><a href="#" onClick="location.href='./wowProduct.html'"><b>상품관리</b></a></li>
					<li><a href="#"><b>회원관리</b></a></li>
					<li><a href="#"><b>문의관리</b></a></li>
					<li><a href="#"><b>배송관리</b></a></li>
				</ul>
			</div>
			<div id='content'>
				<h2>코드그룹 관리</h2>
				<div class='condition'>
					<select>
						<option>N</option>
						<option>Y</option>
					</select>
					<select>
						<option>수정일</option>
						<option>등록일</option>
					</select>
					<input type='text' placeholder="시작일">
					<input type='text' placeholder="종료일"><br><br>
					<select id="shOption" name="shOption">
						<option value="" <c:if test="${empty vo.shOption}">selected</c:if>>검색구분</option>
						<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
						<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름(한글)</option>
						<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름(영어)</option>
					</select>
					<input type='text' id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어">
					<input type="submit">	
					<button><i class="fa-solid fa-arrow-right-long"></i></button>
					<button><i class="fa-solid fa-rotate-left"></i></button>
				</div>
				<br>
				<span>total:</span>
				<select style="float:right;">
					<option>10</option>
					<option>20</option>
					<option>30</option>
				</select>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th><input type='checkbox'></th>
							<th>#</th>
							<th>코드그룹 코드</th>
							<th>코드그룹 이름</th>
							<th>사용확인</th>
							<th>코드갯수</th>
							<th>등록일</th>
							<th>수정일</th>
						</tr>
					</thead>	
					<tbody>
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td colspan='8'>검색된 코드가 존재하지 않습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list" varStatus="status">
									<tr>
										<td><input type='checkbox'></td>
										<td><c:out value="${list.ccgseq }"/></td>
										<td><c:out value="${list.ccorder }"/></td>
										<td><c:out value="${list.codeName }"/></td>
										<td><c:out value="${list.userNY }"/></td>
										<td><c:out value="${list.cnt }"/></td>
										<td><fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd"/></td>
										<td><fmt:formatDate value="${list.modifyDate }" pattern="yyyy-MM-dd"/></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>				
				</table>
					<div class="wrapper">
					     <nav aria-label="Page navigation example">
						  <ul class="pagination">
						    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
						    <li class="page-item"><a class="page-link" href="#">1</a></li>
						    <li class="page-item"><a class="page-link" href="#">2</a></li>
						    <li class="page-item"><a class="page-link" href="#">3</a></li>
						    <li class="page-item"><a class="page-link" href="#">4</a></li>
						    <li class="page-item"><a class="page-link" href="#">5</a></li>
						    <li class="page-item"><a class="page-link" href="#">6</a></li>
						    <li class="page-item"><a class="page-link" href="#">Next</a></li>
						  </ul>
						</nav>
					</div>
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ban_del"><i class="fa-solid fa-ban"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ban_del2"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1 ms-auto"><button type="button" class="btn btn-success"><i class="fa-solid fa-file-excel"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-primary"><i class="fa-solid fa-plus"></i></button></div>
				</div>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>
	</body>
</html>
