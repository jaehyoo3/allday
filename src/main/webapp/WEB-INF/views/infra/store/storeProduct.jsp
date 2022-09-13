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
			<div id='header'>
				<div class='menu'>
					<ul class='ul'>
						<li class='b'>
							<div class="search-box">
					    		<a href="#"><button class="btn-search"><i class="fas fa-search"></i></button></a>
					   			<input type="text" class="input-search" placeholder="Search">
					  		</div>
						</li>
						<li class='b'><div class="vr"></li>
						<li class='b'><a href="#" onClick="location.href='basket'"><i class="fa-solid fa-bag-shopping"></i></a></li>
						<li class='b'><a href="#" onClick="location.href='modify'"><i class="fa-solid fa-user"></i></a></li>
						<li class='b'><a href="#" onClick="location.href='login'"><i class="fa-solid fa-right-to-bracket"></i></a></li>
						<li class='b'><div class="vr"></li>
						<li class='b'><a href="#">고객센터</a></li>
					</ul>
				</div>
			</div>
			<div class="navbar">
		        <a href="#" id="logo">
		            <img src="/resources/Images/img/logo2.png" height="60" onClick="location.href='/'">
		        </a>
		        <ul id="menu">
		            <li><a href="#" onClick="location.href='storeNew'"><b>New</b></a></li>
		            <li><a href="#"><b>Best</b></a></li>
		            <li><a href="#"><b>Outer</b></a></li>
		            <li><a href="#"><b>Top</b></a></li>
		            <li><a href="#"><b>Pants</b></a></li>
		            <li><a href="#"><b><div class="vr"></b></a></li>
		            <li><a href="#"><b><i class="fa-brands fa-instagram fa-xl"></i></b></a></li>
		        </ul>
	  		</div>
			<div id='content'>
			<p>Home > Top</p>
				<div class="productimg">
					<img src='/resources/Images/img/knit.jpg' style="width:80%;">
				</div>
				<div class="productbuy">
					<div class='title'>이비자 코스트 시트론 레트로 네츄럴 메쉬 니트 | TOP</div>
					<div>
					<div class='price'>￦49,000</div>
					<hr>
					<div class='express'>배송방법: 택배</div>
					<br>
					<span style="font-size:12px; font-weight:bold;">색상 *</span>
					<div class="custom-radios">
					  <div>
					    <input type="radio" id="color-1" name="color" value="color-1">
					    <label for="color-1">
					      <span>
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
					  <div>
					    <input type="radio" id="color-2" name="color" value="color-2">
					    <label for="color-2">
					      <span>
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					  
					  <div>
					    <input type="radio" id="color-3" name="color" value="color-3">
					    <label for="color-3">
					      <span>
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					
					  <div>
					    <input type="radio" id="color-4" name="color" value="color-4">
					    <label for="color-4">
					      <span>
					        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/242518/check-icn.svg" alt="Checked Icon" />
					      </span>
					    </label>
					  </div>
					</div>
					<br>
					<span style="font-size:12px; font-weight:bold;">사이즈 *</span>
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
		
		

		</script>
	</body>
</html>
