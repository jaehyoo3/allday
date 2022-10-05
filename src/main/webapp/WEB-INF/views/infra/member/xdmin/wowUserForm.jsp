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
		<%@include file="memberVo.jsp"%>
			<div class="main-content">
				<h1><i class="fa-regular fa-file"></i> Member</h1>
				<div class='form-box'>
					<p style="padding-bottom:30px; padding-top:10px;">No. <c:out value="${item.memberSeq }" /></p>
					<p>* 이름</p>
					<input type="text" name="memberName" id="memberName" value="<c:out value="${item.memberName }"/>" placeholder="한글">
					<p>* 아이디</p>
					<input type="text" name="memberID" id="memberID" value="<c:out value="${item.memberID }"/>" placeholder="한글,숫자">
					<p>* 닉네임</p>
					<input type="text" name= "memberNick" id="memberNick" value="<c:out value="${item.memberNick }"/>" placeholder="한글, 영문(대소문자),숫자">
					<p>* 생년월일</p>
					<input type="text" name= "memberDob" id='datepicker1' value="<c:out value="${item.memberDob }"/>" placeholder="한글, 영문(대소문자),숫자">
					<p>전화번호</p>
					<input type="text" name= "memberMobile" id="memberMobile" value="<c:out value="${item.memberMobile }"/>" placeholder="한글, 영문(대소문자),숫자">			
					<p>이메일</p>
					<input type="text" name= "memberEmail" id="memberEmail" value="<c:out value="${item.memberEmail }"/>" placeholder="한글, 영문(대소문자),숫자">
					<p>현재 포인트</p>
					<input type="text" name= "memberPoint" id="memberPoint" value="<c:out value="${item.memberPoint }"/>" placeholder="숫자">
					<p>성별</p>
					<ul>
						<li>
							<input name="memberGender" type="radio" id="man" value="1" <c:if test="${item.memberGender eq 1 }">checked</c:if>>
							<label for="man">남자</label>
						</li>
						<li>
							<input name="memberGender" id="girl" type="radio" value="2" <c:if test="${item.memberGender eq 2 }">checked</c:if>>
							<label for="girl">여자</label>
						</li>
					</ul>
					<p>등급</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select id="memberGrade" name="memberGrade">
						<option value='' <c:if test="${empty item.memberGrade}">selected</c:if>>설정하기</option>
						<option value='1' <c:if test="${item.memberGrade eq 1 }">selected</c:if>>브론즈</option>
						<option value='2' <c:if test="${item.memberGrade eq 2 }">selected</c:if>>실버</option>
						<option value='3' <c:if test="${item.memberGrade eq 3 }">selected</c:if>>골드</option>
						<option value='4' <c:if test="${item.memberGrade eq 4 }">selected</c:if>>다이아몬드</option>
					</select>
					<p>계정 삭제 여부</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select id="memberDelNy" name="memberDelNy">
						<option value='' <c:if test="${empty item.memberDelNy}">selected</c:if>>설정하기</option>
						<option value='0' <c:if test="${item.memberDelNy eq 0 }">selected</c:if>>사용하지않기</option>
						<option value='1' <c:if test="${item.memberDelNy eq 1 }">selected</c:if>>사용하기</option>
					</select>
					<ul>
						<li>
						<span>등록일: </span>
							<input type=text value="<fmt:formatDate value="${item.memberRegdate }" pattern="yyyy-MM-dd hh:mm:ss"/>" readonly>
						</li>
						<li>
						<span>수정일: </span>
							<input type=text value="<fmt:formatDate value="${item.memberUpdate }" pattern="yyyy-MM-dd hh:mm:ss"/>" readonly>	
						</li>
					</ul>
					<p>주소</p>
					<div class='addr-box'>
						<input type="text" id="postcode" value="<c:out value="${item.zipcode}" />" style="width:20%;"><button onclick="DaumPostcode()" style="width:20%;">검색</button>
						<input type="text" id="address" value="<c:out value="${item.addr1 }" />">
						<input type="text" id="detailAddres" value="<c:out value="${item.addr2 }" />">
					</div>
					<input type="checkbox" value='1' id="memberAd" name='memberAd' <c:if test="${item.memberAd eq 1 }">checked</c:if>>
					<input type="hidden" name="memberAd" value='0' id="memberAd_hidden"/>
					<span>이메일/혜택 소식 수신 여부</span>
					</div>
					<div class='btn-box'>
						<button style='background-color:#ab000d;'>DELETE</button>
						<button style='background-color:#ab000d;'>UELETE</button>
						<button id="btnSave">INSERT</button>
						<button id="btnList">LdIST</button>
				</div>
			</div>
		</form>
		<form name="formVo" id="formVo" method="post">
			<%@include file="memberVo.jsp"%>	
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
	        
		    function DaumPostcode() {
		        new daum.Postcode({
		            oncomplete: function(data) {
		                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
		
		                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
		                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		                var addr = ''; // 주소 변수
		                var extraAddr = ''; // 참고항목 변수
		
		                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
		                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
		                    addr = data.roadAddress;
		                } else { // 사용자가 지번 주소를 선택했을 경우(J)
		                    addr = data.jibunAddress;
		                }
		
		                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
		                if(data.userSelectedType === 'R'){
		                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                        extraAddr += data.bname;
		                    }
		                    // 건물명이 있고, 공동주택일 경우 추가한다.
		                    if(data.buildingName !== '' && data.apartment === 'Y'){
		                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		                    }
		                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		                    if(extraAddr !== ''){
		                        addr = '' + addr + ' (' + extraAddr + ')';
		                    }
		                    // 조합된 참고항목을 해당 필드에 넣는다.
		              		}

			            geocoder.addressSearch(data.address, function(results, status) {
			            		
			                // 정상적으로 검색이 완료됐으면
				                if (status === daum.maps.services.Status.OK) {
					                // 우편번호와 주소 정보를 해당 필드에 넣는다.
					                document.getElementById('postcode').value = data.zonecode;
					                document.getElementById('address').value = addr;
					                document.getElementById('detailAddres').focus();
				                    document.getElementById("result_x").value = results[0].x;
				                    document.getElementById("result_y").value = results[0].y;
			                	}
			           	 })
		            }
		        }).open();
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
