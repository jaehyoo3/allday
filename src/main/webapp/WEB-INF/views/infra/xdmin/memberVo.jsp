<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
<input type="text" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">

<input type="hidden" name="shDelNy" value="<c:out value="${vo.shDelNy}"/>"/>
<%-- <input type="hidden" name="shOptionDate" value="<c:out value="${vo.shOptionDate}"/>"/> --%>

<input type="hidden" name="shstartDate" value="<c:out value="${vo.shstartDate}"/>"/>
<input type="hidden" name="shendDate" value="<c:out value="${vo.shendDate}"/>"/>

<input type="hidden" name="shOption" value="<c:out value="${vo.shOption}"/>"/>
<input type="hidden" name="shValue" value="<c:out value="${vo.shValue}"/>"/>

<input type="text" name="memberSeq" value="<c:out value="${vo.memberSeq}"/>"/>
