<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
</>
<html>
	<head>
		<meta charset='uTF-8'> 
		<meta name ='viewport' content='width=device-width, initial-scaLe=1.0'>
		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/storeBuy.css" rel="stylesheet" />
	</head>
	
	<body>
		<form name="form" action="storeInst" method="post">
		<!-- navMenu s  -->
			<%@include file="../../infra/includeV1/Menu.jsp"%>
		<!-- navMenu e --> 
		<input type="hidden" name="memberAddr_addrSeq" value="9">
		<jsp:useBean id="XdminCodeServiceImpl" class="com.bluebee.modules.xdmincode.XdminCodeServiceImpl"/>
		<c:set var="listCodeType" value="${XdminCodeServiceImpl.selectListCachedCode('9')}"/>
			<div id='content'>
				<div class='buy'>
					<h3>결제하기</h3>
					<br>
					<div class='b1'>
						<h4>주문상품정보</h4>
						<div class='infor'>
						<c:forEach items="${list}" var="list" varStatus="status">
							<div class='boxx1'>
								<c:if test="${list.idefaultNy eq 1}">
									<img src="<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>">
								</c:if>
								<div class='productt'>
									<span>
										<c:out value="${list.productName }" />
										<input type='hidden' name="productDetail_detailSeq" value="<c:out value="${list.detailSeq }" />">
									</span> <div class="vr"></div>
									<span>
										<c:forEach items="${listCodeType}" var="listCode" varStatus="statusGender">
											<c:if test="${list.productType eq listCode.codeOrder}">
												<c:out value="${listCode.codeName}"/>
											</c:if>
										</c:forEach>
									</span>
									<p><c:out value="${list.colorName }"/> / <c:out value="${list.sizeName }"/>
									<p>￦<c:out value="${list.productPrice }" /></p>
									<input type="hidden" name="orderPrice" value="<c:out value="${list.productPrice }" />">
								</div>
							</div>
							</c:forEach>
							<h4>배송비 무료</h4>
						</div>
					</div>
					<c:set var="sum" value="0" />
					<c:forEach items="${list}" var="list">
						<c:set var="sum" value="${sum + list.productPrice}"/>
					</c:forEach>
					<div class='a1'>
						<h4>주문요약</h4>
						<div class='orders'>
							<div class="d-flex mb-1">
								<div class="p-2 align-self-center me-auto"><span>상품가격</span></div>
								<div class="p-2 align-self-center"><span>￦<c:out value="${sum}"/></span></div>
							</div>
							<div class="d-flex mb-1">
								<div class="p-2 align-self-center me-auto"><span>배송비</span></div>
								<div class="p-2 align-self-center"><span>무료</span></div>
							</div>
							<div class="d-flex mb-1">
								<div class="p-2 align-self-center me-auto"><span>포인트</span></div>
								<div class="p-2 align-self-center">
									<div class="input-group mb-3">
  										<input type="text" class="form-control" style="width:100px" placeholder="0p">
  										<button class="btn btn-primary" id="basic-addon1">사용</span>
									</div>
								</div>
							</div>
							<hr>
							<div class="d-flex">
								<h4 class='me-auto'>총 주문금액</h4>
								<h4><c:out value="${vo.productPrice }" /></h4>
								<input type="hidden" name="price" value="<c:out value="${sum}"/>">
							</div>
						</div>
					</div>
					<div class='b2'>
						<h4>주문자정보</h4>
						<div class='userr'>
						    <div class="row">
						        <div class="col-md-3"><h5><c:out value="${sessName}" /></h5></div>
						    </div>
						    <div class="row">
						        <div class="col-md-9"><span><br></span></div>
						        <div class="col">
						        	<button type="button" class="btn btn-secondary btn-sm">수정</button>
						        </div>
						    </div>
						    <div class="row">
						        <div class="col-md-3"><span></span></div>
						    </div>
						</div>
					</div>
					<div class='a2'>
						<h4>결제수단</h4>
						<div class='userr'>
						<div class="d-flex flex-row mb-1">
							<div class="form-check me-4">
							  <input class="form-check-input" type="radio" name="payment" id="flexRadioDefault1" value="1">
							  <label class="form-check-label" for="flexRadioDefault1">
							    신용카드
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="radio" name="payment" id="flexRadioDefault2" value="2" checked>
							  <label class="form-check-label" for="flexRadioDefault2">
							    무통장입금
							  </label>
							</div>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="payment" id="flexRadioDefault3" value="3">
						  <label class="form-check-label" for="flexRadioDefault3">
						    가상계좌
						  </label>
						</div>
						</div>
					</div>
					<div class='b3'>
						<h4>배송정보</h4>
						<div class="d-flex flex-row">
							<div class="form-check align-self-center">
							   <div class="p-1 "><input class="form-check-input" type="checkbox" value="" id="buyorder">
							  <label class="form-check-label" for="buyorder">
							    주문자 정보와 동일
							  </label></div>
							</div>
							 <div class="p-1"><button type="button" class="btn btn-secondary btn-sm">주소검색</button></div>
						</div>
						<div class="d-flex flex-row mb-2">
							<div class="p-1"><input class="form-control" type="text" placeholder="수령인" value="<c:out value="${item.reciver}" />"></div>
							<div class="p-1"><input class="form-control" type="text" placeholder="연락처" value="<c:out value="${item.memberMobile}" />"></div>
						</div>
						<div class="d-flex flex-row align-self-center">
							<div class="p-1"><input class="form-control" type="text" placeholder="우편번호" value="<c:out value="${item.zipcode}" />"></div>
							<div class="p-1"><button type="button" class="btn btn-secondary btn-sm">주소찾기</button></div>
						</div>
						<div class="p-1"><input class="form-control" type="text" placeholder="주소" value="<c:out value="${item.addr1}" />"></div>
						<div class="p-1"><input class="form-control" type="text" placeholder="상세주소" value="<c:out value="${item.addr2}" />"></div>
<!-- 					<div class="p-1">
							<input class="form-check-input mb-3" type="checkbox" value="" id="buyorder">
							<label class="form-check-label" for="buyorder">배송지 목록에 추가</label>
						</div> -->
						<h5>배송메모</h5>
						<select class="form-select mb-1" name="orderMemo">
						  <option>배송 메모를 선택 해주세요</option>
						  <option value="1" selected>배송 전에 미리 연락 바랍니다.</option>
						  <option value="2">부재시 경비실에 맡겨주세요.</option>
						  <option value="3">부재시 전화나 문자를 남겨주세요.</option>
						</select>
					</div>
					<div class='a3'>
					<div class="d-grid gap-2 col-12">
						<button type="submit" class="btn text-white fw-bold" style="background-color:rgb(44, 62, 80);"onClick="location.href='storeBuySuccess'">결제하기</button>
					</div>
					</div>
				</div>
			</div>
			<!-- footer s  -->
				<%@include file="../../infra/includeV1/footer.jsp"%>
			<!-- footer e --> 
		</form>
		<!-- jsLink s  -->
			<%@include file="../../infra/includeV1/jsLink.jsp"%>
		<!-- jsLink e --> 
		<script>
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=memberSeq]");
		</script>
	</body>
</html>
