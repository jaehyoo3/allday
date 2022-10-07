<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
			<div id='header'>
				<div class='menu'>
					<ul class='ul'>
						<li class='b'>
							<div class="search-box">
					    		<a href="#"><button class="btn-search"><i class="fas fa-search"></i></button></a>
					   			<input type="text" class="input-search" placeholder="Search">
					  		</div>
						</li>
						<c:choose>
							<c:when test="${empty sessSeq}">
								<li class='b'><div class="vr"></li>
								<li class='b'><a href="basket" onClick="location.href='basket'"><i class="fa-solid fa-bag-shopping"></i></a></li>
								<li class='b'><a href="modify"><i class="fa-solid fa-user"></i></a></li>
								<li class='b'><a href="login"><i class="fa-solid fa-right-to-bracket"></i></a></li>
								<li class='b'><div class="vr"></li>
								<li class='b'><a href="#">고객센터</a></li>
							</c:when>
							<c:otherwise>
								<li class='b'><div class="vr"></li>
								<li class='b'><a href="basket" onClick="location.href='basket'"><i class="fa-solid fa-bag-shopping"></i></a></li>
								<li class='b'><a href="modify"><i class="fa-solid fa-user"></i></a></li>
								<li class='b'><div class="vr"></li>
								<li class='b'><a href="#">고객센터</a></li>
								<li class='b'> "<c:out value="${sessNick}"/>" 님 환영합니다 <a href="#" id='btnLogout'><i class="fa-solid fa-x" style='font-size: 2px; vertical-align: 2px;'></i></a>
								</li>
							</c:otherwise>
						</c:choose>	
					</ul>
				</div>
			</div>
			<div class="navbar">
		        <a href="#" id="logo">
		             <img src="/resources/Images/img/logo2.png" height="60" onClick="location.href='main'">
		        </a>
		        <ul id="menu">
		            <li><a href="#" onClick="location.href='storeNew'"><b>New</b></a></li>
		            <li><a href="#" onClick="location.href='storeBest'"><b>Best</b></a></li>
		            <li><a href="#"onClick="location.href='storeOuter'"><b>Outer</b></a></li>
		            <li><a href="#"onClick="location.href='storeTop'"><b>Top</b></a></li>
		            <li><a href="#"onClick="location.href='storePants'"><b>Pants</b></a></li>
		            <li><a href="#"><b><div class="vr"></b></a></li>
		            <li><a href="#"><b><i class="fa-brands fa-instagram fa-xl"></i></b></a></li>
		        </ul>
	  		</div>
	  	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
		<script src="https://kit.fontawesome.com/a1961b2393.js" crossorigin="anonymous"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
		<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
		<link rel="stylesheet" href="/resources/demos/style.css">
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
		<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	  	<script>
		$("#btnLogout").on("click", function(){
			$.ajax({
				async: true 
				,cache: false
				,type: "post"
				,url: "/member/logoutProc"
				,data: {}
				,success: function(response) {
					if(response.rt == "success") {
						location.href = '/';
					} else {
						// by pass
					}
				}
				,error : function(jqXHR, textStatus, errorThrown){
					alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
				}
			});
		});
		</script>
	  		
