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
		<link href="/resources/Images/storeBuySuccess.css" rel="stylesheet">	</head>
	
	<body>
		<form name='form' method="post">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			<div id='content'>
				<div class='buy'>
					<h3>결제하기</h3>
					<div class='b1'>
						<h3>결제가 완료 되었습니다.</h3><br>
					</div>
					<div class="d-grid gap-2 col-12">
				<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80);"onClick="location.href='/main'">홈으로가기</button>
				</div>
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
