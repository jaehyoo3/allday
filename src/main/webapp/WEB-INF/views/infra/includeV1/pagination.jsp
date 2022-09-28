<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

				<ul class="pagination modal-5">
					<c:if test="${vo.startPage gt vo.pageNumToShow}">
                		<li><a class="prev fa fa-arrow-left" href="javascript:goList(${vo.startPage - 1})"></a></li>
					</c:if>
					
					<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
						<c:choose>
							<c:when test="${i.index eq vo.thisPage}">
				  				<li> <a href="javascript:goList(${i.index})" class="active">${i.index}</a></li>
				  			</c:when>
							<c:otherwise>  
				 				<li> <a href="javascript:goList(${i.index})">${i.index}</a></li>
				 			</c:otherwise>
				 		</c:choose>
				 	</c:forEach>
				 	
				 	<c:if test="${vo.endPage ne vo.totalPages}">  
				  <li><a href="javascript:goList(${vo.endPage + 1})" class="next fa fa-arrow-right"></a></li>
				 	</c:if>
				</ul>