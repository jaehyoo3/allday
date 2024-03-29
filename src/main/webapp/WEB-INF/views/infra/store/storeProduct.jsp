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
			<input type="hidden" name="product_Seq" id="product_Seq" value="<c:out value="${item.productSeq}"/>">
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
							<input class="product_color" id="<c:out value="${list.colorName}" />" data-color-hex="<c:out value="${list.colorName}" />" type="radio" value="<c:out value="${list.colorSeq}" />" name="color"/>
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
					<div class="addWrap">
					</div>
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
								<c:when test="${fn:length(wishListCount) eq 0}">
									<button type="button" class="btn btn-outline-dark fw-bold col-12" style="height: 50px;" id="wishInst">♡ <span id='cnt'>${fn:length(wishListCount)}</span></button>
								</c:when>
								<c:otherwise>
									<button type="button" class="btn btn-outline-dark fw-bold col-12" style="height: 50px;" id="wishInst">♥ <span id='cnt'>${fn:length(wishListCount)}</span></button>
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
						<c:if test="${list.article eq 1 and list.sort eq 2}">
							<img src='<c:out value="${list.path}"/><c:out value="${list.uuidName}"/>' style="width:100%;"> 
						</c:if>
					</c:forEach>
					<div id="id_test_div" style="display:none;">
						<c:forEach items="${detailImgList}" var="list" varStatus="status">
							<c:if test="${list.article eq 1 and list.sort ne 2}">
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
			</form>
			<form id="form">
			<input type='hidden' name="member_memberSeq" value="<c:out value="${sessSeq}" />">
			<input type="hidden" name="product_Seq" value="<c:out value="${item.productSeq}"/>">
			<div id="review">
				<h3>구매평 ${fn:length(reviewList)}</h3>
				<hr>
				<div id="comment">
				<c:forEach items="${reviewList}" var="reviewList" varStatus="status">
					<ul class='review_boder'>
						<li class='content_warp'>
							<div class='star_rating'>
							   <c:forEach begin="0" end="4" var="i">
                      			 <c:choose>
		                               <c:when test="${reviewList.score gt i }">
		                                	<i class="fa-solid fa-star" style="color:#ffc107;"></i>
		                               </c:when>
		                               <c:otherwise>
		                                   <i class="fa-regular fa-star"></i>
		                               </c:otherwise>
			                         </c:choose>
			                    </c:forEach>
							
							</div> 
							<div class='detail_warp'>[옵션] 색상 :<c:out value="${reviewList.colorName}" /> / 사이즈: <c:out value="${reviewList.sizeName}" />
							</div>
							<div class='content_detail_warp'><c:out value="${reviewList.content }" /></div>
							<div class='img_warp'><p><img src='<c:out value="${reviewList.path}"/><c:out value="${reviewList.uuidName}"/>'></p></div>
						</li>
						<li class='data_warp'>
							<div class='idnick_warp'><c:out value="${reviewList.memberNick }" />(<c:out value="${reviewList.memberID }" />)</div>
							<div class='date_warp'><c:out value="${reviewList.reviewRegDate }" /></div>
						</li>
					</ul>
				</c:forEach>
				</div>
				<div class='iamgeupload-wrap'>
					<ul>
						<li><ul class="image-preview"></ul></li>
					</ul>
				</div>

				<ul class='reviewMenu'>
					<li class='reviewMenus'>
						<div class="rating" style="width: 20rem">
							<input id="rating-5" type="radio" name="score" value="5"/><label for="rating-5"><i class="fas fa-star"></i></label>
							<input id="rating-4" type="radio" name="score" value="4"/><label for="rating-4"><i class="fas fa-star"></i></label>
							<input id="rating-3" type="radio" name="score" value="3"/><label for="rating-3"><i class="fas fa-star"></i></label>
							<input id="rating-2" type="radio" name="score" value="2"/><label for="rating-2"><i class="fas fa-star"></i></label>
							<input id="rating-1" type="radio" name="score" value="1"/><label for="rating-1"><i class="fas fa-star"></i></label>
							
						</div>
						<div class="upload"><i class="fa-solid fa-images"></i></div>
						</li></ul>

				<ul style="width:100%;">
				  	<input type="file" name="uploadedImage3" class="real-upload" accept="image/*" required multiple>
					<li style="width:90%;"><input type="text" name="Content" placeholder="내용입력" style="width:100%; height:40px;">
					<li><button type="button" class='reviewbtn' id="reviewInst">등록</button></li>
				</ul>
			</div>
			<br>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
			<div class="modal">
			    <div class="modalBox">
			    </div>
			</div>
		</form>

		<!-- jsLink s  -->
			<%@include file="../../infra/includeV1/jsLink.jsp"%>
		<!-- jsLink e --> 
		
		<script type="text/javascript">
		var form = $("form[name=form]");
		var seq = $("input:hidden[name=memberSeq]");
		var pdseq = document.getElementById('product_Seq').value;
			
		$("#reviewInst").on("click", function(){
			var formData = new FormData($("#form")[0]);
	 			$.ajax({
					async: false 
					,cache: false
					,url: "/reviewProc"
			        ,data: formData
			        ,processData:false
			        ,contentType:false
			        ,enctype:'multipart/form-data'
			        ,type:"POST"					
			        ,success: function(response) {
			        	var comment = "";
			        	var score = "";
						if(response.rt == "success") {
							for (var i=0; i<response.rList.length; i++) {
								comment +='<ul class="review_boder"><li class="content_warp">';
								
								for(var j=1; j<=5; j++) {
									if(response.rList[i].score >= j) {
										score += '<i class="fa-solid fa-star" style="color:#ffc107;"></i>';
									} else if(response.rList[i].score < j) {
										score += '<i class="fa-regular fa-star"></i>';
									}
								}
								comment +='<div class="star_rating">' + score + '</div>';
								comment +='<div class="detail_warp">[옵션] 색상 : '+response.rList[i].colorName+' / 사이즈 : '+response.rList[i].sizeName+'</div>';
								comment +='<div class="content_detail_warp"> '+response.rList[i].content+' </div> ';
								if(response.rList[i].path != null) {
									comment +='<div class="img_warp"><p><img src='+response.rList[i].path + response.rList[i].uuidName+'></p></div>';
								}
								comment +='<li class="data_warp">'+response.rList[i].memberNick+'('+response.rList[i].memberID+')</div>';
								comment +='<div class="date_warp">'+response.rList[i].reviewRegDate +'</div></li></ul>';
								score = '';

							}
							$("#comment").html(comment);
						} else if(response.rt == "existence") {
							alert("이미 리뷰를 작성했습니다.");
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
					,data: {"member_memberSeq" : $("#memberSeq").val(), "productSeq" : $("#productSeq").val()}
					,success: function(response) {
							if(response.rt == "success") {
								alert("위시리스트에 등록되었습니다.");
								$('#wishInst').text("♥ " + response.WList.length)
							} else if(response.rt == "delete"){
								alert("위시리스트에 해제되었습니다.");
								$('#wishInst').text("♡ " + response.WList.length)
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
		let num = 1; 
	    
		const showValue = (target) => {
			const value = target.value;
			var size = target.options[target.selectedIndex].text;
			var color = $('[name="color"]:checked').attr('id');
			var price = $('[name="productPrice"]').val();
	    	    	
			var div = ""; 
			div += '<div class="addList" id="orderNum' + num + '"> <ul><li><div class="addTitle"> ' + color + ' / '+size+' </div></li><li> <a onclick="deleteOrder(' + num + ')"><i class="fa-regular fa-circle-xmark"></i></a></li></ul>';
			div += '<hr><ul><li>';
			div += '<div class="quantity_div"> <input type="text" value="1" class="quantity_input"> <button class="quantity_btn plus_btn" type="button">+</button><button class="quantity_btn minus_btn" type="button">-</button></div>';
			div += '</li>';
			div += '<li>￦<div class="addPrice">' + price + '</div></li></ul></div>';
			
			$(".addWrap").append(div);
			
			num++;
			document.getElementById("detailSeq").value = value ;
		}
		
		function deleteOrder(num) {
		    document.querySelector("#orderNum" + num).remove()
		}
		let totalPrice = 0;
		
		$('.addWrap').on('click', '.plus_btn' ,function() {
	    	let quantity = $(this).parent("div").find("input").val();
	    	$(this).parent("div").find("input").val(++quantity);
/* 	    	let price = $(".addPrice").text();
	    	let totalPrice = price * quantity;
	    	$(".totalPrice").text("최종 금액: ￦" + totalPrice); */

	    });

		$('.addWrap').on('click', '.minus_btn' ,function() {
	    	let quantity = $(this).parent("div").find("input").val();
	    	if(quantity > 1){
	    		$(this).parent("div").find("input").val(--quantity);
/* 		    	let price = $(".addPrice").text();
		    	let totalPrice = price * quantity;
		    	$(".totalPrice").text("최종 금액: ￦" + totalPrice); */
	    	}
	    });
		
		$(function(){
//		     이미지 클릭시 해당 이미지 모달
		    $("p img").click(function(){
 		        let img = new Image();
		        img.src = $(this).attr("src")
		        $('.modalBox').html(img); 
		        $(".modal").show();
		    });
		// 모달 클릭할때 이미지 닫음
		    $(".modal").click(function (e) {
		    $(".modal").toggle();
		  });
		});
		    function createElement(e, file) {
		      const li = document.createElement('li');
		      const img = document.createElement('img');
		      img.setAttribute('src', e.target.result);
		      img.setAttribute('data-file', file.name);
		      li.appendChild(img);

		      return li;
		    }

			    const realUpload = document.querySelector('.real-upload');
			    const upload = document.querySelector('.upload');

			    upload.addEventListener('click', () => realUpload.click());

			    realUpload.addEventListener('change', getImageFiles);

			    function getImageFiles(e) {
			      const uploadFiles = [];
			      const files = e.currentTarget.files;
			      const imagePreview = document.querySelector('.image-preview');
			      const docFrag = new DocumentFragment();

			
			      // 파일 타입 검사
			      [...files].forEach(file => {
			        if (!file.type.match("image/.*")) {
			          alert('이미지 파일만 업로드가 가능합니다.');
			          return
			        }
			
			        // 파일 갯수 검사
			        if ([...files].length < 3) {
			          uploadFiles.push(file);
			          const reader = new FileReader();
			          reader.onload = (e) => {
			            const preview = createElement(e, file);
			            imagePreview.appendChild(preview);
			          };
			          reader.readAsDataURL(file);
			        }
			      });
			    }
		</script>
	</body>
</html>
