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
		<form>
		<!-- navMenu s  -->
			<%@include file="../../infra/includeV1/Menu.jsp"%>
		<!-- navMenu e --> 
			<div id='content'>
				<div class='buy'>
					<h3>결제하기</h3>
					<br>
					<div class='b1'>
						<h4>주문상품정보</h4>
						<div class='infor'>
							<div class='boxx1'>
								<img src='/resources/Images/img/knit.jpg'>
								<div class='productt'>
									<span>WOODIE T-SHIRT</span> <div class="vr"></div> <span>TOP</span>
									<p>M-95</p>
									<p>￦49,000</p>
								</div>
							</div>
							<h4>배송비 무료</h4>
						</div>
					</div>
					<div class='a1'>
						<h4>주문요약</h4>
						<div class='orders'>
							<div class="d-flex mb-1">
								<div class="p-2 align-self-center me-auto"><span>상품가격</span></div>
								<div class="p-2 align-self-center"><span>￦49,000</span></div>
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
								<h4>￦49,000</h4>
							</div>
						</div>
					</div>
					<div class='b2'>
						<h4>주문자정보</h4>
						<div class='userr'>
						    <div class="row">
						        <div class="col-md-3"><h5>홍길동</h5></div>
						    </div>
						    <div class="row">
						        <div class="col-md-9"><span>010-4556-6282<br></span></div>
						        <div class="col">
						        	<button type="button" class="btn btn-secondary btn-sm">수정</button>
						        </div>
						    </div>
						    <div class="row">
						        <div class="col-md-3"><span>troup@naver.com</span></div>
						    </div>
						</div>
					</div>
					<div class='a2'>
						<h4>결제수단</h4>
						<div class='userr'>
						<div class="d-flex flex-row mb-1">
							<div class="form-check me-4">
							  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
							  <label class="form-check-label" for="flexRadioDefault1">
							    신용카드
							  </label>
							</div>
							<div class="form-check">
							  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
							  <label class="form-check-label" for="flexRadioDefault2">
							    무통장입금
							  </label>
							</div>
						</div>
						<div class="form-check">
						  <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault3" checked>
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
							<div class="p-1"><input class="form-control" type="text" placeholder="수령인"></div>
							<div class="p-1"><input class="form-control" type="text" placeholder="연락처"></div>
						</div>
						<div class="d-flex flex-row align-self-center">
							<div class="p-1"><input class="form-control" type="text" placeholder="우편번호"></div>
							<div class="p-1"><button type="button" class="btn btn-secondary btn-sm">주소찾기</button></div>
						</div>
						<div class="p-1"><input class="form-control" type="text" placeholder="주소"></div>
						<div class="p-1"><input class="form-control" type="text" placeholder="상세주소"></div>
						<div class="p-1">
							<input class="form-check-input mb-3" type="checkbox" value="" id="buyorder">
							<label class="form-check-label" for="buyorder">배송지 목록에 추가</label>
						</div>
						<h5>배송메모</h5>
						<select class="form-select mb-1">
						  <option selected>배송 메모를 선택 해주세요</option>
						  <option value="1">1</option>
						  <option value="2">2</option>
						  <option value="3">3</option>
						</select>
					</div>
					<div class='a3'>
					<div class="d-grid gap-2 col-12">
						<button type="button" class="btn text-white fw-bold" style="background-color:rgb(44, 62, 80);"onClick="location.href='storeBuySuccess'">결제하기</button>
					</div>
					</div>
				</div>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
	</body>
</html>
