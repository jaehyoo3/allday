<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

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
		<form name="form" method="post" enctype="multipart/form-data">
		<%@include file="../../../infra/includeV1/xdminSetting.jsp" %>
			<%@include file="productVo.jsp"%>	
	 		<div class="main-content">
				<h1><i class="fa-regular fa-file"></i> Product</h1>
				<div class='form-box'>
					<p style="padding-bottom:30px; padding-top:10px;">No. <c:out value="${item.productSeq }" /></p>
					<p>* 상품이름</p>
					<input type="text" name="productName" id="productName" value="<c:out value="${item.productName }" />" placeholder="한글">
					<p>상품 타입</p>
					<select id="productType" name="productType">
						<option value='0' <c:if test="${empty item.productType}">selected</c:if>>설정하기</option>
						<option value='1' <c:if test="${item.productType eq 1 }">selected</c:if>>상의</option>
						<option value='2' <c:if test="${item.productType eq 2 }">selected</c:if>>바지</option>
						<option value='3' <c:if test="${item.productType eq 3 }">selected</c:if>>아우터</option>
					</select>
					<p>* 가격</p>
					<input type="text" name="productPrice" id="productPrice" value="<c:out value="${item.productPrice }" />" placeholder="숫자">
					<p>* 사이즈 - 컬러 - 갯수</p> 
					<div class="buttons">
							<select name="size_sizearr[0]" id="1list.size_sizearr0"  placeholder="한글, 영문(대소문자),숫자" style="width:19%;"> 
								<c:forEach items="${slist}" var="list" varStatus="status">
									<option value="<c:out value="${list.size}" />"><c:out value="${list.size}" /> / <c:out value="${list.sizeName}" /></option>
								</c:forEach>
							</select>
							- <select name="color_colorseqarr[0]" id="color_colorseqarr0"  placeholder="한글, 영문(대소문자),숫자" style="width:19%;"> 
								<c:forEach items="${clist}" var="list" varStatus="status">
									<option value="<c:out value="${list.colorSeq}" />"><c:out value="${list.colorSeq}" />/<c:out value="${list.colorName}" /></option>
								</c:forEach>
							</select> -
						 	<input type="text" name="numarr[0]" id="numarr0" style="width:19%;">
			      		<input type="button" class="btnAdd" value="Add">        
			        </div> 
			        
					<p>* 상품 이미지</p>
					<input type="text" value="<c:out value="${item.originalName }" />" style="width:10%;">
					<label for="uploadedImage">업로드</label>
					<input type="file" name="uploadedImage" id="uploadedImage" multiple>
					<p>* 상품 상세정보</p>
					<div class="file-list"><label for="uploadedImage2" style="float:right; background-color:white;color:black;">+</label></div>
					<input type="file" name="uploadedImage2" id="uploadedImage2" onchange="addFile(this);" style="display:none;" multiple />
					<h4>상품정보 제공공시</h4>
					<p>소재</p>
					<input type="text" id="informationType" name="informationType" value="<c:out value="${item.informationType}" />">
					<p>색상</p>
					<input type="text" id="informationColor" name="informationColor" value="<c:out value="${item.informationColor}" />">
					<p>크기</p>
					<input type="text" id="informationSize" name="informationSize" value="<c:out value="${item.informationSize}" />">
					<p>제조사</p>
					<input type="text" id="informationCompany" name="informationCompany" value="<c:out value="${item.informationCompany}" />">
					<p>제조국</p>
					<input type="text" id="informationCountry" name="informationCountry" value="<c:out value="${item.informationCountry}" />">
					<p>취급시 주의사항</p>
					<input type="text" id="informationWarning" name="informationWarning" value="<c:out value="${item.informationWarning}" />">
					<p>품질보증기준</p>
					<input type="text" id="informationQuality" name="informationQuality" value="<c:out value="${item.informationQuality}" />">
					<p>A/S책임자·전화번호</p>
					<input type="text" id="informationAS" name="informationAS" value="<c:out value="${item.informationAS}" />">
					<p>상품 삭제 여부</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select id="productDelNy" name="productDelNy">
						<option value='' <c:if test="${empty item.productDelNy}">selected</c:if>>설정하기</option>
						<option value='0' <c:if test="${item.productDelNy eq 0 }">selected</c:if>>사용하기</option>
						<option value='1' <c:if test="${item.productDelNy eq 1 }">selected</c:if>>사용하지않기</option>
					</select>
					<p>BEST</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select id="productBest" name="productBest">
						<option value='' <c:if test="${empty item.productBest}">selected</c:if>>설정하기</option>
						<option value='1' <c:if test="${item.productBest eq 1 }">selected</c:if>>사용하기</option>
						<option value='0' <c:if test="${item.productBest eq 0 }">selected</c:if>>사용하지않기</option>
					</select>
					<p>NEW</p>
					<p style='font-size:6px; color:#e0e0e0;'>(설정하지 않을경우 기본값으로 설정됩니다.)</p>
					<select id="productNew" name="productNew">
						<option value='' <c:if test="${empty item.productNew}">selected</c:if>>설정하기</option>
						<option value='1' <c:if test="${item.productNew eq 1 }">selected</c:if>>사용하기</option>
						<option value='0' <c:if test="${item.productNew eq 0 }">selected</c:if>>사용하지않기</option>
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
						<button id="btnList">LIST</button>
					</div>
				</div>
			</form>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
		
		<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3d9122ea8fc388f07cd56d7692121430&libraries=services"></script>
		
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
		
		<script type="text/javascript">
		    var goUrlList = "productList"; 			/* #-> */
			var goUrlInst = "productInst"; 			/* #-> */
			var goUrlUpdt = "productUpdt";				/* #-> */
			var goUrlUele = "productUele";				/* #-> */
			var goUrlDele = "productDele";				/* #-> */
			
			var seq = $("input:hidden[name=productSeq]");				/* #-> */
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
    	    var fileNo = 0;
    	    var filesArr = new Array();

    	    /* 첨부파일 추가 */
    	    function addFile(obj){
    	        var maxFileCnt = 5;   // 첨부파일 최대 개수
    	        var attFileCnt = document.querySelectorAll('.filebox').length;    // 기존 추가된 첨부파일 개수
    	        var remainFileCnt = maxFileCnt - attFileCnt;    // 추가로 첨부가능한 개수
    	        var curFileCnt = obj.files.length;  // 현재 선택된 첨부파일 개수

    	        // 첨부파일 개수 확인
    	        if (curFileCnt > remainFileCnt) {
    	            alert("첨부파일은 최대 " + maxFileCnt + "개 까지 첨부 가능합니다.");
    	        }

    	        for (var i = 0; i < Math.min(curFileCnt, remainFileCnt); i++) {
    	            const file = obj.files[i];
    	            // 첨부파일 검증
    	            if (validation(file)) {
    	                // 파일 배열에 담기
    	                var reader = new FileReader();
    	                reader.onload = function () {
    	                    filesArr.push(file);
    	                };
    	                reader.readAsDataURL(file)

    	                // 목록 추가
    	                let htmlData = '';
    	                htmlData += '<div id="file' + fileNo + '" class="filebox">';
    	                htmlData += '<p class="name">' + file.name + '</p>';
    	                htmlData += '<a class="delete" onclick="deleteFile(' + fileNo + ');"><i class="far fa-minus-square"></i></a>';
    	                htmlData += '</div>';
    	                $('.file-list').append(htmlData);
    	                fileNo++;
    	            } else {
    	                continue;
    	            }
    	        }
    	        // 초기화
    	        document.querySelector("input:file[name=uploadedImage2]").value = "";
    	    }

    	    /* 첨부파일 검증 */
    	    function validation(obj){
    	        const fileTypes = ['application/pdf', 'image/gif', 'image/jpeg', 'image/png', 'image/bmp', 'image/tif', 'application/haansofthwp', 'application/x-hwp'];
    	        if (obj.name.length > 100) {
    	            alert("파일명이 100자 이상인 파일은 제외되었습니다.");
    	            return false;
    	        } else if (obj.size > (100 * 1024 * 1024)) {
    	            alert("최대 파일 용량인 100MB를 초과한 파일은 제외되었습니다.");
    	            return false;
    	        } else if (obj.name.lastIndexOf('.') == -1) {
    	            alert("확장자가 없는 파일은 제외되었습니다.");
    	            return false;
    	        } else if (!fileTypes.includes(obj.type)) {
    	            alert("첨부가 불가능한 파일은 제외되었습니다.");
    	            return false;
    	        } else {
    	            return true;
    	        }
    	    }

    	    /* 첨부파일 삭제 */
    	    function deleteFile(num) {
    	        document.querySelector("#file" + num).remove();
    	        filesArr[num].is_delete = true;
    	    }
    	     $(document).ready (function () { 
    	    	 var countnum = 1;
    	            $('.btnAdd').click (function () {
    	                $('.buttons').append ("<br><input type='text' id='size_size' name='size_sizearr[" + countnum + "]' style='width:19%;''> <input type='text' id='color_colorseq' name='color_colorseqarr[" + countnum + "]' style='width:19%;'> <input type='text' id='num' name='numarr[" + countnum + "]' style='width:19%;''>  <input type='button' class='btnRemove' value='Remove'>"); // end append  
    	                countnum++;
    	                $('.btnRemove').on('click', function () { 
    	                    $(this).prev().remove (); // remove the textbox
    	                    $(this).next ().remove (); // remove the <br>
    	                    $(this).remove (); // remove the button
    	                });
    	            }); // end click                                            
    	        }); // end ready     
    	    </script>
	</body>
</html>
