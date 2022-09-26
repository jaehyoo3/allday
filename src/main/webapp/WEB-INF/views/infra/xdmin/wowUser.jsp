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
							<th style='width:5%;'>Seq</th>
							<th>이름</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>전화번호</th>
							<th>생년월일</th>
							<th>이메일</th>
							<th>성별</th>
							<th>등급</th>
							<th>가입일</th>
							<th>최근 접속일</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list}" var="list" varStatus="status">
						<tr>
							<td><input type='checkbox'></td>
							<td></td>
							<td><c:out value="${list.memberSeq }"/></td>
							<td><c:out value="${list.memberName }"/></td>
							<td><a href="/xdmin/memberView?memberSeq=<c:out value="${list.memberSeq }"/>"><c:out value="${list.memberID }"/></td>
							<td><c:out value="${list.memberNick }"/></td>
							<td><c:out value="${list.memberMobile }"/></td>
							<td><c:out value="${list.memberDob }"/></td>
							<td><c:out value="${list.memberEmail }"/></td>
							<td>
								<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
									<c:if test="${list.memberGender eq listGender.codeOrder}"><c:out value="${listGender.codeName}"/></c:if>
								</c:forEach>
							</td>
							<td><c:out value="${list.memberGrade }"/></td>
							<td><c:out value="${list.memberRegdate }"/></td>
							<td><c:out value="${list.memberUpdate }"/></td>
						</tr>
						</c:forEach>
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
				<!-- footer s  -->
					<%@include file="../../infra/includeV1/footer.jsp"%>
				<!-- footer e -->
			</div>
				<!-- sideMenu s  -->
					<%@include file="../../infra/includeV1/sideMenu.jsp"%>
				<!-- sideMenu e -->
		</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
	</body>
</html>
