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
		<form>
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
				<h2>코드그룹 관리</h2>
				<div class='search'>
					<input type="textbox"style='width:30%;'> <button>검색</button>
					<br>
					<span style="cursor:pointer;" onclick="showHide('id_test_div');"> 
						<a class="myButton"id="subscriberBtn" onclick='change()' style="font-size:8px;">검색조건</a>
					</span>	
					<div id="id_test_div" style="display:none;">
						<div class=' detail'>
							<label>코드:</label> 
							<select>
								<option>검색기준</option>
								<option>코드그룹 코드</option>
								<option>코드그룹 이름(한글)</option>
								<option>코드그룹 이름(영문)</option>
							</select>
							<label>삭제여부:</label>
							<select>
								<option>사용여부</option>
								<option>Y</option>
								<option>N</option>
							</select>
							<br>
							<label>기간:</label>
							<select>
								<option>기준</option>
								<option>등록일</option>
								<option>수정일</option>
							</select>
							<input type='text' class='startDate' placeholder='시작일'>
 							<input type='text' class='endDate' id='endDate'  placeholder='종료일'>
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
							<th><input type='checkbox'></th>
							<th>#</th>
							<th>코드그룹 코드</th>
							<th>코드그룹 이름(한글)</th>
							<th>코드그룹 이름(영문)</th>
							<th>코드갯수</th>
							<th>등록일</th>
							<th>수정일</th>
						</tr>
					</thead>	
					<tbody>
						<tr>
							<td><input type='checkbox'></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
						</tr>
					</tbody>				
				</table>
			<ul class="pagination modal-5">
				  <li><a href="#" class="prev fa fa-arrow-left"> </a></li>
				  <li> <a href="#" class="active">1</a></li>
				  <li> <a href="#">2</a></li>
				  <li> <a href="#">3</a></li>
				  <li> <a href="#">4</a></li>
				  <li> <a href="#">5</a></li>
				  <li> <a href="#">6</a></li>
				  <li> <a href="#">7</a></li>
				  <li> <a href="#">8</a></li>
				  <li> <a href="#">9</a></li>
				  <li><a href="#" class="next fa fa-arrow-right"></a></li>
				</ul>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
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
		<script type="text/javascript">
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
		 </script>
	</body>
</html>
