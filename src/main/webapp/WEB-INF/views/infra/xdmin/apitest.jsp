<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>관리자 페이지</title>

	</head>

	<body>
<br>aaa : <c:out value="${resultCode }"/>
<br>aaa : <c:out value="${resultMsg }"/>
<br>aaa : <c:out value="${pageNo }"/>
<br>aaa : <c:out value="${totalCount }"/>
<br>aaa : <c:out value="${numOfRows }"/>
<br>aaa : <c:out value="${items }"/>
<br>aaa : <c:out value="${fn:length(items) }"/>

<c:forEach items="${items}" var="item" varStatus="status">
	<c:out value="${item.YYYY }"/>
	<br><c:out value="${item.so2Grade }"/>	
	<br><c:out value="${item.coFlag }"/>	
	<br><c:out value="${item.khaiValue }"/>	
	<br><c:out value="${item.so2Value }"/>	
	<br><c:out value="${item.coValue }"/>	
	<br><c:out value="${item.pm25Flag }"/>	
	<br><c:out value="${item.pm10Flag }"/>	
	<br><c:out value="${item.o3Grade }"/>	
	<br><c:out value="${item.pm10Value }"/>	
	<br><c:out value="${item.khaiGrade }"/>	
	<br><c:out value="${item.pm25Value }"/>	
	<br><c:out value="${item.sidoName }"/>	
	<br><c:out value="${item.no2Flag }"/>	
	<br><c:out value="${item.no2Grade }"/>	
	<br><c:out value="${item.o3Flag }"/>	
	<br><c:out value="${item.pm25Grade }"/>	
	<br><c:out value="${item.so2Flag }"/>	
	<br><c:out value="${item.dataTime }"/>	
	<br><c:out value="${item.coGrade }"/>	
	<br><c:out value="${item.no2Value }"/>	
	<br><c:out value="${item.stationName }"/>	
	<br><c:out value="${item.pm10Grade }"/>	
	<br><c:out value="${item.o3Value }"/>	
</c:forEach>
	
	</body>
</html>