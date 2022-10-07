<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
		<form name="form">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			
			<div id='content'>
				<div class="d-flex justify-content-center">
					<div class="input-group flex-nowrap" style="width:50%">
						<select class='form-select' id="shType" name="shType" style="width:5%;">
							<option value="0" <c:if test="${vo.shType eq 0}">selected</c:if>>All</option>
							<option value="1" <c:if test="${vo.shType eq 1}">selected</c:if>>Outer</option>
							<option value="2" <c:if test="${vo.shType eq 2}">selected</c:if>>Top</option>
							<option value="3" <c:if test="${vo.shType eq 3}">selected</c:if>>Pants</option>
						</select>
						<input type='text' id="shValue" name="shValue" class='form-control' style="width:60%">
						<button class='form-control' id='btnSearch'>검색</button>
					</div>
				</div>
				<br><span style="font-size:14px;">검색 결과:</span>
			</div>
			<div id="products">
				<input type='hidden' name="productSeq">
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
							<h3>There is no data!</h3>
					</c:when>
					<c:otherwise>
					<c:forEach items="${list}" var="list" varStatus="status">
							<a href="javascript:goForm(<c:out value="${list.productSeq }"/>)">
								<img src="/resources/Images/img/knit.jpg"><br>
								<span><c:out value="${fn:substring(list.productName,0,12)}"/></span>
								<p class="price">￦<fmt:formatNumber value="${list.productPrice}" pattern="##,###" /></p>
							</a> 
					</c:forEach>
					</c:otherwise>
				</c:choose>
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
		<!-- jsLink s  -->
			<%@include file="../../infra/includeV1/jsLink.jsp"%>
		<!-- jsLink e --> 
		<script type="text/javascript">
			var goUrlList = "/search";
			var goUrlView = "/productView";
			var form = $("form[name=form]");
			var seq = $("input:hidden[name=productSeq]");

			$("#btnSearch").on("click", function(){
				form.attr("action", goUrlList).submit();
			});

			goForm = function(keyValue) {
 		    	seq.val(keyValue);
				form.attr("action", goUrlView).submit(); 
			}
		</script>
	</body>
</html>
