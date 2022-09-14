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
		<link href="/resources/Images/xdminProduct.css" rel="stylesheet">
	</head>
	
	<body>
		<form>
			<input type="checkbox" id="menu-toggle"/>
			<label for="menu-toggle" class="menu-icon"><i class="fa fa-bars"></i></label>
			<div class="content-container">
			<div id='haeder'></div>
				<div class="navbar">
			        <a href="#" id="logo">
			            <img src="resources/Images/img/logo2.png" height="60" onClick="location.href='main'">
			        </a>
		  		</div>
			<div id='content'>
				<h2>상품관리</h2>
				<section class="wrapper">
					<article class="row title">
						<ul>
							<li><input type='checkbox'></li>
							<li>Code</li>
							<li>상품명</li>
							<li><span>Type: <select>
										<option>ALL</option>
										<option>TOP</option>
										<option>Pants</option>
										<option>Outer</option>
								</select></span></li>
							<li>등록일</li>
							<li>가격</li>
						</ul>
					</article>
					<!-- Row 1 - fadeIn -->
					<article class="row">
						<ul>
							<li><input type='checkbox'></li>
							<li>1234567</li>
							<li>이비자 코스트 시트론 레트로 네츄럴 메쉬 니트</li>
							<li>TOP</li>
							<li>2022-08-25</li>
							<li>￦49,000</li>
						</ul>
						<ul class="more-content">
							<div class='stock'>
								<div class='container'>
									<div class='item'>
										<h2>재고현황</h2>
										<p>RED:</p>
										<span>총</span> <input type="textbox" value='123개'> <span>S</span>
										<input type=textbox value='0개'> <span>M</span> <input type=textbox value='0개'> <span>L</span> <input type=textbox value='0개'>
										<p>BLUE:</p>
										<span>총</span> <input type="textbox" value='123개'> <span>S</span>
										<input type=textbox value='0개'> <span>M</span> <input
											type=textbox value='0개'> <span>L</span> <input
											type=textbox value='0개'>
										<p>GREEN:</p>
										<span>총</span> <input type="textbox" value='123개'> <span>S</span>
										<input type=textbox value='0개'> <span>M</span> <input
											type=textbox value='0개'> <span>L</span> <input
											type=textbox value='0개'>
									</div>
									<div class='item'>
										<h2>판매량</h2>
										<p>RED:</p>
										<span>총</span> <input type="textbox" value='123개'> <span>S</span>
										<input type=textbox value='0개'> <span>M</span> <input
											type=textbox value='0개'> <span>L</span> <input
											type=textbox value='0개'>
										<p>BLUE:</p>
										<span>총</span> <input type="textbox" value='123개'> <span>S</span>
										<input type=textbox value='0개'> <span>M</span> <input
											type=textbox value='0개'> <span>L</span> <input
											type=textbox value='0개'>
										<p>GREEN:</p>
										<span>총</span> <input type="textbox" value='123개'> <span>S</span>
										<input type=textbox value='0개'> <span>M</span> <input
											type=textbox value='0개'> <span>L</span> <input type=textbox value='0개'>
									</div>
									<div class='item'></div>
								</div>
							</div>
						</ul>
					</article>
					<article class="row">
						<ul>
							<li><a href="#">NFL</a><span class="small">(fadeOut)</span></li>
							<li>$5</li>
							<li>45</li>
							<li>100</li>
							<li>3:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<!-- Row 3 -->
					<article class="row">
						<ul>
							<li><a href="#">NHL</a></li>
							<li>$50</li>
							<li>12</li>
							<li>48</li>
							<li>12:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<!-- Row 4 -->
					<article class="row">
						<ul>
							<li><a href="#">MLB</a><span class="small">(update)</span></li>
							<li>$10</li>
							<li>2</li>
							<li>10</li>
							<li>1:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<!-- Row 5 -->
					<article class="row">
						<ul>
							<li><a href="#">MLB</a></li>
							<li>$5</li>
							<li>48</li>
							<li>120</li>
							<li>12:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<!-- Row 6 -->
					<article class="row">
						<ul>
							<li><a href="#">NHL</a></li>
							<li>$50</li>
							<li>12</li>
							<li>48</li>
							<li>12:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<!-- Row 7 -->
					<article class="row">
						<ul>
							<li><a href="#">NHL</a></li>
							<li>$50</li>
							<li>12</li>
							<li>48</li>
							<li>12:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<!-- Row 8 -->
					<article class="row">
						<ul>
							<li><a href="#">PGA</a></li>
							<li>$50</li>
							<li>12</li>
							<li>48</li>
							<li>11:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<!-- Row 9 -->
					<article class="row">
						<ul>
							<li><a href="#">PGA</a></li>
							<li>$50</li>
							<li>12</li>
							<li>48</li>
							<li>11:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<!-- Row 10 -->
					<article class="row">
						<ul>
							<li><a href="#">PGA</a></li>
							<li>$50</li>
							<li>12</li>
							<li>48</li>
							<li>11:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<!-- Row 11 -->
					<article class="row">
						<ul>
							<li><a href="#">MLB</a></li>
							<li>$10</li>
							<li>1</li>
							<li>10</li>
							<li>1:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
										<article class="row">
						<ul>
							<li><a href="#">MLB</a></li>
							<li>$10</li>
							<li>1</li>
							<li>10</li>
							<li>1:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<article class="row">
						<ul>
							<li><a href="#">MLB</a></li>
							<li>$10</li>
							<li>1</li>
							<li>10</li>
							<li>1:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<article class="row">
						<ul>
							<li><a href="#">MLB</a></li>
							<li>$10</li>
							<li>1</li>
							<li>10</li>
							<li>1:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
					<article class="row">
						<ul>
							<li><a href="#">MLB</a></li>
							<li>$10</li>
							<li>1</li>
							<li>10</li>
							<li>1:00ET</li>
						</ul>
						<ul class="more-content">
							<li>This 1665-player contest boasts a $300,000.00 prize pool
								and pays out the top 300 finishing positions. First place wins
								$100,000.00. Good luck!</li>
						</ul>
					</article>
				</section>
				<div class='Rposition'>
					<button type='button' onClick="'productadd'">상품 추가하기</button>
					<button>상품 제거하기</button>
				</div>
				<br>
				<br>
				<select>
					<option>상품명</option>
					<option>코드</option>
					<option>등록일</option>
				</select> <input type='serch' value='검색'>
				<button>검색</button>
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
	</body>
</html>
