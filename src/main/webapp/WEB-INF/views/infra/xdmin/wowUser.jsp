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
			<input type="hidden" name="memberSeq">
			<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
			<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
			
			<jsp:useBean id="XdminCodeServiceImpl" class="com.bluebee.modules.xdmincode.XdminCodeServiceImpl"/>
			<c:set var="listCodeGender" value="${XdminCodeServiceImpl.selectListCachedCode('2')}"/>
			<c:set var="listCodeGrade" value="${XdminCodeServiceImpl.selectListCachedCode('8')}"/>
		
		<nav class="navbar navbar-inverse navbar-global navbar-fixed-top">
			<div class="container-fluid">
		    	<div class="navbar-header">
		          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
		            <span class="sr-only">Toggle navigation</span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		            <span class="icon-bar"></span>
		          </button>
		          <a class="navbar-brand" href="#">BlueBeE</a>
		        </div>
		        <div id="navbar" class="collapse navbar-collapse">
		          <ul class="nav navbar-nav navbar-user navbar-right">
		            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Admin</a></li>
		            <li><a href="#about"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
		          </ul>
		        </div><!--/.nav-collapse -->
		      </div>
		    </nav>
		<nav class="navbar-primary">
		  <a href="#" class="btn-expand-collapse"><i class="fa-solid fa-backward-step"></i></a>
		  <ul class="navbar-primary-menu">
		    <li>
		      <a href="#"><i class="fa-solid fa-user"></i> <span class="nav-label">Member</span></a>
		      <a href="#"><i class="fa-solid fa-cart-flatbed"></i> <span class="nav-label">Product</span></a>
		      <a href="#"><i class="fa-solid fa-code"></i> <span class="nav-label">Code</span></a>
		      <a href="#"><i class="fa-solid fa-folder-open"></i> <span class="nav-label">CodeGroup</span></a>
		    </li>
		  </ul>
		</nav>
		<div class="main-content">
			<h1><i class="fa-solid fa-user"></i> Member</h1>
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
						<button><i class="fa-solid fa-magnifying-glass"></i></button>
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
								<th>이름</th>
								<th>아이디</th>
								<th>닉네임</th>
								<th>전화번호</th>
								<th>생년월일</th>
								<th>이메일</th>
								<th>성별</th>
								<th>등급</th>
								<th>가입일</th>
							</tr>
						</thead>	
						<tbody>
							<c:forEach items="${list}" var="list" varStatus="status">
								<tr>
									<td><input type='checkbox'></td>
									<td><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
									<td><c:out value="${list.memberSeq }"/></td>
									<td><c:out value="${list.memberName }"/></td>
									<td><a href="javascript:goForm(<c:out value="${list.memberSeq }"/>)" class="text-decoration-none"><c:out value="${list.memberID }"/></a></td>
									<td><c:out value="${list.memberNick }"/></td>
									<td><c:out value="${list.memberMobile }"/></td>
									<td><c:out value="${list.memberDob }"/></td>
									<td><c:out value="${list.memberEmail }"/></td>
									<td>
										<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
											<c:if test="${list.memberGender eq listGender.codeOrder}"><c:out value="${listGender.codeName}"/></c:if>
										</c:forEach>
									</td>
									<td>
		 								<c:forEach items="${listCodeGrade}" var="list2" varStatus="statusGender">
											<c:if test="${list.memberGrade eq list2.codeOrder}"><c:out value="${list2.codeName}"/></c:if>
										</c:forEach>
									</td>
									<td><c:out value="${list.memberRegdate }"/></td>
								</tr>
							</c:forEach>
						</tbody>				
					</table>
				</div>
				<div class='pagination-box'>
					<span>
						<span class='pagination1'>Rows per page:</span>
						<div class="select-style">
							<select name="rowNumToShow">
								<option value=10 <c:if test="${vo.rowNumToShow == 10}">selected</c:if>>10</option>
								<option value=30 <c:if test="${vo.rowNumToShow == 30}">selected</c:if>>30</option>
								<option value=50 <c:if test="${vo.rowNumToShow == 50}">selected</c:if>>50</option>
							</select>
						</div>
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
						<c:if test="${vo.startPage gt vo.pageNumToShow}">
                			<a class="prev fa fa-arrow-left" href="javascript:goList(${vo.startPage - 1})"></a>
						</c:if>
						<c:if test="${vo.endPage ne vo.totalPages}">  
				 			<a href="javascript:goList(${vo.endPage + 1})" class="next fa fa-arrow-right"></a></li>
				 		</c:if>
				 		</span>
					</span>
					
				<%-- 	<ul class="pagination modal-5">
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
				  				<li> <a href="javascript:goList(${i.index})" class="active">${i.index}</a></li>
				  			</c:when>
							<c:otherwise>  
				 				<li> <a href="javascript:goList(${i.index})">${i.index}</a></li>
				 			</c:otherwise>
				 		</c:choose>
				 	</c:forEach>
				 	<c:if test="${vo.endPage ne vo.totalPages}">  
				  <li><a href="javascript:goList(${vo.endPage + 1})" class="next fa fa-arrow-right"></a></li>
				 	</c:if>
				</ul> --%>
				</div>
			</p>
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
