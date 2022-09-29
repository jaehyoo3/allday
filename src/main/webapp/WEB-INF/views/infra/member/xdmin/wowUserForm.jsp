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
		<link href="/resources/Images/xdminUserForm.css" rel="stylesheet">
		<style type="text/css">

 	
	.input-file-button{
		padding: 4px 25px;
		background-color:#FF6600;
		border-radius: 4px;
		color: white;
		cursor: pointer;
	}	
</style>
	</head>
	
	<body>
		<form name="form" id="form" method="post">
		
		<%@include file="memberVo.jsp"%>
		
			<input type="checkbox" id="menu-toggle"/>
			<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
			<div class="content-container">
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="../img/logo2.png" height="60"
					onClick="location.href='./wowMain.html'">
				</a>
			</div>
			<div id='content'>
			<h3>회원관리</h3>
			<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
	<c:out value="${listUploaded.type }"/>
</c:forEach>
		    <div class="row mt-sm-4 ">
		        <div class="col-sm-12 text-center">
		<c:choose>
			<c:when test="${fn:length(listUploaded) eq 0 }">
				<img id="imgProfile" src="/resources/xdmin/image/default_100_100.png" class="rounded-circle mx-auto d-block" width="100" height="100">
			</c:when>
			<c:otherwise>
				<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
					<c:if test="${listUploaded.type eq '1' }">
						<img id="imgProfile" src="<c:out value="${listUploaded.path }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
					</c:if>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<%-- 
		<c:forEach items="${listUploaded}" var="listUploaded" varStatus="statusUploaded">
			<c:choose>
				<c:when test="${not empty listUploaded.type && listUploaded.type eq 1 }">
					<img id="imgProfile" src="<c:out value="${Constants.UPLOAD_PATH_PREFIX_FOR_VIEW }"/><c:out value="${listUploaded.uuidName }"/>" class="rounded-circle mx-auto d-block" width="100" height="100">
				</c:when>
				<c:when test="${not empty listUploaded.type }">
					<!-- empty -->1<c:out value="${listUploaded.type }"/>
				</c:when>
				<c:otherwise>
					
				</c:otherwise>
			</c:choose>
		</c:forEach>        
		 --%>            
					<label for="ifmmUploadedProfileImage" class="form-label input-file-button"><b>+</b></label>
		 			<input class="form-control form-control-sm" id="ifmmUploadedProfileImage" name="ifmmUploadedProfileImage" type="file" multiple="multiple" style="display: none;" onChange="upload('ifmmUploadedProfileImage', 0, 1, 1, 0, 0, 3);">
		        </div>
		    </div>
				<lable>CODE</lable>
				<input type='text' class='form-control' name='memberSeq' id='memberSeq' value="<c:out value="${item.memberSeq}"/>" disabled>
				<lable>사용여부</label>
				<input type='text' class='form-control' name='memberDelNy' id='memberDelNy' value="<c:out value="${item.memberDelNy}"/>" disabled>
				<lable>이름</lable>
				<input class="form-control" type="text" name='memberName' value="<c:out value="${item.memberName }"/>">
				<label>비밀번호</label>
				<input class="form-control" type="password" name='memberPW' value="<c:out value="${item.memberPW }"/>">
				닉네임<input class="form-control" type="text" name='memberNick' value="<c:out value="${item.memberNick }"/>">
				ID:<input class="form-control" type="text" id='memberID' name='memberID' value="<c:out value="${item.memberID }"/>">
				생년월일<div class="input-group"><input type='text' class='form-control' value='2022'>
				<input type='text' class='form-control' value='07'>
				<input type='text' class='form-control' value='10'>
				</div>
				등급	
				<select class="form-select" name="memberGrade">
					<option>사용</option>
					<option value='1' <c:if test="${item.memberGrade eq 1 }">selected</c:if>>브론즈</option>
					<option value='2' <c:if test="${item.memberGrade eq 2 }">selected</c:if>>실버</option>
					<option value='3' <c:if test="${item.memberGrade eq 3 }">selected</c:if>>골드</option>
					<option value='4' <c:if test="${item.memberGrade eq 4 }">selected</c:if>>다이아몬드</option>
				</select>
				<label>전화번호</label>
				<div class="input-group flex-nowrap">
				<select class="form-select w-20" >
					<option selected>SKT</option>
					<option>KT</option>
					<option>LG U+</option>
				</select>
				<input class="form-control" type="text" name='memberMobile' value="<c:out value="${item.memberMobile }"/>" >
				</div>
				Email
				<div class="input-group flex-nowrap">
				<input class="form-control" type="text" name='memberEmail' value="<c:out value="${item.memberEmail }"/>">
				<select class="form-select">
				<option selected>gmail.com</option>
				<option>naver.com</option>
				<option>daum.net</option>
				</select>
				</div>
				<lable>성별</lable>
				<select class="form-select" name="memberGender">
					<option>사용</option>
					<option value='1' <c:if test="${item.memberGender eq 1 }">selected</c:if>>남자</option>
					<option value='2' <c:if test="${item.memberGender eq 2 }">selected</c:if>>여자</option>
					<option value='3' <c:if test="${item.memberGender eq 3 }">selected</c:if>>기타</option>
				</select>
					<label>주소(기본배송지)</label>		
				<div class="input-group flex-nowrap" style="width:40%">	
					<input class="form-control" type="text" value="14759">
					<button class="btn text-white fw-bold" type="button" style="background-color:rgb(44, 62, 80);">검색하기</button>
				</div>
				<input class="form-control" type="text">
				<input class="form-control" type="text">
				<br>
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-secondary" name="btnList" id="btnList" ><i class="fa-solid fa-list"></i></button></div>
					<div class="p-1  ms-auto"><button type="button" class="btn btn-danger" name='btnUelete' id="btnUelete"><i class="fa-solid fa-x"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger" name='btnDelete' id="btnDelete"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-success" id="btnSave"><i class="fa-solid fa-bookmark"></i></button></div>
				</div>
			</div>
			
				<%@include file="../../../infra/includeV1/modals.jsp"%>
		</form>
		<form name="formVo" id="formVo" method="post">
			<%@include file="memberVo.jsp"%>	
		</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
 		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		
		<script type="text/javascript">
		    var goUrlList = "/xdmin/memberList"; 			/* #-> */
			var goUrlInst = "/xdmin/memberInst"; 			/* #-> */
			var goUrlUpdt = "/xdmin/memberUpdt";				/* #-> */
			var goUrlUele = "/xdmin/memberUele";				/* #-> */
			var goUrlDele = "/xdmin/memberDele";				/* #-> */
			
			var seq = $("input:text[name=memberSeq]");				/* #-> */
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
			
			$("#btnList").on("click", function(){
				formVo.attr("action", goUrlList).submit();
			});
			
		upload = function(objName, seq, allowedMaxTotalFileNumber, allowedExtdiv, allowedEachFileSize, allowedTotalFileSize, uiType) {
//		objName 과 seq 는 jsp 내에서 유일 하여야 함.
//		memberProfileImage: 1
//		memberImage: 2
//		memberFile : 3
		
		var totalFileSize = 0;
		var obj = $("#" + objName +"")[0].files;	
		var fileCount = obj.length;
		
		allowedMaxTotalFileNumber = allowedMaxTotalFileNumber == 0 ? MAX_TOTAL_FILE_NUMBER : allowedMaxTotalFileNumber;
		allowedEachFileSize = allowedEachFileSize == 0 ? MAX_EACH_FILE_SIZE : allowedEachFileSize;
		allowedTotalFileSize = allowedTotalFileSize == 0 ? MAX_TOTAL_FILE_SIZE : allowedTotalFileSize;
		
		if(checkUploadedTotalFileNumber(obj, allowedMaxTotalFileNumber, fileCount) == false) { return false; }
		
		for (var i = 0 ; i < fileCount ; i++) {
			if(checkUploadedExt($("#" + objName +"")[0].files[i].name, seq, allowedExtdiv) == false) { return false; }
			if(checkUploadedEachFileSize($("#" + objName +"")[0].files[i], seq, allowedEachFileSize) == false) { return false; }
			totalFileSize += $("#" + objName +"")[0].files[i].size;
		}
		if(checkUploadedTotalFileSize(seq, totalFileSize, allowedTotalFileSize) == false) { return false; }
		
		if (uiType == 1) {
			$("#ulFile" + seq).children().remove();
			
			for (var i = 0 ; i < fileCount ; i++) {
				addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
			}
		} else if(uiType == 2) {
			$("#ulFile" + seq).children().remove();
			
			for (var i = 0 ; i < fileCount ; i++) {
				addUploadLi(seq, i, $("#" + objName +"")[0].files[i].name);
			}
		} else if (uiType == 3) {
			var fileReader = new FileReader();
			 fileReader.readAsDataURL($("#" + objName +"")[0].files[0]);
			
			 fileReader.onload = function () {
				 $("#imgProfile").attr("src", fileReader.result);		/* #-> */
			 }		
		} else {
			return false;
		}
		return false;
	}
	
	
	addUploadLi = function (seq, index, name){
		
		var ul_list = $("#ulFile0");
		
		li = '<li id="li_'+seq+'_'+index+'" class="list-group-item d-flex justify-content-between align-items-center">';
		li = li + name;
		li = li + '<span class="badge bg-danger rounded-pill" onClick="delLi('+ seq +','+ index +')"><i class="fa-solid fa-x" style="cursor: pointer;"></i></span>';
		li = li + '</li>';
		
		$("#ulFile"+seq).append(li);
	}
	
	
	delLi = function(seq, index) {
		$("#li_"+seq+"_"+index).remove();
	}
	
		</script>

	</body>
</html>
