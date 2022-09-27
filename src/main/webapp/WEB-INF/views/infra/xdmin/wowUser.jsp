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
		<link href="/resources/Images/xdminUser.css" rel="stylesheet">
	</head>
	
	<body>
		<form name='form' method="post">
			<div id='haeder'></div>
			<input type="hidden" name="memberSeq">
			<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			
			<jsp:useBean id="XdminCodeServiceImpl" class="com.bluebee.modules.xdmincode.XdminCodeServiceImpl"/>
			<c:set var="listCodeGender" value="${XdminCodeServiceImpl.selectListCachedCode('2')}"/>
			
			<input type="checkbox" id="menu-toggle"/>
			<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
			<div class="content-container">
			<div class="navbar">
				<a href="#" id="logo"> <img src="../img/logo2.png" height="60"
					onClick="location.href='main.html'">
				</a>
			</div>
			<div id='content'>
			<h3>회원관리</h3>
				<span>total:<c:out value="${vo.totalRows}"/></span>
				<select style="float:right;">
					<option>10</option>
					<option>20</option>
					<option>30</option>
				</select>
				<table>
					<thead>
						<tr>
							<th style='width:3%;'><input type='checkbox'></th>
							<th style='width:5%;'>#</th>
							<th style='width:5%;'>Seq</th>
							<th>이름</th>
							<th>아이디</th>
							<th>닉네임</th>
							<th>전화번호</th>
							<th>생년월일</th>
							<th>이메일</th>
							<th>성별</th>
							<th>등급</th>
							<th>가입일</th>
							<th>최근 접속일</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${list}" var="list" varStatus="status">
						<tr>
							<td><input type='checkbox'></td>
							<td><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
							<td><c:out value="${list.memberSeq }"/></td>
							<td><c:out value="${list.memberName }"/></td>
							<td><a href="javascript:goForm(<c:out value="${list.memberSeq }"/>)" class="text-decoration-none"><c:out value="${list.memberName }"/></a></td>
							<td><c:out value="${list.memberNick }"/></td>
							<td><c:out value="${list.memberMobile }"/></td>
							<td><c:out value="${list.memberDob }"/></td>
							<td><c:out value="${list.memberEmail }"/></td>
							<td>
								<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
									<c:if test="${list.memberGender eq listGender.codeOrder}"><c:out value="${listGender.codeName}"/></c:if>
								</c:forEach>
							</td>
							<td><c:out value="${list.memberGrade }"/></td>
							<td><c:out value="${list.memberRegdate }"/></td>
							<td><c:out value="${list.memberUpdate }"/></td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<div class='Rposition'>
					<button type='button' id="btnForm">+</button>
					<button>-</button>
				</div>
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
				<!-- sideMenu s  -->
					<%@include file="../../infra/includeV1/sideMenu.jsp"%>
				<!-- sideMenu e -->
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
			    var goUrlList = "/xdmin/memberList";
			    var goUrlForm = "/xdmin/memberForm";
			    var goUrlView = "/xdmin/memberView";
			    		    
				var form = $("form[name=form]")
				var seq = $("input:hidden[name=memberSeq]");
		
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
