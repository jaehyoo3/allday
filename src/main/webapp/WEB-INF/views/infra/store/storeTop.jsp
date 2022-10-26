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
		<form name='form'>
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			<div id='content'>
				<div class='newinfo'>
					<h1>Top</h1>
					<p>블루비 최고 상의들을 만나보세요 ! </p>
					<br><br><br>
					<hr>
				</div>
			</div>
			<div class="products">
			<input type='hidden' name="productSeq">
			<c:forEach items="${list}" var="list" varStatus="status">
				<c:if test="${list.productType eq 1}">
					<a href="javascript:goForm(<c:out value="${list.productSeq }"/>)">
						<img src="<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>"><br>
						<span><c:out value="${list.productName}"/></span>
						<c:if test="${list.productBest eq 1}"> <span class='best'>Best</span></c:if>
						<c:if test="${list.productNew eq 1}"><span class='new'>New</span></c:if> 
						<p class="price">￦<fmt:formatNumber value="${list.productPrice}" pattern="##,###" /></p>
					</a> 
				</c:if>
			</c:forEach>
			<!-- 	<a href="#" onClick="location.href='product'"> 
					<img src="/resources/Images/img/knit.jpg"><br>
					<span>이비자 코스트 시트론 레트로 네츄럴 메쉬 니트</span> <span class='new'>New</span>
					<p class="price">￦49,000</p>
				</a> 
				<a href="#"> 
					<img src="/resources/Images/img/best2.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦49,000</p>
				</a>
				 <a href="#"> 
					 <img src="/resources/Images/img/best3.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
				 <a href="#">
				 	<img src="/resources/Images/img/best4.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a> 
				<a href="#"> 
					<img src="/resources/Images/img/best5.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a> 
				<a href="#"> 
					<img src="/resources/Images/img//best1.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a> 
				<a href="#">
					 <img src="/resources/Images/img/lphoto.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
				 <a href="#"> 
					 <img src="/resources/Images/img/rphoto.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a> 
				<a href="#">
				 	<img src="/resources/Images/img/mainimg.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a> -->
			</div>
			<!-- footer s  -->
				<%@include file="../../infra/includeV1/footer.jsp"%>
			<!-- footer e --> 
		</form>
		<!-- jsLink s  -->
			<%@include file="../../infra/includeV1/jsLink.jsp"%>
		<!-- jsLink e --> 
		<script type="text/javascript">
		function addComma(num) {
			  var regexp = /\B(?=(\d{3})+(?!\d))/g;
			  return num.toString().replace(regexp, ',');
			}
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
