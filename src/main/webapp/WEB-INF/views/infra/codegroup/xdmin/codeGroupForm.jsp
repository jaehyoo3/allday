<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>WoW</title>
		<link href="/resources/Images/css/bootstrap.min.css" rel="stylesheet"> 
    	<link href="/resources/Images/ccgstyleSheet.css" rel="stylesheet" />
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
	<form id="form" name="form" method="post" autocomplete="off" ">
		<%@include file="codeGroupVo.jsp"%>
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="/resources/Images/img/logo2.png" height="60"
					onClick="location.href='codeGroupList'">
				</a>
				<ul id="menu">
					<li><a href="#" onClick="location.href='./wowProduct.html'"><b>상품관리</b></a></li>
					<li><a href="#"><b>회원관리</b></a></li>
					<li><a href="#"><b>문의관리</b></a></li>
					<li><a href="#"><b>배송관리</b></a></li>
				</ul>
			</div>
			<div id='content'>
				<div class="container">
				<h3>코드그룹 관리</h3>
					<div class="row mb-3">
						<div class="col">
							<span>코드그룹 코드</span>
							<input class="form-control" name="ccorder" id="ccorder" value="<c:out value="${item.ccorder }"/>" type="text" placeholder="영문(대소문자),숫자">
			    		</div>
   				 		<div class="col">
							<span>코드그룹 코드(Another)X</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>코드그룹 이름(한글)</span>
							<input class="form-control" name="codeName" id="codeName" value="<c:out value="${item.codeName}"/>" type="text" placeholder="한글,숫자">
			    		</div>
   				 		<div class="col">
							<span>코드그룹 이름(영문)</span>
							<input class="form-control" name="codeNameEng" id="codeNameEng" value="<c:out value="${item.codeNameEng }"/>" type="text" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col" >
							<span>사용 여부</span>
							<select class="form-select" id="userNY" name='userNY'>
								<option>사용</option>
								<option value='0' <c:if test="${item.userNY eq 0 }">selected</c:if>>N</option>
								<option value='1' <c:if test="${item.userNY eq 1 }">selected</c:if>>Y</option>
							</select>
			    		</div>
   				 		<div class="col">
							<span>순서X</span>
							<input class="form-control" type="text" aria-label="default input example">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>설명X</span>
							<textarea  class="form-control" type="text" aria-label="Disabled input example"></textarea>
			    		</div>
   				 		<div class="col">
							<span>삭제여부</span>
							<select class="form-select" id="delNy"name='delNy'>
								<option>사용</option>
								<option value='0' <c:if test="${item.delNy eq 0 }">selected</c:if>>N</option>
								<option value='1' <c:if test="${item.delNy eq 1 }">selected</c:if>>Y</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>예비1(varchar type)X</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
			    		</div>
   				 		<div class="col">
   				 		<label>dd</label>
							<span>예비2(varchar type)X</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<input id='aazxc' type="text" placeholder="영문(대소문자),숫자">
							
			    		</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>예비1(Int type)X</span>
							<input class="form-control" type="text" placeholder="숫자">
			    		</div>
   				 		<div class="col">
							<span>예비2(Int type)X</span>
							<input class="form-control" type="text"  placeholder="숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<span>예비(Int type)3X</span>
							<input class="form-control" type="text" placeholder="숫자">
			    		</div>
					</div>
				</div>

				
				<div class="modal fade" id="modalConfirm" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="staticBackdropLabel">삭제</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">삭제하시겠습니까?</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-bs-dismiss="modal">닫기</button>
							<button class="btn btn-primary" id='btnModalDelete' name='btnModalDelete'>확인</button>
							<button class='btn' id='btnModalUelete' name='btnModalUelete'>확인</button>
						</div>
					</div>
				</div>
			</div>

				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-secondary" name="btnList" id="btnList" ><i class="fa-solid fa-list"></i></button></div>
					<div class="p-1  ms-auto"><button type="button" class="btn btn-danger" name='btnUelete' id="btnUelete"><i class="fa-solid fa-x"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger" name='btnDelete' id="btnDelete"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-success" name="btnSave" id="btnSave" ><i class="fa-solid fa-bookmark" ></i></button></div>
				</div>

			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<form name="formVo" id="formVo" method="post">
			<%@include file="codeGroupVo.jsp"%>		<!-- #-> -->
		</form>

		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

		<script>
		    var goUrlList = "/codeGroup/codeGroupList"; 			/* #-> */
			var goUrlInst = "/codeGroup/codeGroupInst"; 			/* #-> */
			var goUrlUpdt = "/codeGroup/codeGroupUpdt";				/* #-> */
			var goUrlUele = "/codeGroup/codeGroupUele";				/* #-> */
			var goUrlDele = "/codeGroup/codeGroupDele";				/* #-> */
			
			var seq = $("input:hidden[name=ccgseq]");				/* #-> */
			var form = $("form[name=form]")
			var formVo = $("form[name=formVo]");


			$("#btnSave").on("click", function() {
				if(seq.val() == "0" || seq.val() == "") {
					form.attr("action", goUrlInst).submit();
				} else {
					form.attr("action", goUrlUpdt).submit();
				}
			});
			
			$("#btnUelete").on("click", function(){
				$(".modal-title").text("확 인");
				$(".modal-body").text("해당 데이터를 Uelete 삭제하시겠습니까 ?");
				$("#btnModalUelete").show();
				$("#btnModalDelete").hide();
				$("#modalConfirm").modal("show");
			});
			

			$("#btnDelete").on("click", function(){
				$(".modal-title").text("확 인");
				$(".modal-body").text("해당 데이터를 Delete 삭제하시겠습니까 ?");
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
			
			<!-- cxv -->

			$("#btnList").on("click", function(){
				formVo.attr("action", goUrlList).submit();
			});

		</script>
	</body>
</html>
