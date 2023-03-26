<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>

<div id="container" style="max-width:1200px; margin:auto">
	${category}-${now}
	<c:forEach var="s" items="${ascshow}">
	<div class="fs-3 fw-bold pt-2 px-4 blinking" style="color:#d2850c">오늘의 티켓</div>
	<div style="border:2px solid #f9e7cb; border-radius:10px; width:1000px; height:300px">오늘 티켓 상품	
	</div>
	<hr style="border-width:3px 0 0 0; border-style:dotted; border-color:#efa635">
	<div class="row row-cols-1 row-cols-md-3 g-2">
	        <div class="card border-0" style="max-width:400px; cursor:pointer;" onclick="location.href='${ctx}/ticketing.do?title=${sh.id}'">
	            <div class="row row-cols-md-2 g-1">
	                <div class="col-5">
						<c:choose>
							<c:when test="${fn:startsWith(sh.image, 'http')}">
								<!-- Load the image from a URL -->
								<img src="${sh.image}" class="card-img-top2" alt="...">
							</c:when>
							<c:otherwise>
								<!-- Load the image from a file path -->
								<img src="img/${sh.image}" class="card-img-top2" alt="...">
							</c:otherwise>
						</c:choose>
					</div>
	                <div class="col-7 card-body">
	                	<div class="pb-1">
							<c:if test="${today >= strDate-2 && now <= sh.dateEnd}"><span class="btn-sm-blue">진행중</span></c:if>
							<c:if test="${today < strDate-2}"><span class="btn-sm-green">예정</span></c:if>
							<c:if test="${now > sh.dateEnd}"><span class="btn-sm-red">종료</span></c:if>
						</div>
	                    <h5 class="card-title text-dark fw-bold">${sh.title}</h5>
	                    <div class="text-primary fw-bold">⭐⭐⭐ ${sh.star}</div>
	                    <div class="text-dark">${sh.location}</div>
	                    <div class="text-dark fw-bold">${sh.price}원</div>
	                    <div class="text-danger fw-bold">${sh.discount}%</div>
	                </div>
	            </div>
				<div class="ellipsis2 text-dark pt-3">${sh.info}</div>
	        </div>
    	</div>
	</c:forEach>
</div>

<%@ include file="./footer.jsp" %>
