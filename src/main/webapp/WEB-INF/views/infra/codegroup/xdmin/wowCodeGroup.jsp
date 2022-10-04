<!<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>관리자 페이지</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/XdminSetting.css" rel="stylesheet">

	</head>
	<body>
		<form name='form' method="post">
			<input type="hidden" name="codeGroupSeq">
			<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
		
			<%@include file="../../../infra/includeV1/xdminSetting.jsp" %>
			<div class="main-content">
				<h1><i class="fa-solid fa-user"></i> CodeGroup</h1>
					<div class="serach-box">
						<p> 
							<select style="width:30%;"></select>
							<select style="width:30%;"></select>
							<select style="width:30%;"></select>
						</p>
						<p>
							<input type="text" style="width:49.5%;">
							<input type="text" style="width:49.5%;">
						</p>
						<p>
							<input type="text" style="width:70%;">
							<button type="submit"><i class="fa-solid fa-magnifying-glass"></i></button>
							<button><i class="fa-solid fa-rotate-left"></i></button>
						</p>
					</div>
					<p>
					<div class='table-box'>
						<table>
							<thead>
								<tr>
									<th style='width:3%;'><input type='checkbox'></th>
									<th style='width:5%;'>#</th>
									<th style='width:5%;'>Seq</th>
									<th>코드그룹 코드</th>
									<th>코드그룹 이름</th>
									<th>코드그룹 이름(ENG)</th>
									<th>코드그룹 순서</th>
									<th>코드그룹 사용</th>
									<th>삭제여부</th>
									<th>등록일</th>
									<th>수정일</th>
								</tr>
							</thead>	
							<tbody>
								<c:choose>
									<c:when test="${fn:length(list) eq 0}">
										<tr>
											<td colspan='11'>검색 된 코드그룹이 존재하지 않습니다.</td>
										</tr>
										</c:when>
										<c:otherwise>
											<c:forEach items="${list}" var="list" varStatus="status">
												<tr>
													<td><input type='checkbox'></td>
													<td><a href="javascript:goForm(<c:out value="${list.codeGroupSeq }"/>)" class="text-decoration-none"><c:out value="${list.codeGroupSeq }"/></a></td>
													<td><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
													<td><c:out value="${list.codeGroupOrder }"/></td>
													<td><c:out value="${list.codeGroupName }"/></td>
													<td><c:out value="${list.codeGroupNameEng }"/></td>
													<td><c:out value="${list.codeGroupOrder }"/></td>
													<td><c:out value="${list.codeGroupUseNY }"/></td>
													<td><c:out value="${list.codeGroupDelNY }"/></td>
													<td><fmt:formatDate value="${list.codeGroupRegdate }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
													<td><fmt:formatDate value="${list.codeGroupUpdate }" pattern="yyyy-MM-dd hh:mm:ss"/></td>
												</tr>
											</c:forEach>
									</c:otherwise>
								</c:choose>
							</tbody>				
						</table>
					</div>
					<div class='pagination-box'>
						<span>
							<span class='pagination1'>Rows per page:</span>
							<div class="select-style">
								<select id= "changeRowNum" name="changeRowNum">
									<option value=10 <c:if test="${vo.rowNumToShow eq 10}">selected</c:if>>10</option>
									<option value=30 <c:if test="${vo.rowNumToShow eq 30}">selected</c:if>>30</option>
									<option value=50 <c:if test="${vo.rowNumToShow eq 50}">selected</c:if>>50</option>
									<option value="<c:out value="${vo.totalRows}" />" <c:if test="${vo.rowNumToShow eq vo.totalRows}">selected</c:if>>ALL</option>
								</select>
							</div>
						</span>
						<span class='pagination1'>
							<c:choose>
								<c:when test="${vo.endRnumForMysql ge vo.totalRows }">
									${vo.startRnumForMysql + 1}-${vo.totalRows} of ${vo.totalRows}
								</c:when>
								<c:otherwise>
						  			${vo.startRnumForMysql + 1}-${vo.endRnumForMysql} of ${vo.totalRows}
						  		</c:otherwise>
						  	</c:choose>
						</span>
						<span class='pagination1'>
							<c:choose>
								<c:when test="${vo.thisPage gt 1}">
	                				<a href="javascript:goList(${vo.thisPage - 1})"><i class="fa-solid fa-chevron-left" style="color:#0095a8;"></i></a>
	                			</c:when>
	                			<c:otherwise>
	                				<i class="fa-solid fa-chevron-left"></i>
	                			</c:otherwise>
	                		</c:choose>
	                		<c:choose>
							<c:when test="${vo.thisPage ne vo.totalPages}">
					 			<a href="javascript:goList(${vo.thisPage + 1})"><i class="fa-solid fa-angle-right" style="color:#0095a8;"></i></a>
					 		</c:when>
	                			<c:otherwise>
	                			<i class="fa-solid fa-angle-right"></i>
	                			</c:otherwise>
	                		</c:choose>
				 		</span>
					</div>
					<div class='button-box'>
						<button class='plusbtn' id='btnForm'><i class="fa-solid fa-user-plus"></i></button>
						<button class='minusbtn'><i class="fa-solid fa-user-minus"></i></button>
					</div>					
				</p>
			</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		
		<script type="text/javascript">		
			$("#changeRowNum").on("change", function(){
				$("input:hidden[name=rowNumToShow]").val($("#changeRowNum option:selected").val());
				form.attr("action", goUrlList).submit();
			}); 
			
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
		  		  
		    var goUrlList = "/xdmin/codegroup";
		    var goUrlForm = "/xdmin/codegroupform";
			var form = $("form[name=form]")
			var seq = $("input:hidden[name=codeGroupSeq]");
			
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
		    	seq.val(keyValue);
				form.attr("action", goUrlForm).submit();
			}
		</script>
	</body>
</html>
