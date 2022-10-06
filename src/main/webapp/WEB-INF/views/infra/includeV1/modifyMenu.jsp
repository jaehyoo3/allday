<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class='left'>
	<ul class="a">
		<li><a href="#" onClick="location.href='basket'">장바구니</a></li>
		<li><a href="#" onclick="location.href='modify'">주문조회</a></li>
		<li><a href="#" onClick="location.href='wish'">위시리스트</a></li>
		<li><a href="javascript:goForm(<c:out value="${sessSeq }"/>)">개인정보수정</a></li>
		<li><a href="#">회원탈퇴</a></li>
	</ul>
	<input type="hidden" name="memberSeq">
</div>