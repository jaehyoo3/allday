<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<meta charset='uTF-8'> 
		<meta name ='viewport' content='width=device-width, initial-scaLe=1.0'>
		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/storeProduct.css" rel="stylesheet" />
	</head>
	
	<body>
		<form>
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			<div id='content'>
			<jsp:useBean id="XdminCodeServiceImpl" class="com.bluebee.modules.xdmincode.XdminCodeServiceImpl"/>
			<c:set var="listCodeType" value="${XdminCodeServiceImpl.selectListCachedCode('9')}"/>
			<p>Home > Top</p>
				<div class="productimg">
					<img src='/resources/Images/img/knit.jpg' style="width:80%;">
				</div>
				<div class="productbuy">
					<div class='title'><c:out value="${item.productName }"/> | 
						<c:forEach items="${listCodeType}" var="listCode" varStatus="statusGender">
							<c:if test="${item.productType eq listCode.codeOrder}"><c:out value="${listCode.codeName}"/></c:if>
						</c:forEach>
					
					</div>
					<div>
					<div class='price'><fmt:formatNumber value="${item.productPrice}" pattern="##,###" /></div>
					<hr>
					<div class='express'>배송방법: 택배</div>
					<br>
					<p style="font-size:12px; font-weight:bold;">색상 *</p>
					<label for="red">
						  <input class="product_color" data-color-hex="red" type="radio" name="color"/>
					</label>
					<label for="blue">
						<input class="product_color" data-color-hex="blue" type="radio" name="color"/>
					</label>
					<label for="green">
						<input class="product_color" data-color-hex="green" type="radio" name="color"/>
					</label>
					<br>
					<p style="font-size:12px; font-weight:bold;">사이즈 *</p>
					<select class="form-select" aria-label="Default select example">
					  <option selected>사이즈(필수)</option>
					  <option value="1">S (90)</option>
					  <option value="2">M (95)</option>
					  <option value="3">L (100)</option>
					</select>
					<br>
					<div class="row">
				 		<div class="col">
							<button type="button" class="btn text-white fw-bold col-12" style="background-color:#2c3e50; height: 50px;" onClick="location.href='storeBuy'">구매하기</button>
						</div>
						<div class="col">
							<button type="button" class="btn btn-outline-dark fw-bold col-12" style="height: 50px;">장바구니</button>
						</div>
						<div class="col">
							<button type="button" class="btn btn-outline-dark fw-bold col-12" style="height: 50px;">♡</button>
						</div>
					</div>
					</div>
				</div>
			</div>
			<div id='information'>
			<hr>
				<div class='infornav'>
					<ul>
						<li><a href='#information'>상세정보</a></li>
						<li><a href='#refund'>반품/교환</a></li>
						<li><a href='#review'>구매평</a></li>
					</ul>
					<br>
					</div>
				<div class="imagee">
					<img src='/resources/Images/img/01.jpg' style='width:100%'>
					<div id="id_test_div" style="display:none;">
	   					<img src='/resources/Images/img/02.jpg' style='width:100%'>
						<img src='/resources/Images/img/03.jpg' style='width:100%'>
					</div>
					<span style="cursor:pointer;" onclick="showHide('id_test_div');"> 
						<a class="myButton"id="subscriberBtn" onclick='change()'>상품정보 더보기 ▽</a>
					</span>				
				</div>
				<hr>
			  <table class="table table-striped">
			      <thead>
			    <tr>
			      <th colspan='4'>상품정보 제공공시</th>
			    </tr>
			  </thead>
			  <tbody>
			    <tr>
			      <th >종류</th>
			      <td style="width:80%;">.</td>
			    </tr>
			    <tr>
			      <th>소재</th>
			      <td>.</td>
			    </tr>
			    <tr>
			      <th scope="row">색상</th>
			      <td>.</td>
			    </tr>
			        <tr>
			      <th scope="row">크기</th>
			      <td>.</td>
			    </tr>
			        <tr>
			      <th scope="row">제조사</th>
			      <td>.</td>
			    </tr>
			       <tr>
			      <th scope="row">제조국</th>
			      <td>.</td>
			    </tr>
			        <tr>
			      <th scope="row">취급시 주의사항</th>
			      <td>.</td>
			    </tr>
			        <tr>
			      <th scope="row">품질보증기준</th>
			      <td>.</td>
			    </tr>
			        <tr>
			      <th scope="row">A/S책임자·전화번호</th>
			      <td>.</td>
			    </tr>
			  </tbody>
			  </table>
			</div>
			<br>
			<div id='refund'>
			<h3>반품 / 교환</h3>
			  <table class="table">
				    <tr>
				      <th scope="col">반품 / 교환 택배사</th>
				      <th scope="col" colspan="3" style="width:80%;">로젠택배</th>
				    </tr>

				    <tr>
				      <th scope="row">반품 배송비(편도)</th>
				      <td colspan="3" style="width:80%;">₩10,000</td>
				    </tr>
				    <tr>
				      <th scope="row">교환 배송비(왕복)</th>
				      <td>₩20,000</td>
				    </tr>
				    <tr>
				      <th scope="row">반품/교환 주소지</th>
				      <td>.</td>
				    </tr>
					<tr>
				      <th scope="row">반품/교환 신청 기준일</th>
				      <td>상품 수령 후 7일 이내 (단, 제품이 표시광고 내용과 다르거나 불량 등 계약과 다르게 이행된 경우는 제품 수령일로부터 3개월이내나 그 사실을 안 날 또는 알 수 있었던 날부터 30일 이내 교환/반품이 가능)</td>
				    </tr>
				</table>
			
			</div>
			<div id='review'>
			<h3>구매평</h3>
				<div class="d-flex bd-highlight mb-3">
					<div class="me-auto p-2 bd-highlight">
				 		<input type="checkbox" id='photoreview'>
						<label for='photoreview'>포토리뷰만 보기</label>
					</div>
					 <div class="p-2 bd-highlight">
				 	<button type="btn">구매평 작성</button>
				 	</div>
				</div>
				<hr>
				<center><span> 작성된 내용이 없습니다.</span></center>
				<hr>
			</div>
			<br>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
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

			    if(subs.innerText == '상품정보 더보기 ▽') {
			        subs.innerText = '상품정보 닫기 △';
			    } else subs.innerText ='상품정보 더보기 ▽';
		};
		
		$(document).ready( function() {
		       $(".product_color").each( function(index){
		         var color = $(this).attr('data-color-hex');
		         $(this).css('background',color);
		               
		       });
		});
		

		</script>
	</body>
</html>
