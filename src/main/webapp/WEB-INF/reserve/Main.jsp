<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="tday" class="java.util.Date"/>
<fmt:parseNumber value="${tday.time / (1000*60*60*24)}" integerOnly="true" var="today"></fmt:parseNumber>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<section >
	<div class="swiper-container p-2" style="max-width:1200px; margin:auto"> 
	<div class="fs-3 fw-bold pt-2 px-4 blinking" style="color:#d2850c">추천 티켓</div>
	<hr style="border-width:3px 0 0 0; border-style:dotted; border-color:#efa635">
		<div class="swiper-wrapper">
			<div class="swiper-slide">
			    <div class="row row-cols-1 row-cols-md-3 g-2">
				<c:forEach var="sh" items="${ascshow}" end="3">
					<c:if test="${sh.dateStart >= now}">
			        <div class="card border-0" style="max-width:400px; cursor:pointer;" onclick="location.href='${ctx}/ticketing.do?title=${sh.title}'">
			            <div class="row row-cols-md-2 g-1">
			                <div class="col-5"><img src="img/${sh.image}" class="card-img-top2" alt="..."></div>
			                <div class="col-7 card-body">
			                	<div class="pb-1">
			                		<fmt:parseDate value="${sh.dateStart }" var="strD" pattern="yyyy-MM-dd"/>
									<fmt:parseNumber value="${strD.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
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
			        </c:if>
				</c:forEach>
			    </div>
			</div>
		   
			<div class="swiper-slide">
			    <div class="row row-cols-1 row-cols-md-3 g-2" id="slideBox">
				<c:forEach var="sp" items="${ascsports}" end="3">
					<c:if test="${sp.dateStart >= now}">
			        <div class="card border-0" style="max-width:400px; cursor:pointer;" onclick="location.href='${ctx}/ticketing.do?title=${sp.title}'">
			            <div class="row row-cols-md-2 g-1">
			                <div class="col-5"><img src="img/${sp.image}" class="card-img-top2" alt="..."></div>
			                <div class="col-7 card-body">
			                	<div class="pb-1">
			                		<fmt:parseDate value="${sp.dateStart }" var="strD" pattern="yyyy-MM-dd"/>
									<fmt:parseNumber value="${strD.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
									<c:if test="${today >= strDate-2 && now <= sp.dateEnd}"><span class="btn-sm-blue">진행중</span></c:if>
									<c:if test="${today < strDate-2}"><span class="btn-sm-green">예정</span></c:if>
									<c:if test="${now > sp.dateEnd}"><span class="btn-sm-red">종료</span></c:if>
								</div>
			                    <h5 class="card-title text-dark fw-bold">${sp.title}</h5>
			                    <div class="text-primary fw-bold">⭐⭐⭐ ${sp.star}</div>
			                    <div class="text-dark">${sp.location}</div>
			                    <div class="text-dark fw-bold">${sp.price}원</div>
			                    <div class="text-danger fw-bold">${sp.discount}%</div>
			                </div>
			            </div>
						<div class="ellipsis2 text-dark pt-3">${sp.info}</div>
			        </div>
			        </c:if>
				</c:forEach>
			    </div>
		   </div>
	    </div>
	    <hr style="border-width:3px 0 0 0; border-style:dotted; border-color:#efa635">
    </div>
</section>
 
<section class="topRk p-4" style="max-width:1200px; margin:auto">
	<input type="radio" name="tabmenu" id="tab1" checked>
	<label for="tab1">공연 랭킹Top3</label>
	<input type="radio" name="tabmenu" id="tab2">
	<label for="tab2" >스포츠 랭킹Top3</label>
	
	<div class="conbox con1 px-5">
	    <div class="row row-cols-1 row-cols-md-3 g-5">
		<c:forEach var="r" items="${rankshow}" end="3">
		<c:if test="${r.dateStart >= now}">
	        <div class="col" onclick="location.href='${ctx}/ticketing.do?title=${r.title}'" style="cursor:pointer;">
	            <div class="card h-100">
	                <div class="imgBox" style="height:330px"><img src="img/${r.image}" class="card-img-top" alt="..."></div>
	                <div class="card-body">
	                    <h5 class="card-title">${r.title}</h5>
	                    <div class="ellipsis">${r.info}</div>
	                    <div>⭐⭐⭐ ${r.star}</div>
	                </div>
				</div>
			</div>
		</c:if>
		</c:forEach>
	    </div>
	</div>
	<div class="conbox con2 px-5" >
	    <div class="row row-cols-1 row-cols-md-3 g-5">
		<c:forEach var="r" items="${ranksports}" end="3">
		<c:if test="${r.dateStart >= now}">
	        <div class="col" onclick="location.href='${ctx}/ticketing.do?title=${r.title}'" style="cursor:pointer;">
	            <div class="card h-100">
	                <div class="imgBox" style="height:330px"><img src="img/${r.image}" class="card-img-top" alt="..."></div>
	                <div class="card-body">
	                    <h5 class="card-title">${r.title}</h5>
	                    <div class="ellipsis">${r.info}</div>
	                    <div>⭐⭐⭐ ${r.star}</div>
	                </div>
	            </div>
	        </div>
	    </c:if>
		</c:forEach>
	    </div>
	</div>
</section>
<script type = "text/javascript">
  new Swiper('.swiper-container', {
    slidesPerView: 'auto', //한번에 보여줄 요소 갯수. auto 설정가능
    spaceBetween: 0, //슬라이드간 padding값
    loop: true, //loop > true는 무한반복
    autoplay: {
      delay: 3000, //3초에 한번씩 자동으로 슬라이드
    },
  });
</script>
<%@ include file="./footer.jsp" %>