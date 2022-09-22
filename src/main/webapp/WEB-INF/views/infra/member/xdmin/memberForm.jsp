<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>WoW</title>
		<link href="/resources/Images/css/bootstrap.min.css" rel="stylesheet"> 
    	<link href="/resources/Images/ccReg.css" rel="stylesheet" />
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
		<form method='post' name='form'>
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="/resources/Images/logo2.png" height="60"
					onClick="location.href='./wowMain.html'">
				</a>
				<ul id="menu">
					<li><a href="#" onClick="location.href='./wowProduct.html'"><b>상품관리</b></a></li>
					<li><a href="#"><b>회원관리</b></a></li>
					<li><a href="#"><b>문의관리</b></a></li>
					<li><a href="#"><b>배송관리</b></a></li>
				</ul>
			</div>
			<div id='content'>
			<input type="hidden" name='userCode' value="<c:out value="${item.userCode }"/>">
				<div class="container">
				<h3>코드관리</h3>
					<div class="row mb-3">
						<div class="col">
							<span>ID</span>
							<input class="form-control" type="text" name='userID' value="<c:out value="${item.userID }"/>">
			    		</div>
   				 		<div class="col">
							<span>비밀번호</span>
							<input class="form-control" type="text" name='userPW' value="<c:out value="${item.userPW }"/>">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>닉네임</span>
							<input class="form-control" type="text" name='userNick' value="<c:out value="${item.userNick }"/>">
			    		</div>
   				 		<div class="col">
							<span>이름</span>
							<input class="form-control" type="text" name='userName' value="<c:out value="${item.userName }"/>">
						</div>
					</div>
					<div class="row mb-3">
   				 		<div class="col">
							<span>성별</span>
							<select class="form-select">
								<option>사용</option>
								<option value='1' <c:if test="${userGender.yn eq 1 }">selected</c:if>>남자</option>
								<option value='2' <c:if test="${userGender.yn eq 2 }">selected</c:if>>여자</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>이메일</span>
							<input class="form-control" type="text" name='userEmail' value="<c:out value="${item.userEmail }"/>">
			    		</div>
   				 		<div class="col">
							<span>핸드폰</span>
							<input class="form-control" type="text" name='userPhone' value="<c:out value="${item.userPhone }"/>" >
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>등급</span>
							<select class="form-select">
								<option>사용</option>
								<option value='1' <c:if test="${userGrade.yn eq 1 }">selected</c:if>>브론즈</option>
								<option value='2' <c:if test="${userGrade.yn eq 2 }">selected</c:if>>실버</option>
								<option value='3' <c:if test="${userGrade.yn eq 3 }">selected</c:if>>골드</option>
								<option value='4' <c:if test="${userGrade.yn eq 4 }">selected</c:if>>다이아몬드</option>
							</select>
			    		</div>
   				 		<div class="col">
							<span>zip</span>
							<input class="form-control" type="text" id='zip' name='zip' value="<c:out value="${item.zip }"/>">
							<input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<span>주소</span>
							<input class="form-control" type="text" name='addr1' id='addr1' value="<c:out value="${item.addr1 }"/>">
			    		</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>상세주소</span>
							<input class='form-control' type='text' id='addr3'>
							<input class="form-control" type="text" id='addr2' name='addr2' value="<c:out value="${item.addr2 }"/>">
			    		</div>
					</div>
				</div>
					<input type="text" id="sample5_postcode" placeholder="우편번호">
					<input type="text" id="sample5_address" placeholder="주소">
					<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br>
					<input type="text" id="sample6_detailAddress" name='addr1' value="<c:out value="${item.addr2 }"/>" placeholder="상세주소"><br>
			<div id="map" style="display:none"></div>
			<input type="text" id="resulty">
			<input type="text" id="resultx">
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#ban_del"><i class="fa-solid fa-list"></i></button></div>
					<div class="p-1  ms-auto"><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ban_del2"><i class="fa-solid fa-x"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1"><button type="button" name='btnSave' id='btnSave' class="btn btn-success"><i class="fa-solid fa-bookmark"></i></button></div>
					<input type='submit'>
				</div>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
		<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3d9122ea8fc388f07cd56d7692121430&libraries=services"></script>
		
		<script>
	    var goUrlList = "/member/memberList"; 			/* #-> */
		var goUrlInst = "/member/memberInst"; 			/* #-> */
		var goUrlUpdt = "/member/memberUpdt";				/* #-> */
		var goUrlUele = "/code/codeUele";				/* #-> */
		var goUrlDele = "/code/codeDele";				/* #-> */
		
		var seq = $("input:hidden[name=userCode]");				/* #-> */
		
		var form = $("form[name=form]")

		$("#btnSave").on("click", function() {
			if(seq.val() == "0" || seq.val() == "") {
				form.attr("action", goUrlInst).submit();
			} else {
				form.attr("action", goUrlUpdt).submit();
			}
		});
		  	    
	    var mapContainer = document.getElementById('map'), // 지도를 표시할 div
	    mapOption = {
	        center: new daum.maps.LatLng(37.537187, 127.005476), // 지도의 중심좌표
	        level: 5 // 지도의 확대 레벨
	    };
	
		//지도를 미리 생성
		var map = new daum.maps.Map(mapContainer, mapOption);
		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
		//마커를 미리 생성
		var marker = new daum.maps.Marker({
		    position: new daum.maps.LatLng(37.537187, 127.005476),
		    map: map
		});
		
		function sample5_execDaumPostcode() {
		    new daum.Postcode({
		        oncomplete: function(data) {
		            var addr = data.address; // 최종 주소 변수

		            // 주소 정보를 해당 필드에 넣는다.
		            document.getElementById("sample5_address").value = addr;
		            // 주소로 상세 정보를 검색
		            geocoder.addressSearch(data.address, function(results, status) {
		                // 정상적으로 검색이 완료됐으면
		                if (status === daum.maps.services.Status.OK) {
		
		                    var result = results[0]; //첫번째 결과의 값을 활용
		
		                    // 해당 주소에 대한 좌표를 받아서
		                    var coords = new daum.maps.LatLng(result.y, result.x);
		                    var zzx = result.x;
		                    var zzy = result.y
		                    // 지도를 보여준다.
		                    mapContainer.style.display = "block";
		                    document.getElementById('sample5_postcode').value = data.zonecode;
		                    document.getElementById("resulty").value = zzy;
		                    document.getElementById("resultx").value = zzx;
		                    map.relayout();
		                    // 지도 중심을 변경한다.
		                    map.setCenter(coords);
		                    // 마커를 결과값으로 받은 위치로 옮긴다.
		                    marker.setPosition(coords)
		                }
		            });
		        }
		    }).open();
		}
	</script>
		
	</body>
</html>
