<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<title>WoW</title>
		<link href="/resources/Images/css/bootstrap.min.css" rel="stylesheet"> 
    	<link href="/resources/Images/ccgstyleSheet.css" rel="stylesheet" />
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
		<form method="post" name="form" action="/codeGroup/codeGroupList" autocomplete="off">
			<input type="hidden" name="ccgseq">
			<input type="hidden" name="checkboxSeqArray" >
			<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="/resources/Images/img/logo2.png" height="60"onClick="location.href='./wowMain.html'">
				</a>
				<ul id="menu">
					<li><a href="#" onClick="location.href='./wowProduct.html'"><b>상품관리</b></a></li>
					<li><a href="#"><b>회원관리</b></a></li>
					<li><a href="#"><b>문의관리</b></a></li>
					<li><a href="#"><b>배송관리</b></a></li>
				</ul>
			</div>

			<div id='content'>
				<h2>코드그룹 관리</h2>
				<div class='condition'>
					<select id='shDelNy' name='shDelNy'>
						<option value="9" <c:if test="${vo.shDelNy eq 9}">selected</c:if>>검색구분</option>
						<option value='0' <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
						<option value='1' <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
					</select>
					
					<br><br>
					<select>
						<option>수정일</option>
						<option>등록일</option>
					</select>
 					<input type='text' id='startDate' name='shstartDate' <c:out value="${vo.shstartDate }"/> placeholder='시작일'>
 					<input type='text' id='endDate' name='shendDate' <c:out value="${vo.shendDate }"/> placeholder='종료일'>
 					
					<select id="shOption" name="shOption">
						<option value="" <c:if test="${empty vo.shOption }">selected</c:if>>검색구분</option>
						<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
						<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름(한글)</option>
						<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름(영어)</option>
					</select>
					<input type='text' id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어">
					<input type="submit">
					<button type='button' id='reset'>리셋</button>	
				</div>
				<br>
				<span>total:<c:out value="${vo.totalRows}"/></span>
				<select id="rowNumToShow" style="float:right;">
					<option>10</option>
					<option>20</option>
					<option>30</option>
				</select>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th><input type='checkbox'></th>
							<th>#</th>
							<th>#</th>
							<th>코드그룹 코드</th>
							<th>코드그룹 이름</th>
							<th>코드그룹 이름(영문)</th>
							<th>사용확인</th>
							<th>코드갯수</th>
							<th>등록일</th>
							<th>수정일</th>
							<th>삭제여부</th>
						</tr>
					</thead>	
					<tbody>
						<c:choose>
							<c:when test="${fn:length(list) eq 0}">
								<tr>
									<td colspan='10'>검색된 코드가 존재하지 않습니다.</td>
								</tr>
							</c:when>
							<c:otherwise>
								<c:forEach items="${list}" var="list" varStatus="status">
									<tr>
										<td><input type='checkbox'></td>
										<td><a href="javascript:goForm(<c:out value="${list.ccgseq }"/>)" class="text-decoration-none"><c:out value="${list.ccgseq }"/></a></td>
										<td><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
										<td><c:out value="${list.ccorder }"/></td>
										<td><c:out value="${list.codeName }"/></td>
										<td><c:out value="${list.codeNameEng }"/></td>
										<td><c:out value="${list.userNY }"/></td>
										<td><c:out value="${list.cnt }"/></td>
										<td><fmt:formatDate value="${list.regDate }" pattern="yyyy-MM-dd"/></td>
										<td><fmt:formatDate value="${list.modifyDate }" pattern="yyyy-MM-dd"/></td>
										<td><c:out value="${list.delNy }"/></td>
									</tr>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</tbody>				
				</table>
		<!-- 			<div class="wrapper">
					     <nav aria-label="Page navigation example">
						  <ul class="pagination">
						    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
						    <li class="page-item"><a class="page-link" href="#">1</a></li>
						    <li class="page-item"><a class="page-link" href="#">2</a></li>
						    <li class="page-item"><a class="page-link" href="#">3</a></li>
						    <li class="page-item"><a class="page-link" href="#">4</a></li>
						    <li class="page-item"><a class="page-link" href="#">5</a></li>
						    <li class="page-item"><a class="page-link" href="#">6</a></li>
						    <li class="page-item"><a class="page-link" href="#">Next</a></li>
						  </ul>
						</nav>
					</div> -->
					
					
					
					

				<div class="container-fluid px-0 mt-2">
				    <div class="row">
				        <div class="col">
				            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
				            <ul class="pagination justify-content-center mb-0">
				                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
				<c:if test="${vo.startPage gt vo.pageNumToShow}">
				                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.startPage - 1})"><i class="fa-solid fa-angle-left"></i></a></li>
				</c:if>
				<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
					<c:choose>
						<c:when test="${i.index eq vo.thisPage}">
				                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
						</c:when>
						<c:otherwise>             
				                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>                
				<c:if test="${vo.endPage ne vo.totalPages}">                
				                <li class="page-item"><a class="page-link" href="javascript:goList(${vo.endPage + 1})"><i class="fa-solid fa-angle-right"></i></a></li>
				</c:if>
				                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
				            </ul>
				        </div>
				    </div>
				</div>
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-danger"  data-bs-target="#ban_del"><i class="fa-solid fa-ban"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger" data-bs-target="#ban_del2"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1 ms-auto"><button type="button" class="btn btn-success"><i class="fa-solid fa-file-excel"></i></a></button></div>
					<div class="p-1"><button type="button" class="btn btn-primary" name="btnForm" id="btnForm"><i class="fa-solid fa-plus"></i></button></div>
				</div>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		
	<script src="https://kit.fontawesome.com/15c84217dd.js" crossorigin="anonymous"></script>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>

