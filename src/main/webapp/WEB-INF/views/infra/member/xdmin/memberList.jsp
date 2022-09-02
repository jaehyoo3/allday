<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
	
<html>
	<head>
	<title>WoW</title>
	    	<link href="/resources/Images/memberCSS.css" rel="stylesheet" />

	</head>
	<body>
		<form>
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="/resources/Images/logo2.png" height="60">
				</a>
				<ul id="menu">
					<li><a href="#" onClick="location.href='./wowProduct.html'"><b>상품관리</b></a></li>
					<li><a href="#"><b>회원관리</b></a></li>
					<li><a href="#"><b>문의관리</b></a></li>
					<li><a href="#"><b>배송관리</b></a></li>
				</ul>
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
							<th>생년월일</th>
							<th>성별</th>
							<th>등급</th>
							<th>가입일</th>
							<th>최근 접속일</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list }" var="list" varStatus="status">
						<tr>
							<td><input type='checkbox'></td>
							<td><c:out value="${list.userCode }"/></td>
							<td><c:out value="${list.userID }"/></td>
							<td><c:out value="${list.userName }"/></td>
							<td><fmt:formatDate value="${list.userDOB }" pattern="yyyy-MM-dd"/></td>
							<td><c:out value="${list.userGender }"/></td>
							<td><c:out value="${list.userGrade }"/></td>
							<td>남</td>
							<td>브론즈</td>
							<td>2022.08.25</td>
							<td>2022.08.25 15:12</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
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
				<div class='copyright'>2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
	</body>
</html>
