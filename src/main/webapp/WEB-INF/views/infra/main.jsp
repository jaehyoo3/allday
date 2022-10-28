<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
	<head>
		<link href="/resources/Images/css/main.css" rel="stylesheet">
		<title>Home</title>
	</head>
	
	<body>
<div class="canvas-wrapper">
	<a href="#" class="canvas">
		<div class="canvas_border">
			<svg>
				<defs><linearGradient id="grad-orange" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" style="stop-color:rgb(253,137,68);stop-opacity:1"></stop><stop offset="100%" style="stop-color:rgb(153,75,23);stop-opacity:1"></stop></linearGradient><linearGradient id="grad-red" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" stop-color="#D34F48"></stop><stop offset="100%" stop-color="#772522"></stop></linearGradient></defs>
				<rect id="rect-grad" class="rect-gradient" fill="none" stroke="url(#grad-orange)" stroke-linecap="square" stroke-width="4" stroke-miterlimit="30" width="100%" height="100%"></rect>
			</svg>
		</div>
		<div class="canvas_img-wrapper" onClick="location.href='main'">
			<img class="canvas_img" src="/resources/Images/img/logo2.png" alt="">
		</div>
		<div class="canvas_copy canvas_copy--left">
			<span class="canvas_copy_subtitle">User</span>
			<strong class="canvas_copy_title">Hello</strong>
			<strong class="canvas_copy_title">BLUEBEE!</strong>
			<span class="canvas_copy_details">Enter the Shopping Mall</span>
		</div>
	</a>
	<a href="#" class="canvas">
		<div class="canvas_border">
			<svg>
				<defs><linearGradient id="grad-orange" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" style="stop-color:rgb(253,137,68);stop-opacity:1"></stop><stop offset="100%" style="stop-color:rgb(153,75,23);stop-opacity:1"></stop></linearGradient><linearGradient id="grad-red" x1="0%" y1="0%" x2="100%" y2="0%"><stop offset="0%" stop-color="#D34F48"></stop><stop offset="100%" stop-color="#772522"></stop></linearGradient></defs>
				<rect id="rect-grad" class="rect-gradient" fill="none" stroke="url(#grad-orange)" stroke-linecap="square" stroke-width="4" stroke-miterlimit="30" width="100%" height="100%"></rect>
			</svg>
		</div>
		<div class="canvas_img-wrapper" onClick="location.href='/xdmin/memberList'">
		<img class="canvas_img" src="/resources/Images/img/admin.png" alt="">
			
		</div>
		<div class="canvas_copy">
			<span class="canvas_copy_subtitle">Management</span>
			<strong class="canvas_copy_title">Hello</strong>
			<strong class="canvas_copy_title">Admin!</strong>
			<span class="canvas_copy_details">User, Product, Code, CodeGroup...</span>
		</div>
	</a>
</div>
	</body>
</html>