<script type="text/javascript">
    $(document).ready(function () {
            $.datepicker.setDefaults($.datepicker.regional['ko']);
            $( "#startDate" ).datepicker({
                 changeMonth: true,
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달',
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy-mm-dd",
                 /* maxDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이후 날짜 선택 불가) */
                 onClose: function( selectedDate ) {
                      //시작일(startDate) datepicker가 닫힐때
                      //종료일(endDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                     $("#endDate").datepicker( "option", "minDate", selectedDate );
                 }
            });
            $( "#endDate" ).datepicker({
                 changeMonth: true,
                 changeYear: true,
                 nextText: '다음 달',
                 prevText: '이전 달',
                 dayNames: ['일요일', '월요일', '화요일', '수요일', '목요일', '금요일', '토요일'],
                 dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
                 monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                 dateFormat: "yy-mm-dd",
                 /* maxDate: 0,                       // 선택할수있는 최대날짜, ( 0 : 오늘 이후 날짜 선택 불가) */
                 onClose: function( selectedDate ) {
                     // 종료일(endDate) datepicker가 닫힐때
                     // 시작일(startDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 시작일로 지정
                     $("#startDate").datepicker( "option", "maxDate", selectedDate );
                 }
            });
    });

    var goUrlList = "/codeGroup/codeGroupList";
    var goUrlForm = "/codeGroup/codeGroupForm";
	var form = $("form[name=form]")
	var seq = $("input:hidden[name=ccgseq]");
	
	$("#reset").on("click", function() {
			$(location).attr("href",goUrlList);
	});
<!-- ddddddddddddddddd -->
	goList = function(thisPage) {
		$("input:hidden[name=thisPage]").val(thisPage);
		form.attr("action", goUrlList).submit();
	}

	$('#btnForm').on("click", function() {
		goForm(0);                
	});

	goForm = function(keyValue) {
    	/* if(keyValue != 0) seq.val(btoa(keyValue)); */
    	seq.val(keyValue);
		form.attr("action", goUrlForm).submit();
	}

</script>
	</body>
</html>
