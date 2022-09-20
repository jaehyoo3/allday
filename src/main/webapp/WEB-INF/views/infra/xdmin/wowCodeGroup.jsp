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
		<link href="/resources/Images/xdminCode.css" rel="stylesheet">
	</head>
	<body>
		<form name='form' method='post'>
			<input type="checkbox" id="menu-toggle"/>
			<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
			<div class="content-container">
			<div id='haeder'></div>
			<input type="hidden" name="codeGroupSeq">
			<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			
			<div class="navbar">
				<a href="#" id="logo"><img src="/resources/Images/img/logo2.png" height="60" onClick="location.href='main'"></a>
			</div>
			<div id='content'>
				<h2>코드그룹 관리</h2>
				<div class='search'>
					<input type='text' id="shValue" name="shValue" value="<c:out value="${vo.shValue }"/>" placeholder="검색어">
					<input type="submit" value='검색'>
					<br>
					<span style="cursor:pointer;" onclick="showHide('id_test_div');"> 
						<a class="myButton"id="subscriberBtn" onclick='change()' style="font-size:8px;">검색조건</a>
					</span>	
					<div id="id_test_div" style="display:none;">
						<div class=' detail'>
							<label>코드:</label> 
							<select id="shOption" name="shOption">
								<option value="" <c:if test="${empty vo.shOption }">selected</c:if>>검색구분</option>
								<option value="1" <c:if test="${vo.shOption eq 1}">selected</c:if>>코드그룹 코드</option>
								<option value="2" <c:if test="${vo.shOption eq 2}">selected</c:if>>코드그룹 이름(한글)</option>
								<option value="3" <c:if test="${vo.shOption eq 3}">selected</c:if>>코드그룹 이름(영어)</option>
							</select>
							<label>삭제여부:</label>
							<select id='shDelNy' name='shDelNy'>
								<option value="">검색구분</option>
								<option value='0' <c:if test="${vo.shDelNy eq 0}">selected</c:if>>N</option>
								<option value='1' <c:if test="${vo.shDelNy eq 1}">selected</c:if>>Y</option>
							</select>
							<br>
							<label>기간:</label>
							<select>
								<option>기준</option>
								<option>등록일</option>
								<option>수정일</option>
							</select>
							<input type='text' id='startDate' name='shstartDate' <c:out value="${vo.shstartDate }"/> placeholder='시작일'>
 							<input type='text' id='endDate' name='shendDate' <c:out value="${vo.shendDate }"/> placeholder='종료일'>
						</div>
					</div>
				</div>
				<br>
				<span>total:</span>
				<select style="float:right;">
					<option>10</option>
					<option>20</option>
					<option>30</option>
				</select>
				<table>
					<thead>
						<tr>
							<th style="width:3%;"><input type='checkbox'></th>
							<th style="width:3%;">seq</th>
							<th style="width:3%;">#</th>
							<th style="width:8%;">코드그룹 코드</th>
							<th style="width:12%;">코드그룹 이름(한글)</th>
							<th style="width:12%;">코드그룹 이름(영문)</th>
							<th style="width:8%;">코드그룹 순서</th>
							<th style="width:8%;">코드그룹 사용</th>
							<th style="width:5%;">삭제여부</th>
							<th style="width:16%;">등록일</th>
							<th style="width:16%;">수정일</th>
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
				<button type='button' onClick="location.href='codegroupform'">+</button>
				<!-- pagination s  -->
				<center>
				<%@include file="../../infra/includeV1/pagination.jsp"%>
				</center>
				<!-- pagination e -->
			</div>
			
			<!-- footer s  -->
				<%@include file="../../infra/includeV1/footer.jsp"%>
			<!-- footer e -->
			</div>
				<div class="slideout-sidebar">
			<i class="fa-regular fa-user fa-5x"></i>
			<p>관리자님</p>환영합니다
			<i class="fa-solid fa-x fa-xs"></i>
				<ul>
					<li onClick="location.href='main'">HOME</li>
					<li onClick="location.href='product'">상품관리</li>
					<li onClick="location.href='user'">회원관리</li>
					<li>문의관리</li>
					<li>배송관리</li>
					<li onClick="location.href='code'">코드관리</li>
					<li onClick="location.href='codegroup'">코드그룹관리</li>
				</ul>
			</div>
		</form>
		
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
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
		    var goUrlList = "/xdmin/codegroup";
		    var goUrlForm = "/xdmin/codegroupform";
		    var goUrlView = "/xdmin/codegroupView";
		    		    
			var form = $("form[name=form]")
			var seq = $("input:hidden[name=codeGroupSeq]");
	
			function showHide(id){
			     var objId = document.getElementById(id);
			     if(objId.style.display=="block"){
			        objId.style.display = "none";
			     } else {
			        objId.style.display = "block";
			     }
			} 
			
			function change() {
				const subs = document.getElementById("subscriberBtn")
		
				    if(subs.innerText == '검색조건') {
				        subs.innerText = '닫기';
				    } else subs.innerText ='검색조건';
			};
			
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
				form.attr("action", goUrlView).submit();
			}
		 </script>
	</body>
</html>
