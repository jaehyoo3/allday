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
		<link href="/resources/Images/memberMod.css" rel="stylesheet">
	</head>
	<body>
		<form name="form">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			<div id='content'>
				<div class='modify'>
					<%@include file="../../infra/includeV1/modifyMenu.jsp"%>
					<div class='right'>
						<div class='boxx'>
							<div class='grade'>
							<h3><b><span style='color:purple'>Normal</span>_"<c:out value="${sessNick}"/>(<c:out value="${sessName}"/>)" 님 안녕하세요</b></h3>
							<p>구매금액: 10,000,000원 달성시<br><c:out value="${sessGrade}"/>로 승급 됩니다.</p>
						</div>
						<div class="point">
							<div class="d-flex" style="height: 150px;">
  								<div class="vr"></div>
							</div>
						</div>
							<div class="point2">
								<p>포인트</p>
								<p style="font-size:50px;"><b>0P</b></p>
							</div>
						</div>
						<div class='listt'>
							<h6>주문조회</h6>
							<c:forEach items="${list}" var="list" varStatus="status">
								<div class='storeorder'>
								<a href='#'>
									<div class='storeimg'>
										<c:if test="${list.idefaultNy eq 1}">
											<img src='<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>'>
										</c:if>
									</div>
									<div class='storeinfor'>
										<span class='title'><c:out value="${list.productName}" /></span><br>
										<span class='option'><c:out value="${list.colorName}" /> | <c:out value="${list.sizeName}" /></span><br>
										<span class='price'>￦<c:out value="${list.price}" /></span>
									</div>
									<div class='situation'>
									입금대기</div>
									</a>
								</div>
							</c:forEach>
						</div>
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
		
		<script type="text/javascript">
		var goUrlView = "/memberView";
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=memberSeq]");
    	    
		goForm = function(keyValue) {
	    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
	    	seq.val(keyValue);
			form.attr("action", goUrlView).submit();
		}
		</script>
	</body>
</html>
