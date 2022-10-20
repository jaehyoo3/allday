<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<html>
	<head>
		<title>BLUEBEE</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
		<link href="/resources/Images/memberReg.css" rel="stylesheet">
	</head>
	
	<body>
		<form method="post" action="signUp" onsubmit="return checks()" autocomplete="off">
		<input type="hidden" id="checkIdNy" name="checkIdNy"> 
		<input type="hidden" id="checkNickNy" name="checkNickNy">
			<!-- navMenu s  -->
				<%@include file="../../infra/includeV1/Menu.jsp"%>
			<!-- navMenu e --> 
			<div id='content'>
				<h1>회원가입 정보입력</h1>
				<div class="d-flex mb-1">
					<div class="p-1 ms-auto">
						<span style="color:rgb(44, 62, 80);">약관동의 > <b>회원가입 정보입력</b> > 가입완료</span><br>
					</div>	
				</div>
				<hr>
				<!-- ID -->
				<span>아이디</span><span style="font-size:12px; color:#e0e0e0">(필수)</span>
				<input type="text" class="form-control mb-1" id="memberID" name="memberID" placeholder="아이디">
				<div class="invalid-feedback mb-2" id='idFeedback'></div>
				
				<span>비밀번호</span><span style="font-size:12px; color:#e0e0e0">(필수)</span>
				<input type="password" class="form-control mb-1" id="memberPW" name='memberPW' placeholder="비밀번호">
				<div class="invalid-feedback mb-2" id='pwFeedback'></div>
				<span>비밀번호 확인</span><span style="font-size:12px; color:#e0e0e0">(필수)</span>
				<input type="password" class="form-control mb-2" id="memberPW2" name='memberPW2' placeholder="비밀번호 확인">
				<label id="pw2Feedback"></label><br>
				<span>닉네임</span><span style="font-size:12px; color:#e0e0e0">(필수)</span>
				<input type="text" class="form-control mb-2" id="memberNick" name="memberNick" placeholder="닉네임">
				<div class="invalid-feedback mb-2" id='nickFeedback'></div>
				<span>이름</span><span style="font-size:12px; color:#e0e0e0">(필수)</span>
				<input type="text" class="form-control mb-2" id="memberName" name="memberName" placeholder="이름">
				<div class="invalid-feedback mb-2" id='nameFeedback'></div>
 				<span>생년월일</span><span style="font-size:12px; color:#e0e0e0">(필수)</span>
				<div class="input-group flex-nowrap">
						<input type="text" class="form-control mb-2" id='datepicker1' name="memberDob" style="width:200px;">
				</div>
				<span>성별</span>
				<div class="d-flex mb-1">
					<div class="p-1">
					<input class="form-check-input" name="memberGender" type="radio" value="1">
					<label for="man">남자</label>
					</div>
					<div class="p-1 mx-auto">
					<input class="form-check-input" name="memberGender" type="radio" value="2">
					<label for="girl">여자</label>
					</div>
				</div>
				<span>이메일</span>

				<div class="row">
					<div class="col">
						<input type="text" class="form-control mb-2" id="emailID" name="emailFront" placeholder="이메일">
					</div>
					<div class="col">
     					<select class="form-select" id="emailDomain">
							<option selected>주소</option>
							<option value="naver.com">naver.com</option>
							<option value="gmail.com">gmail.com</option>
							<option value="daum.net">daum.net</option>
						</select>
					</div>
				<input type="hidden" id="email" name="memberEmail">
				<span>연락처</span>
				<div class="row">
					<div class="col">
						<input type="text" name="memberMobile" maxlength="13" class="form-control mb-2">
					</div>
				</div>
				<div>
					<span>주소</span><span style="font-size:12px; color:#e0e0e0">(필수)</span>
				</div>
				<div class="d-flex mb-1">
					<div class="p-0">
						<input type="text" id="postcode" class="form-control mb-2"  name='zipcode'readonly>
					</div>
					<div class="p-1">
						<button type="button" class="btn text-white fw-bold" onclick="DaumPostcode()" style="background-color:rgb(44, 62, 80);">주소검색</button>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type="text" id="address" name='addr1' class="form-control mb-2" readonly>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type="text" id="detailAddres" name='addr2' class="form-control mb-2">
					</div>
				</div>
				<div class="row">
					<div class="col">
						<input type="hidden" id="result_x" class="form-control mb-2" disabled>
					</div>
					<div class="col">
						<input type="hidden" id="result_y" class="form-control mb-2" disabled>
					</div>
				</div>
				<div class="d-grid gap-2 col-12">
					<button type="submit" class="btn text-white fw-bold" style="background-color:rgb(44, 62, 80);">가입하기</button>
					<input type="hidden" id="memberAd" value='<c:out value="${vo.memberAd}"/>' name='memberAd'>
					</div>
				</div>
			</div>
			<!-- footer s  -->
				<%@include file="../../infra/includeV1/footer.jsp"%>
			<!-- footer e -->
		</form>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>

		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

		<!--  카카오 지도s -->
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3d9122ea8fc388f07cd56d7692121430&libraries=services"></script>
		<!--  카카오 지도e -->
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		<script>
		
		//주소-좌표 변환 객체를 생성
		var geocoder = new daum.maps.services.Geocoder();
    	var engnum = RegExp(/^[a-zA-Z0-9]{4,12}$/)
    	var getNick = RegExp(/^.{3,12}$/);
    	
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
		    <!-- 비밀번호 일치 -->
		    $('#memberPW, #memberPW2').on('keyup', function () {
		    	  if ($('#memberPW').val() == $('#memberPW2').val()) {
		    		$("#pw2Feedback").text("비밀번호가 일치합니다").css({'color':'#198754', 'font-size':'14px'});
		    		} else    
		    		$("#pw2Feedback").text("비밀번호가 일치하지 않습니다").css({'color':'#DC3545', 'font-size':'14px'});
		    });
		    <!-- 아이디 중복확인 -->
			$("#memberID").on("focusout", function(){
		        if($("#memberID").val() == "") {
		        	$("memberID").removeClass('is-valid');
		        	$("memberID").addClass('is-invalid');
		        	
		        	$("idFeedback").removeClass('valid-feedback');
		        	$("idFeedback").addClass('invalid-feedback');

		        	$("#memberID").focus();
		        	$("#idFeedback").text("아이디를 입력해 주세요");
		        	return false; 
				}
		        if(!engnum.test($("#memberID").val())) {
	            	$("#memberID").val("");
		        	$("memberID").removeClass('is-valid');
		        	$("memberID").addClass('is-invalid');
		        	$("idFeedback").removeClass('valid-feedback');
		        	$("idFeedback").addClass('invalid-feedback');
		        	$("#memberID").focus();
		        	$("#idFeedback").text("아이디는 영어,숫자로 4~12자 사이로 입력해 주세요");
	            	return false; 
		        } else {
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/xdmin/checkId"
					/* ,data : $("#formLogin").serialize() */
					,data : { "memberID" : $("#memberID").val() }
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("memberID").classList.remove('is-invalid');
							document.getElementById("memberID").classList.add('is-valid');
		
							document.getElementById("idFeedback").classList.remove('invalid-feedback');
							document.getElementById("idFeedback").classList.add('valid-feedback');
							document.getElementById("idFeedback").innerText = "사용 가능 합니다.";
							
							document.getElementById("checkIdNy").value = 1;
							
						} else {
							document.getElementById("memberID").classList.remove('is-valid');
							document.getElementById("memberID").classList.add('is-invalid');
							
							document.getElementById("idFeedback").classList.remove('valid-feedback');
							document.getElementById("idFeedback").classList.add('invalid-feedback');
							document.getElementById("idFeedback").innerText = "이미 사용중인 아이디 입니다";
							
							document.getElementById("checkIdNy").value = 0;
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					} 
				});
				}
			});
			$("#memberNick").on("focusout", function(){
		        if($("#memberNick").val() == "") {
		        	$("memberNick").removeClass('is-valid');
		        	$("memberNick").addClass('is-invalid');
		        	
		        	$("NickFeedback").removeClass('valid-feedback');
		        	$("NickFeedback").addClass('invalid-feedback');

		        	$("#memberNick").focus();
		        	$("#nickFeedback").text("닉네임을 입력해 주세요");
		        	return false; 
				}
		        if(!getNick.test($("#memberNick").val())) {
	            	$("#memberNick").val("");
		        	$("memberNick").removeClass('is-valid');
		        	$("memberNick").addClass('is-invalid');
		        	$("nickFeedback").removeClass('valid-feedback');
		        	$("nickFeedback").addClass('invalid-feedback');
		        	$("#memberNick").focus();
		        	$("#nickFeedback").text("닉네임는 3~12자 사이로 입력해 주세요");
	            	return false; 
		        } else {
				$.ajax({
					async: true 
					,cache: false
					,type: "post"
					/* ,dataType:"json" */
					,url: "/xdmin/checkNick"
					/* ,data : $("#formLogin").serialize() */
					,data : { "memberNick" : $("#memberNick").val() }
					,success: function(response) {
						if(response.rt == "success") {
							document.getElementById("memberNick").classList.remove('is-invalid');
							document.getElementById("memberNick").classList.add('is-valid');
		
							document.getElementById("nickFeedback").classList.remove('invalid-feedback');
							document.getElementById("nickFeedback").classList.add('valid-feedback');
							document.getElementById("nickFeedback").innerText = "사용 가능 합니다.";
							
							document.getElementById("checkNickNy").value = 1;
							
						} else {
							document.getElementById("memberNick").classList.remove('is-valid');
							document.getElementById("memberNick").classList.add('is-invalid');
							
							document.getElementById("nickFeedback").classList.remove('valid-feedback');
							document.getElementById("nickFeedback").classList.add('invalid-feedback');
							document.getElementById("nickFeedback").innerText = "이미 사용중인 닉네임 입니다";
							
							document.getElementById("checkNickNy").value = 0;
						}
					}
					,error : function(jqXHR, textStatus, errorThrown){
						alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
					} 
				});
				}
			});
			<!-- 유효성 검사 -->
		    function checks(){

		    	var onlyKor= RegExp(/^[가-힣]+$/);
		    	
		        if($("#memberID").val() == "") { 		
 		        	$("#memberID").addClass("is-invalid"); 
		        	$("#memberID").focus();
		        	$("#idFeedback").text("아이디를 입력해 주세요");
		        	return false; 
				}
		        if(!engnum.test($("#memberID").val())) {
	            	$("#memberID").val("");
 		        	$("#memberID").addClass("is-invalid"); 
		        	$("#memberID").focus();
		        	$("#idFeedback").text("아이디는 영어,숫자로 4~12자 사이로 입력해 주세요");
	            	return false; 
		        }
		        if($("#memberPW").val() == "") {
 		        	$("#memberPW").addClass("is-invalid"); 
		        	$("#memberPW").focus();
		        	$("#pwFeedback").text("비밀번호를 입력해 주세요");
		        	return false; 
		        }
		        if($("#memberNick").val() == "") {
 		        	$("#memberNick").addClass("is-invalid"); 
		        	$("#memberNick").focus();
		        	$("#nickFeedback").text("닉네임을 입력해 주세요");
		        	return false; 
		        }
		        if(!getNick.test($("#memberNick").val())) {
	            	$("#memberNick").val("");
 		        	$("#memberNick").addClass("is-invalid"); 
		        	$("#memberNick").focus();
		        	$("#nickFeedback").text("닉네임은 4~12자 사이로 입력해 주세요");
	            	return false; 
		        }
		        if($("#memberName").val() == "") {
 		        	$("#memberName").addClass("is-invalid"); 
		        	$("#memberName").focus();
		        	$("#nameFeedback").text("이름을 입력해 주세요");
		        	return false; 
		        }
		        if(!onlyKor.test($("#memberName").val())) {
	            	$("#memberName").val("");
 		        	$("#memberName").addClass("is-invalid"); 
		        	$("#memberName").focus();
		        	$("#nameFeedback").text("이름은 한글로 작성해 주세요");
	            	return false; 
		        }		        
		        if($("#datepicker1").val() == "") { 		
 		        	$("#datepicker1").addClass("is-invalid"); 
		        	$("#datepicker1").focus();
		        	$("#datepicker1").text("생년월일을 입력해 주세요");
		        	return false; 
				}
		        if($("#detailAddres").val() == "") { 
		        	$("#postcode").addClass("is-invalid"); 
		        	$("#address").addClass("is-invalid"); 
		        	$("#detailAddres").addClass("is-invalid"); 
		        	$("#address").focus();
		        	$("#address").text("주소를 입력해 주세요");
		        	return false; 
				}
		    }
		    function email() {
				const email = $("#emailID").val();
				const address = $("#emailDomain").val();
				if(email != "" && address != "") {
					$("#email").val(email + "@" + address);
				}
			};
			$("#emailID").blur(function(){
				email();	
			});
			
			$("#emailDomain").change(function(){
				email();	
			});
		</script>
	</body>
</html>
