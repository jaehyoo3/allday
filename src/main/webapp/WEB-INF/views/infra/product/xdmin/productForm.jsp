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
		<link href="/resources/Images/css/code.css" rel="stylesheet">
	</head>
	<body>
		<form name='form' method="post">
		<%@include file="../../../infra/includeV1/xdminSetting.jsp" %>
			<div class="main-content">
				<h1><i class="fa-regular fa-file"></i> Product</h1>
				<div class='form-box'>
					<p style="padding-bottom:30px; padding-top:10px;">No. <c:out value="${item.productSeq }" /></p>
					<p>* 상품이름</p>
					<input type="text" name="productName" id="productName" value="<c:out value="${item.productName }" />" placeholder="한글">
					<p>상품 타입</p>
					<select id="productType" name="productType">
						<option value='0'>설정하기</option>
						<option value='1'>상의</option>
						<option value='2'>바지</option>
						<option value='3'>아우터</option>
					</select>
					<p>* 가격</p>
					<input type="text" name="productPrice" id="productPrice" value="<c:out value="${item.productPrice }" />" placeholder="한글,숫자">
					<p>* 사이즈 - 컬러 - 갯수</p>
					<input type="text" name= "memberNick" id="memberNick"  placeholder="한글, 영문(대소문자),숫자" style="width:19%;"> - <input type="text" style="width:19%;"> - <input type="text" style="width:19%;">
					<p>* 상품 상세이미지</p>
					<input type="text" placeholder="한글, 영문(대소문자),숫자">
					<p>* 상품 대표이미지</p>
					<input type="text" placeholder="한글, 영문(대소문자),숫자">			
					<h4>상품정보 제공공시</h4>
					<p>종류</p>
					<input type="text">
					<p>소재</p>
					<input type="text">
					<p>색상</p>
					<input type="text">
					<p>크기</p>
					<input type="text">
					<p>제조사</p>
					<input type="text">
					<p>제조국</p>
					<input type="text">
					<p>취급시 주의사항</p>
					<input type="text">
					<p>품질보증기준</p>
					<input type="text">
					<p>A/S책임자·전화번호</p>
					<input type="text">
					<p>상품 삭제 여부</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select id="" name="">
						<option value=''>설정하기</option>
						<option value='0'>사용하지않기</option>
						<option value='1'>사용하기</option>
					</select>
					<p>BEST</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select>
						<option value=''>설정하기</option>
						<option value='0'>사용하지않기</option>
						<option value='1'>사용하기</option>
					</select>
					<p>NEW</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select>
						<option value=''>설정하기</option>
						<option value='0'>사용하지않기</option>
						<option value='1'>사용하기</option>
					</select> 
					<ul>
						<li>
						<span>등록일: </span>
							<input type=text readonly>
						</li>
						<li>
						<span>수정일: </span>
							<input type=text readonly>	
						</li>
					</ul>
					<button> 리뷰창 열기</button>
					</div>
					<div class='btn-box'>
						<button style='background-color:#ab000d;'>DELETE</button>
						<button style='background-color:#ab000d;'>UELETE</button>
						<button id="btnSave">INSERT</button>
						<button id="btnList">LdIST</button>
					</div>
				</div>
			</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
		
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3d9122ea8fc388f07cd56d7692121430&libraries=services"></script>
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
		<script type="text/javascript">
		    var goUrlList = "/xdmin/memberList"; 			/* #-> */
			var goUrlInst = "/xdmin/memberInst"; 			/* #-> */
			var goUrlUpdt = "/xdmin/memberUpdt";				/* #-> */
			var goUrlUele = "/xdmin/memberUele";				/* #-> */
			var goUrlDele = "/xdmin/memberDele";				/* #-> */
			
			var seq = $("input:hidden[name=memberSeq]");				/* #-> */
			var form = $("form[name=form]")
			var formVo = $("form[name=formVo]");
	
			$("#btnSave").on("click", function() {
				if(seq.val() == "0" || seq.val() == "") {
					form.attr("action", goUrlInst).submit();
				} else {
					form.attr("action", goUrlUpdt).submit();
				}
			});
			
			$("#btnUelete").on("click", function(){
				$(".modal-title").text("확 인");
				$(".modal-body").text("해당 데이터를 Uelete 삭제하시겠습니까 ?");
				$("#btnModalUelete").show();
				$("#btnModalDelete").hide();
				$("#modalConfirm").modal("show");
			});
			
			$("#btnDelete").on("click", function(){
				$(".modal-title").text("확 인");
				$(".modal-body").text("해당 데이터를 Delete 삭제하시겠습니까 ?");
				$("#btnModalUelete").hide();
				$("#btnModalDelete").show();
				$("#modalConfirm").modal("show");
			});
			
			$("#btnModalUelete").on("click", function(){
				$("#modalConfirm").modal("hide");
				form.attr("action", goUrlUele).submit();
			});
			
			$("#btnModalDelete").on("click", function(){
				$("#modalConfirm").modal("hide");
				form.attr("action", goUrlDele).submit();
			});
			
			$("#btnList").on("click", function(){
				form.attr("action", goUrlList).submit();
			});
			
			if(document.getElementById("memberAd").checked) {
	        	document.getElementById("memberAd_hidden").disabled = true;
	        }
    	  $.datepicker.setDefaults({
    	        dateFormat: 'yy-mm-dd',
    	        prevText: '이전 달',
    	        nextText: '다음 달',
    	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    	        showMonthAfterYear: true,
    	        yearSuffix: '년'
    	    });
    	    $(function() {
    	        $("#datepicker1").datepicker();
    	    });
	
		</script>

	</body>
</html>
