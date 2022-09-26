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
		<link href="/resources/Images/xdminCodeForm.css" rel="stylesheet">
	</head>

	
	<body>
		<form name="form" id="form" name="form" method="post" autocomplete="off">
		<%@include file="codeVo.jsp"%>	
			<input type="checkbox" id="menu-toggle"/>
			<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
			<div class="content-container">
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="../img/logo2.png" height="60"
					onClick="location.href='main'">
				</a>
			</div>
			<div id='content'>
				<div class="container">
				
				<h3>코드관리</h3>
					<div class="row mb-3">
						<div class="col-6">
							<span>코드그룹</span>
								<select class="form-select" name='cGroupSeq'>
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
				    		</div>
				    	</div>
					<div class="row mb-3">
						<div class="col">
							<span># 코드</span>
							<input class="form-control" type="text" value="<c:out value="${item.codeSeq }" />" id="codeSeq" name="codeSeq" disabled>
			    		</div>
			    		<div class="col">
							<span>사용 코드</span>
							<input class="form-control" type="text" placeholder="자동생성" value="<c:out value="${item.codeOrder}" />" id="codeOrder" name="codeOrder">
			    		</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>코드 이름(한글)</span>
							<input class="form-control" type="text" id="codeName" name="codeName" value="<c:out value="${item.codeName}" />">
			    		</div>
   				 		<div class="col">
							<span>코드 이름(영문)</span>
							<input class="form-control" type="text" id="codeNameEng" name="codeNameEng" value="<c:out value="${item.codeNameEng}" />">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>사용 여부</span>
							<select class="form-select" name="codeUseNY" id="codeUseNY">
								<option value='0' <c:if test="${item.codeUseNY eq 0 }">selected</c:if>>N</option>
								<option value='1' <c:if test="${item.codeUseNY eq 1 }">selected</c:if>>Y</option>
							</select>
			    		</div>
					</div>
					<div class="row mb-3">
   				 		<div class="col">
							<span>삭제여부</span>
							<select class="form-select" name="codeDelNY" id="codeDelNY">
								<option value='0' <c:if test="${item.codeDelNY eq 0 }">selected</c:if>>N</option>
								<option value='1' <c:if test="${item.codeDelNY eq 1 }">selected</c:if>>Y</option>
							</select>
						</div>
					</div>
				</div>
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-secondary" name="btnList" id="btnList" ><i class="fa-solid fa-list"></i></button></div>
					<div class="p-1  ms-auto"><button type="button" class="btn btn-danger" name='btnUelete' id="btnUelete"><i class="fa-solid fa-x"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger" name='btnDelete' id="btnDelete"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-success" id="btnSave"><i class="fa-solid fa-bookmark"></i></button></div>
			</div>
			
			<!-- CODEVO s  -->
				<%@include file="../../infra/includeV1/codeVo.jsp"%>
			<!-- CODEVO e -->
			
			<!-- footer s  -->
				<%@include file="../../infra/includeV1/footer.jsp"%>
			<!-- footer e -->
			</div>
			<!-- sideMenu s  -->
				<%@include file="../../infra/includeV1/sideMenu.jsp"%>
			<!-- sideMenu e -->

		</form>
		<form name="formVo" id="formVo" method="post">
			<%@include file="codeVo.jsp"%>	
		</form>
		
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		
 		<script type="text/javascript">
 		    var goUrlList = "/xdmin/code"; 			/* #-> */
			var goUrlInst = "/xdmin/codeInst"; 			/* #-> */
			var goUrlUpdt = "/xdmin/codeUpdt";			/* #-> */
			var goUrlUele = "/xdmin/codeUele";				
			var goUrlDele = "/xdmin/codeDele";
			
			var seq = $("input:text[name=codeSeq]");				/* #-> */
			var form = $("form[name=form]");
			var formVo = $("form[name=formVo]");
			
			$("#btnSave").on("click", function() {
				if(seq.val() == "0" || seq.val() == "") {
					form.attr("action", goUrlInst).submit();
				} else {
					form.attr("action", goUrlUpdt).submit();
				}
			});
			
		$("#btnList").on("click", function(){
				formVo.attr("action", goUrlList).submit();
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
		<%@include file="../../infra/includeV1/modals.jsp"%>
	</body>
</html>
