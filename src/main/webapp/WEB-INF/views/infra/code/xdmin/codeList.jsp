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
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
		<form method="post" name='form' action="/code/codeList">
			<input type="hidden" name="ccseq">
			<input type="hidden" name="checkboxSeqArray" >
			<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="/resources/Images/logo2.png" height="60"onClick="location.href='./wowMain.html'">
				</a>
				<ul id="menu">
					<li><a href="#" onClick="location.href='./wowProduct.html'"><b>상품관리</b></a></li>
					<li><a href="#"><b>회원관리</b></a></li>
					<li><a href="#"><b>문의관리</b></a></li>
					<li><a href="#"><b>배송관리</b></a></li>
				</ul>
			</div>
			<div id='content'>
				<h2>코드 관리</h2>
				<div class='condition'>
					<select id='shDelNy' name='shDelNy'>
						<option value="" <c:if test="${empty vo.shDelNy}">selected</c:if>>검색구분</option>
						<option value='0' <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
						<option value='1' <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
					</select>
					<select>
						<option>수정일</option>
						<option>등록일</option>
					</select>
					<input type='text' placeholder="시작일">
					<input type='text' placeholder="종료일"><br><br>
					<select id="shOption" name="shOption">
						<option value="" <c:if test="${empty vo.shOption }">selected</c:if>>검색구분</option>
						<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드</option>
						<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹</option>
						<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드이름</option>
					</select>
					<input type='text' id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어">
					<button type='submit'><i class="fa-solid fa-arrow-right-long"></i></button>
					<button><i class="fa-solid fa-rotate-left"></i></button>
				</div>
				<br>
				<span>total:</span>
				<select style="float:right;">
					<option>10</option>
					<option>20</option>
					<option>30</option>
				</select>
				<table class="table table-striped table-hover">
					<thead>
						<tr>
							<th><input type='checkbox'></th>
							<th>코드그룹 코드</th>
							<th>코드그룹 이름(한글)</th>
							<th>코드</th>
							<th>대체코드</th>
							<th>코드이름(한글)</th>
							<th>사용</th>
							<th>순서</th>
							<th>등록일</th>
							<th>수정일</th>
						</tr>
					</thead>	
					<tbody>
					<c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<tr>
								<td colspan='9'>검색된 코드가 존재하지 않습니다.</td>
							</tr>
						</c:when>
						<c:otherwise>
					<c:forEach items="${list}" var="list" varStatus="status">
						<tr>
							<td><input type='checkbox'></td>
							<td><c:out value="${list.codegroup_ccgSeq }"/></td>
							<td><c:out value="${list.codeName }"/></td>
							<td><a href="/code/codeView?ccseq=<c:out value="${list.ccseq }"/>"><c:out value="${list.ccseq }"/></a></td>
							<td><c:out value="${list.corder }"/></td>
							<td><c:out value="${list.cname }"/></td>
							<td><c:out value="${list.yn }"/></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
						</c:forEach>
						</c:otherwise>
					</c:choose>
					</tbody>				
				</table>
				<%@include file="../../../infra/includeV1/pagination.jsp"%>
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ban_del"><i class="fa-solid fa-ban"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ban_del2"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1 ms-auto"><button type="button" class="btn btn-success"><i class="fa-solid fa-file-excel"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-primary" onclick="location.href='codeForm'"><i class="fa-solid fa-plus"></i></button></div>
				</div>
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
	
	    var goUrlList = "/code/codeList";
	    var goUrlForm = "/code/codeForm";
		var form = $("form[name=form]")
		var seq = $("input:hidden[name=ccseq]");
		
		$("#reset").on("click", function() {
				$(location).attr("href",goUrlList);
		});
		
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
