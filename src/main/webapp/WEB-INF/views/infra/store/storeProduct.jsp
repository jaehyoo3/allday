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
		<form name="form">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			<%@include file="productVo.jsp"%>
			<div id='content'>
			<jsp:useBean id="XdminCodeServiceImpl" class="com.bluebee.modules.xdmincode.XdminCodeServiceImpl"/>
			<c:set var="listCodeType" value="${XdminCodeServiceImpl.selectListCachedCode('9')}"/>
			<input type="hidden" id="memberSeq" name="memberSeq" value="<c:out value="${sessSeq}" />">
			<input type="hidden" name="productSeq" id="productSeq" value="<c:out value="${item.productSeq}"/>">
			<input type="hidden" name="productName" id="productName" value="<c:out value="${item.productName}"/>">
			<p>Home</p>
				<div class="productimg">
					<c:forEach items="${mainImgList}" var="list" varStatus="status">
							<c:if test="${list.idefaultNy eq 1}">
								<img src='<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>' style="width:80%; height: 50%;">
								<input type="hidden" name="path" value="<c:out value="${list.path}"/>">
								<input type="hidden" name="uuidName" value="<c:out value="${list.uuidName}"/>">
							</c:if>
					</c:forEach>
				</div>
				<div class="productbuy">
					<div class='title'>
					<c:out value="${item.productName }"/> | 
						<c:forEach items="${listCodeType}" var="listCode" varStatus="statusGender">
							<c:if test="${item.productType eq listCode.codeOrder}">
								<c:out value="${listCode.codeName}"/>
								<input type="hidden" name="productType" value="<c:out value="${listCode.codeName}"/>">
							</c:if>
						</c:forEach>
					</div>
					<div>
					<div class='price'>￦<fmt:formatNumber value="${item.productPrice}" pattern="##,###" /></div>
					<input type="hidden" name="productPrice" value="<c:out value="${item.productPrice}"/>">
					<hr>
					<div class='express'>배송방법: 택배</div>
					<br>
					<p style="font-size:12px; font-weight:bold;">색상 *</p>
					<c:forEach items="${ColorList}" var="list" varStatus="status">
						<label for="<c:out value="${list.colorName}" />">
							<input class="product_color" data-color-hex="<c:out value="${list.colorName}" />" type="radio" value="<c:out value="${list.colorSeq}" />" name="color"/>
						</label>
					</c:forEach>
					<br>
					<p style="font-size:12px; font-weight:bold;">사이즈 *</p>
				    <select id="sel_blank" class="form-select size">
				        <option>색상을 선택해주세요</option>
				    </select>
				    <c:forEach items="${ColorList}" var="list" varStatus="status">
					    <select class="size form-select" onchange="showValue(this)" id="<c:out value="${list.colorSeq}" />">
					    <option>사이즈를 선택해주세요</option>
				    		<c:forEach items="${SizeList}" var="SizeList" varStatus="Status">
				    			<c:if test="${list.colorSeq eq SizeList.color_colorseq}">
				    				<option value="${SizeList.detailSeq}"><c:out value="${SizeList.sizeName}"/></option>
				        		</c:if>
				        	</c:forEach>
					    </select>
					</c:forEach>
					<br>
					<input type='hidden' id="detailSeq" name="detailSeq">
					<div class="row">
				 		<div class="col">
							<button type="button" id="productBuy" class="btn text-white fw-bold col-12" style="background-color:#2c3e50; height: 50px;">구매하기</button>
						</div>
						<div class="col">
							<button type="button" id="basketBtn" class="btn btn-outline-dark fw-bold col-12" style="height: 50px;">장바구니</button>
						</div>
						<div class="col">
							<c:choose>
								<c:when test="${wishListCount eq 0}">
									<button type="button" class="btn btn-outline-dark fw-bold col-12" style="height: 50px;" id="wishInst">♡ ${wishListCount}</button>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-outline-dark fw-bold col-12" style="height: 50px;" id="wishInst">♥ ${wishListCount}</button>
								</c:otherwise>
							</c:choose>
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
					<c:forEach items="${detailImgList}" var="list" varStatus="status">
						<c:if test="${list.article eq 1 and list.sort eq 1}">
							<img src='<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>' style="width:100%;"> 
						</c:if>
					</c:forEach>
					<div id="id_test_div" style="display:none;">
						<c:forEach items="${detailImgList}" var="list" varStatus="status">
							<c:if test="${list.article eq 1 and list.sort ne 1}">
								<img src='<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>' style="width:100%;">
							</c:if>
						</c:forEach>
					</div>
						<!-- <div id="id_test_div" style="display:none;"> -->
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
			      <th>소재</th>
			      <td><c:out value="${item.informationType}" /></td>
			    </tr>
			    <tr>
			      <th scope="row">색상</th>
			      <td><c:out value="${item.informationColor}" /></td>
			    </tr>
			        <tr>
			      <th scope="row">크기</th>
			      <td><c:out value="${item.informationSize}" /></td>
			    </tr>
			        <tr>
			      <th scope="row">제조사</th>
			      <td><c:out value="${item.informationCompany}" /></td>
			    </tr>
			       <tr>
			      <th scope="row">제조국</th>
			      <td><c:out value="${item.informationCountry}" /></td>
			    </tr>
			        <tr>
			      <th scope="row">취급시 주의사항</th>
			      <td><c:out value="${item.informationWarning }" /></td>
			    </tr>
			        <tr>
			      <th scope="row">품질보증기준</th>
			      <td><c:out value="${item.informationQuality}" /></td>
			    </tr>
			        <tr>
			      <th scope="row">A/S책임자·전화번호</th>
			      <td><c:out value="${item.informationAS}" /></td>
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
				<c:forEach items="${reviewList}" var="reviewList" varStatus="status">
					<div class="comment" style="margin: 0">
						<ul>
							<li style="width:80%"><c:out value="${reviewList.member_memberSeq }" /></li>
							<li style="width:10%;"><c:out value="${reviewList.score }" /></li>
							<li><c:out value="${reviewList.reviewRegDate }" /></li>
						</ul>
						<ul>
							<li style="width:25%; height:300px;"><img src="../img/knit.jpg" style="width:100%; height:100%;"></li>
							<li style="width:70%; height:300px;"><c:out value="${reviewList.content }" /></li>
						</ul>
					</div>
				</c:forEach>
				<hr>
				<ul>
				<span class="text-bold">별점을 선택해주세요</span>
					<input type="radio" name="Score" value="5" id="Score"><label for="rate5">★</label>
					<input type="radio" name="Score" value="4" id="rate4"><label for="rate4">★</label>
					<input type="radio" name="Score" value="3" id="rate3"><label for="rate3">★</label>
					<input type="radio" name="Score" value="2" id="rate2"><label for="rate2">★</label>
					<input type="radio" name="Score" value="1" id="rate1"><label for="rate1">★</label>
				</ul>
				<ul>
					<li style="width:80%;"><textarea name="Content" id="Content" style="width:100%;"></textarea></li>
					<li style="width:10%;"><button type="button" id="reviewInst">등록</button></li>
				</ul> 
			</div>
			<br>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<!-- jsLink s  -->
			<%@include file="../../infra/includeV1/jsLink.jsp"%>
		<!-- jsLink e --> 
		
		<script type="text/javascript">
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=memberSeq]");
		var pdseq = document.getElementById('productSeq').value;
		
			$("#reviewInst").on("click", function(){
	 			$.ajax({
					async: false 
					,cache: false
					,type: "post"
					,url: "/reviewProc"
					,data: {"member_memberSeq" : $("#memberSeq").val(), "product_Seq" : $("#productSeq").val(), "Score" : 3, "Content" : $("#Content").val()} 
					,success: function(response) {
						if(response.rt == "success") {
						alert("댓글 입력되었습니다.");
						$("#review").load("productView?&productSeq="+pdseq+" #review>*");
						} else {
						alert("구매한 상품만 리뷰 작성이 가능합니다")
						}

					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				}); 
			});
			
			$("#wishInst").on("click", function(){
	 			$.ajax({
					async: false
					,cache: false
					,type: "post"
					,url: "/wishProc"
					,data: {"member_memberSeq" : $("#memberSeq").val(), "product_Seq" : $("#productSeq").val()} 
					,success: function(response) {
						if(response.rt == "success") {
							alert("위시리스트에 등록되었습니다.");
							$('#wishInst').text("♥ ")
						} else if(response.rt == "delete"){
							alert("위시리스트에 등록되었습니다.");
							$('#wishInst').text('♡');
						} else{
							alert("오류");
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				}); 
			});
			var bkNum = 1;
 			$("#basketBtn").on("click", function(){
	 			$.ajax({
					async: false 
					,cache: false
					,type: "post"
					,url: "/basketProc"
					,data: {"member_memberSeq" : $("#memberSeq").val(), "productDetail_detailSeq" : $("#detailSeq").val(), "basketDelNy" : 0, "basketNum" : bkNum} 
					,success: function(response) {
						console.log(response);
						if(response.rt == "success") {
							alert("추가완료")
						} else {
/* 							 if(confirm("이미 같은 상품이 장바구니에 존재합니다. 수량을 추가하시겠습니까 ?")) {
								 var bkNum = bkNum + 1;
								 alert("추가하였습니다")
								 $(".data").
							 } else {
							 	alert('아니오를 누르셨습니다');
							 } */
							 alert("이미 같은 상품이 존재함")
							}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					}
				}); 
			}); 
		var productBuy = 'storeBuy';

		var form = $("form[name=form]")

		
		$("#productBuy").on("click", function(){
			form.attr("action", productBuy).submit();
		});

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
		
		$(document).ready(function() {
		       $(".product_color").each( function(index){
		         var color = $(this).attr('data-color-hex');
		         $(this).css('background',color);
		               
		       });
		});
		
		$(function(){
		    $(".size").hide(); // select class가 size 전부 안보이게
		    $("#sel_blank").show(); // 선택해주세요 셀렉트는 보이게
		    
		    $("input[name='color']").change(function(){ // 라디오 버튼 클릭 시
		        var chk = $("input[name='color']:checked").val(); // 라디오 버튼 선택 값
		        $(".size").hide(); // 클릭할 때마다 셀렉트박스 숨기고
		        $("#"+chk).show(); // 라디오버튼에 선택 된 값 id 만 보이게
		    });
		});
		const showValue = (target) => {
			  const value = target.value;
			  
			  document.getElementById("detailSeq").value = value;
			}
		</script>
	</body>
</html>
