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
    	<link href="/resources/Images/ccgstyleSheet.css" rel="stylesheet" />
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
    	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	</head>
	
	<body>
		<form method='post'>
			<div id='haeder'></div>
			<div class="navbar">
				<a href="#" id="logo"> <img src="/resources/Images/logo2.png" height="60"
					onClick="location.href='codeGroupList'">
				</a>
				<ul id="menu">
					<li><a href="#" onClick="location.href='./wowProduct.html'"><b>상품관리</b></a></li>
					<li><a href="#"><b>회원관리</b></a></li>
					<li><a href="#"><b>문의관리</b></a></li>
					<li><a href="#"><b>배송관리</b></a></li>
				</ul>
			</div>
			<div id='content'>
				<div class="container">
				<h3>코드그룹 관리</h3>
					<div class="row mb-3">
						<div class="col">
							<span>코드그룹 코드</span>
							<input class="form-control" name="ccgseq" id="ccgseq" value="<c:out value="${item.ccgseq }"/>" type="text" placeholder="영문(대소문자),숫자">
			    		</div>
   				 		<div class="col">
							<span>코드그룹 코드(Another)X</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>코드그룹 이름(한글)</span>
							<input class="form-control" name="codeName" id="codeName" value="<c:out value="${item.codeName}"/>" type="text" placeholder="한글,숫자">
			    		</div>
   				 		<div class="col">
							<span>코드그룹 이름(영문)</span>
							<input class="form-control" name="codeNameEng" id="codeNameEng" value="<c:out value="${item.codeNameEng }"/>" type="text" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col" >
							<span>사용 여부</span>
							<select class="form-select" id="userNY" name='userNY'>
								<option>사용</option>
								<option value='0' <c:if test="${item.userNY eq 0 }">selected</c:if>>N</option>
								<option value='1' <c:if test="${item.userNY eq 1 }">selected</c:if>>Y</option>
							</select>
			    		</div>
   				 		<div class="col">
							<span>순서X</span>
							<input class="form-control" type="text" aria-label="default input example">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>설명X</span>
							<textarea  class="form-control" type="text" aria-label="Disabled input example"></textarea>
			    		</div>
   				 		<div class="col">
							<span>삭제여부</span>
							<select class="form-select" id="delNy"name='delNy'>
								<option value="0">N</option>
								<option value="1">Y</option>
							</select>
						</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>예비1(varchar type)X</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
			    		</div>
   				 		<div class="col">
   				 		<label>dd</label>
							<span>예비2(varchar type)X</span>
							<input class="form-control" type="text" placeholder="영문(대소문자),숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<label for='aazxc' id='test1' style='display:block'>연습중</label>
							<input id='aazxc' type="text" placeholder="영문(대소문자),숫자">
							<label id='test2' style="color:#801515; display:none;">코드를 입력해주세요!</label>
							
			    		</div>
					</div>
					<div class="row mb-3">
						<div class="col">
							<span>예비1(Int type)X</span>
							<input class="form-control" type="text" placeholder="숫자">
			    		</div>
   				 		<div class="col">
							<span>예비2(Int type)X</span>
							<input class="form-control" type="text"  placeholder="숫자">
						</div>
					</div>
					<div class="row mb-3">
						<div class="col-6">
							<span>예비3(Int type)3X</span>
							<input class="form-control" type="text" placeholder="숫자">
			    		</div>
					</div>
				</div>
				<div class="d-flex mb-1">
					<div class="p-1"><button type="button" class="btn btn-secondary" data-bs-toggle="modal" data-bs-target="#ban_del"><i class="fa-solid fa-list"></i></button></div>
					<div class="p-1  ms-auto"><button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ban_del2"><i class="fa-solid fa-x"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-danger"><i class="fa-solid fa-trash"></i></button></div>
					<div class="p-1"><button type="button" class="btn btn-success" ><i class="fa-solid fa-bookmark" ></i></button></div>
					<span onclick="test();" style="cursor:pointer;">보내d기</span>
				</div>
 				<input type="radio" name="gender" value="123">12
				<input type="radio" name="gender" value="456">12
				
				<input type='checkbox' name='1' id='1' value='one'>
				<input type='checkbox' name='1' id='1' value='two'>
				<input type='checkbox' name='1' id='1' value='three'>
			</div>
			<div id='footer'>
				<div class='copyright'>© 2022. Bluebee all rights reserved.</div>
			</div>
		</form>
		<script src="https://kit.fontawesome.com/a1961b2393.js"crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    
    <script type="text/javascript">
	     function test() {
	    	 	var eng = document.getElementById('codeNameEng');
	    	 	var uny = document.getElementById('userNY');
	    	 	var div = document.getElementById('aazxc')
	    	 	
	    	 	if(div.value == "" || div.value == null) {
	    	 		alert("코드!! 입력해주세요");
	    	 		document.getElementById("test2").style.display = 'block';
	    	 		div.value = "";
	    	 		div.style.border = 'none';
	    	 		div.style.outline = '1px double #801515'
	    	 		return false;
	    	 	} else if(div.value != "" || div.value != null) {
	    	 		document.getElementById("test2").style.display = 'none';
	    	 		div.style.outline = '1px double black';
	    	 		div.style.border = 'none';
	    	 	}
	    	 	
		    	if(document.getElementById('codeName').value == "" || document.getElementById('codeName').value == null) {
		    		alert("코드 명을 입력해주세요");
		    		document.getElementById('codeName').value = "";
		    		document.getElementById('codeName').focus();
		    		return false;
		    	}
		    	
		    	if(eng.value == "" || eng.value == null) {
		    		alert("코드명(영어)를 입력해주세요.");
		    		eng.value = "";
		    		eng.focus();
		    		return false;
		    	}
		    	
		    	if(uny.value == "") {
		    		alert("사용여부를 골라주세요.")
		    		uny.focus();
					return false;	    		
		    	}
		    	
	    	/* 
	    	alert(document.querySelector("input[name='gender']:checked").value);
	    	alert(document.getElementById('codeName').value);
	    	alert(document.getElementById('codeNameEng').value);
	    	alert(document.getElementById('userNY').value);
	    	alert(document.getElementById('delNy').value); 
	    	alert(document.getElementById('1').value);
	    	*/
	    	document.getElementById('myform').submit();
	    }
     </script>
	</body>
</html>
