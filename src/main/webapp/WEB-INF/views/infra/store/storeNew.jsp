<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
		<link href="/resources/Images/storeMenu.css" rel="stylesheet" />
	</head>
	
	<body>
		<form name='form' method="post">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			<div id='content'>
				<div class='newinfo'>
					<h1>New Arrivals</h1>
					<p>22 Summer 새로운 상품들을 만나보세요 ! </p>
					<br><br><br>
					<hr>
				</div>
			</div>
			<div class="products">
			<input type='hidden' name="productSeq">
				<c:forEach items="${list}" var="list" varStatus="status">
					<c:if test="${list.productNew eq 1}">
						<a href="javascript:goForm(<c:out value="${list.productSeq }"/>)">
							<img src="/resources/Images/img/knit.jpg"><br>
							<span><c:out value="${list.productName}"/></span> <span class='new'>New</span>
							<p class="price">￦<fmt:formatNumber value="${list.productPrice}" pattern="##,###" /></p>
						</a> 
					</c:if>
				</c:forEach>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<!-- jsLink s  -->
			<%@include file="../../infra/includeV1/jsLink.jsp"%>
		<!-- jsLink e --> 
		<script type="text/javascript">
			var goUrlView = "/productView";
			var form = $("form[name=form]");
			var seq = $("input:hidden[name=productSeq]");
	
			goForm = function(keyValue) {
		    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
		    	seq.val(keyValue);
				form.attr("action", goUrlView).submit();
			}
		</script>
	</body>
</html>
