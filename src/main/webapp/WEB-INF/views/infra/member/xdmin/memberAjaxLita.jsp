<!<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" trimDirectiveWhitespaces="true"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

			<div class='table-box'>
					<table>
						<thead>
							<tr>
								<th style='width:3%;'><input type='checkbox'></th>
								<th style='width:5%;'>#</th>
								<th style='width:5%;'>Seq</th>
								<th>이름</th>
								<th>아이디</th>
								<th>닉네임</th>
								<th>전화번호</th>
								<th>생년월일</th>
								<th>이메일</th>
								<th>성별</th>
								<th>등급</th>
								<th>가입일</th>
							</tr>
						</thead>	
						<tbody>
							<c:forEach items="${list}" var="list" varStatus="status">
								<tr onclick="javascript:goForm(<c:out value="${list.memberSeq }"/>)" style="cursor:hand">
									<td><input type='checkbox'></td>
									<td><c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/></td>
									<td><c:out value="${list.memberSeq }"/></td>
									<td><c:out value="${list.memberName }"/></td>
									<td><c:out value="${list.memberID }"/></td>
									<td><c:out value="${list.memberNick }"/></td>
									<td><c:out value="${list.memberMobile }"/></td>
									<td><c:out value="${list.memberDob }"/></td>
									<td><c:out value="${list.memberEmail }"/></td>
									<td>
										<c:forEach items="${listCodeGender}" var="listGender" varStatus="statusGender">
											<c:if test="${list.memberGender eq listGender.codeOrder}"><c:out value="${listGender.codeName}"/></c:if>
										</c:forEach>
									</td>
									<td>
		 								<c:forEach items="${listCodeGrade}" var="list2" varStatus="statusGender">
											<c:if test="${list.memberGrade eq list2.codeOrder}"><c:out value="${list2.codeName}"/></c:if>
										</c:forEach>
									</td>
									<td><c:out value="${list.memberRegdate }"/></td>
								</tr>
							</c:forEach>
						</tbody>				
					</table>
				</div>
				<div class='pagination-box'>
					<span>
						<span class='pagination1'>Rows per page:</span>
						<div class="select-style">
							<select id= "changeRowNum" name="changeRowNum">
								<option value=10 <c:if test="${vo.rowNumToShow eq 10}">selected</c:if>>10</option>
								<option value=30 <c:if test="${vo.rowNumToShow eq 30}">selected</c:if>>30</option>
								<option value=50 <c:if test="${vo.rowNumToShow eq 50}">selected</c:if>>50</option>
								<option value="<c:out value="${vo.totalRows}" />" <c:if test="${vo.rowNumToShow eq vo.totalRows}">selected</c:if>>ALL</option>
							</select>
						</div>
						<span class='pagination1'>
							<c:choose>
								<c:when test="${vo.endRnumForMysql ge vo.totalRows }">
									${vo.startRnumForMysql + 1}-${vo.totalRows} of ${vo.totalRows}
								</c:when>
								<c:otherwise>
						  			${vo.startRnumForMysql + 1}-${vo.endRnumForMysql} of ${vo.totalRows}
						  		</c:otherwise>
						  	</c:choose>
						</span>
						<span class='pagination1'>
							<c:choose>
								<c:when test="${vo.thisPage gt 1}">
	                				<a href="javascript:goList(${vo.thisPage - 1})"><i class="fa-solid fa-chevron-left" style="color:#0095a8;"></i></a>
	                			</c:when>
	                			<c:otherwise>
	                				<i class="fa-solid fa-chevron-left"></i>
	                			</c:otherwise>
	                		</c:choose>
	                		<c:choose>
							<c:when test="${vo.thisPage ne vo.totalPages}">
					 			<a href="javascript:goList(${vo.thisPage + 1})"><i class="fa-solid fa-angle-right" style="color:#0095a8;"></i></a>
					 		</c:when>
	                			<c:otherwise>
	                			<i class="fa-solid fa-angle-right"></i>
	                			</c:otherwise>
	                		</c:choose>
				 		</span>
					</div>