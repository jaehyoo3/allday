<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/css/storeSearch.css" rel="stylesheet" />
	</head>
	
	<body>
		<form>
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			
			<div id='content'>
				<div class="d-flex justify-content-center">
					<div class="input-group flex-nowrap" style="width:50%">
						<select class='form-select' style="width:5%;">
							<option>전체검색</option>
							<option>Outer</option>
							<option>top</option>
							<option>Pants</option>
						</select>
						<input type='text' class='form-control' style="width:60%">
						<button class='form-control'>검색</button>
					</div>
				</div>
			</div>
			<div id="products">
				<a href="#" onClick="location.href='../store/storeProduct.html'"> 
					<img src="/resources/Images/img/knit.jpg">
					<p>이비자 코스트 시트론 </p>
					<p class="price">￦49,000</p>
				</a> 
				<a href="#"> 
					<img src="/resources/Images/img/knit.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦49,000</p>
				</a>
				 <a href="#"> 
					 <img src="/resources/Images/img/knit.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
				<a href="#"> 
					 <img src="/resources/Images/img/knit.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
				<a href="#"> 
					 <img src="/resources/Images/img/knit.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
				<a href="#"> 
					 <img src="/resources/Images/img/knit.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
				<a href="#"> 
					 <img src="/resources/Images/img/knit.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
				<a href="#"> 
					 <img src="/resources/Images/img/knit.jpg">
					<p>Tassel Loafer</p>
					<p class="price">￦89,000</p>
				</a>
			</div>
				<nav aria-label="Page navigation example">
				  <ul class="pagination justify-content-center">
				    <li class="page-item disabled">
				      <a class="page-link">Previous</a>
				    </li>
				    <li class="page-item"><a class="page-link" href="#">1</a></li>
				    <li class="page-item"><a class="page-link" href="#">2</a></li>
				    <li class="page-item"><a class="page-link" href="#">3</a></li>
				    <li class="page-item">
				      <a class="page-link" href="#">Next</a>
				    </li>
				  </ul>
				</nav>
			<!-- footer s  -->
				<%@include file="../../infra/includeV1/footer.jsp"%>
			<!-- footer e --> 
		</form>
	</body>
</html>
