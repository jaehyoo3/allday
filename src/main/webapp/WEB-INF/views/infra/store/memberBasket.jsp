<!<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<meta charset='uTF-8'> 
		<meta name ='viewport' content='width=device-width, initial-scaLe=1.0'>
		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/memberBasketCss.css" rel="stylesheet">
	</head>
	<body>
		<form name="form" method="post">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e -->
			<input type="hidden" name="memberSeq" value="${sessSeq }" />
			<jsp:useBean id="XdminCodeServiceImpl" class="com.bluebee.modules.xdmincode.XdminCodeServiceImpl"/>
			<c:set var="listCodeType" value="${XdminCodeServiceImpl.selectListCachedCode('9')}"/>
			<div id='content'>
				<h4>장바구니</h4><br>
				<table style="width:100%">
					<thead>
						<tr>
							<td style="width:3%;"><input type="checkbox"></td>
							<td style="width: 50%;">상품정보</td>
							<td style="width: 15%">수량</td>
							<td style="width: 15%">주문금액</td>
							<td style="width: 10%">배송정보</td>	
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list}" var="list" varStatus="status">
						<tr>
							<td><input type="checkbox"></td>
							<td>
								<div class='left'><c:if test="${list.idefaultNy eq 1}">
											<img src='<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>' style="width:50%;">
										</c:if></div>
								<div class='right'><p><c:out value="${list.productName }" /> | 
								<c:forEach items="${listCodeType}" var="listCode" varStatus="statusGender">
									<c:if test="${list.productType eq listCode.codeOrder}">
									<c:out value="${listCode.codeName}"/>
							</c:if>
						</c:forEach>
								</p>
								<div class='option'><c:out value="${list.colorName }"/> / <c:out value="${list.sizeName }"/></div></div>
							</td>
							<td>
								<p><c:out value="${list.basketNum }"/></p>
								<button class='btn text-black btn-sm btn-outline-dark' style='background-color:white;'>옵션/수량변경</button>
							</td>
							<td>
								<p class='bold'>￦<c:out value="${list.productPrice }"/></p>
									<button class='btn text-white fw-bold btn-sm' style='background-color:rgb(44, 62, 80);'>바로구매</button>
							</td>
							<td>
								<p class='bold'>무료</p>
								<p>택배</p>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<button class='btn text-black btn-sm btn-outline-dark' style='background-color:white;'>선택상품 삭제</button>
				<button class='btn text-black btn-sm btn-outline-dark' style='background-color:white;'>품절상품 삭제</button>
				<br><br>
				<c:set var="sum" value="0" />
					<c:forEach items="${list}" var="list">
					<c:set var="sum" value="${sum + list.productPrice}"/>
					</c:forEach>
				<div class='buytheway'>
					<table style="width:100%">
						<thead>
							<tr>
								<td>총 주문 상품 ${fn:length(list)}개</td>
								<td><c:out value="${numm}"/></td>
							</tr>
						</thead>
						<tbody>
							<tr>
							<td>
								<span>￦<c:out value="${sum}"/>+ 무료 = </span><span>￦<c:out value="${sum}" /></span></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class='buttons'>
					<button class='btn w-50 text-white fw-bold' style='background-color:rgb(44, 62, 80);'>주문하기</button>
				</div>
				</div>
			<!-- footer s  -->
				<%@include file="../../infra/includeV1/footer.jsp"%>
			<!-- footer e --> 
		</form>
		<!-- jsLink s  -->
			<%@include file="../../infra/includeV1/jsLink.jsp"%>
		<!-- jsLink e --> 
		<script>
				var form = $("form[name=form]");
			var seq = $("input:hidden[name=memberSeq]");
		</script>
	</body>
</html>
