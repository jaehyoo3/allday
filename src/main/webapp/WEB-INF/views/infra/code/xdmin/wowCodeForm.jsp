<!<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>관리자 페이지</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/css/code.css" rel="stylesheet">
	</head>
	<body>
		<form name='form' method="post">
		<input type="hidden" name="codeSeq">
			<%@include file="codeVo.jsp"%>	
			<%@include file="../../../infra/includeV1/xdminSetting.jsp" %>
			<div class="main-content">
				<h1><i class="fa-regular fa-file"></i> Code</h1>
				<div class='form-box'>
					<p style="padding-bottom:30px; padding-top:30px;">Code No. <c:out value="${item.codeSeq }" /></p>
					<p>* 코드그룹</p>
					<select class="select" name='cGroupSeq'>
						<c:forEach items="${list}" var="list" varStatus="status">
							<c:choose>
								<c:when test="${empty item.codeSeq}">
									<option value="<c:out value="${list.codeGroupSeq }"/>"><c:out value="${list.codeGroupName}"/></option>
								</c:when>
								<c:otherwise>
									<option value="<c:out value="${list.codeGroupSeq }"/>" <c:if test="${list.codeGroupSeq eq item.codeGroupSeq}">selected</c:if>><c:out value="${list.codeGroupName}"/></option>
								</c:otherwise>
							</c:choose>
						</c:forEach>
					</select>
					<p>* 코드 이름</p>
					<input type="text" id="codeName" name="codeName" value="<c:out value="${item.codeName}" />">
					<p>* 코드 이름(ENG)</p>
					<input type="text" id="codeNameEng" name="codeNameEng" value="<c:out value="${item.codeNameEng}" />">
					<p>* 사용 코드</p>
					<input type="text" value="<c:out value="${item.codeOrder}" />" id="codeOrder" name="codeOrder">
					<p>코드 사용 여부</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select class="select" name="codeUseNY" id="codeUseNY">
						<option value='' <c:if test="${empty item.codeUseNY}">selected</c:if>>설정</option>
						<option value='0' <c:if test="${item.codeUseNY eq 0 }">selected</c:if>>사용하지않기</option>
						<option value='1' <c:if test="${item.codeUseNY eq 1 }">selected</c:if>>사용하기</option>
					</select>
					<p>코드 삭제 여부</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select class="select" name="codeDelNY" id="codeDelNY">
						<option value='' <c:if test="${empty item.codeDelNY}">selected</c:if>>설정</option>
						<option value='0' <c:if test="${item.codeDelNY eq 0 }">selected</c:if>>사용하지않기</option>
						<option value='1' <c:if test="${item.codeDelNY eq 1 }">selected</c:if>>사용하기</option>
					</select>
					<ul>
						<li>
						<span>등록일: </span>
							<input type=text value="<fmt:formatDate value="${item.codeRegdate }" pattern="yyyy-MM-dd hh:mm:ss"/>" readonly>
						</li>
						<li>
						<span>수정일: </span>
							<input type=text value="<fmt:formatDate value="${item.codeUpdate }" pattern="yyyy-MM-dd hh:mm:ss"/>" readonly>	
						</li>
					</ul>
					<button style='background-color:#ab000d; float:left;'>DELETE</button>
					<button style='background-color:#ab000d; float:left;'>UELETE</button>
					<button id="btnSave" style='float:right;'>INSERT</button>
					<button id="btnList" style='float:right;'>LIST</button>
				</div>
			</div>
		</form>
		<form name="formVo" id="formVo" method="post">
			<%@include file="codeVo.jsp"%>	
		</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		
  		<script type="text/javascript">
 		    var goUrlList = "code"; 			/* #-> */
			var goUrlInst = "codeInst"; 			/* #-> */
			var goUrlUpdt = "codeUpdt";			/* #-> */
			var goUrlUele = "codeUele";				
			var goUrlDele = "codeDele";
			
			var seq = $("input:hidden[name=codeSeq]");				/* #-> */
			var form = $("form[name=form]");
			var formVo = $("form[name=formVo]");
			
			$('.btn-expand-collapse').click(function(e) {
					$('.navbar-primary').toggleClass('collapsed');
			});
		
			$("#btnSave").on("click", function() {
				if(seq.val() == "0" || seq.val() == "") {
					form.attr("action", goUrlInst).submit();
				} else {
					form.attr("action", goUrlUpdt).submit();
				}
			});
			
			$("#btnList").on("click", function(){
					form.attr("action", goUrlList).submit();
			});
				
			$("#btnUelete").on("click", function(){
				$(".modal-title").text("확 인");
				$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
				$("#btnModalUelete").show();
				$("#btnModalDelete").hide();
				$("#modalConfirm").modal("show");
			});
			
			$("#btnDelete").on("click", function(){
				$(".modal-title").text("확 인");
				$(".modal-body").text("해당 데이터를 삭제하시겠습니까 ?");
				$("#btnModalUelete").hide();
				$("#btnModalDelete").show();
				$("#modalConfirm").modal("show");
			});
			
			$("#btnModalUelete").on("click", function(){
				$("#modalConfirm").modal("hide");
				form.attr("action", goUrlUele).submit();
			});
			
			$("#btnModalDelete").on("click", function(){
				$("#modalConfirm").modal("hide");
				form.attr("action", goUrlDele).submit();
			});
		
		</script>
	</body>
</html>