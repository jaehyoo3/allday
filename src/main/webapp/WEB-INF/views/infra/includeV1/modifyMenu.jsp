<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<div class='left'>
	<ul class="a">
		<li><a href="javascript:goForm3(<c:out value="${sessSeq }"/>)">장바구니</a></li>
		<li><a href="javascript:goForm2(<c:out value="${sessSeq }"/>)">주문조회</a></li>
		<li><a href="javascript:goForm4(<c:out value="${sessSeq }"/>)">위시리스트</a></li>
		<li><a href="javascript:goForm(<c:out value="${sessSeq }"/>)">개인정보수정</a></li>
		<li><a href="#">회원탈퇴</a></li>
	</ul>
</div>