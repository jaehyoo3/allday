<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	<input type="hidden" name="member_memberSeq" value="<c:out value="${sessSeq }" />">

	<input type="hidden" name="productName" value="<c:out value="${item.productName}"/>">
	
	<input type="hidden" name="productPrice" value="<c:out value="${item.productPrice}"/>"/>
<%-- <input type="hidden" name="shOptionDate" value="<c:out value="${vo.shOptionDate}"/>"/> --%>

<%-- 
<input type="hidden" name="productSeq" value="<c:out value="${vo.productSeq}"/>"/> --%>