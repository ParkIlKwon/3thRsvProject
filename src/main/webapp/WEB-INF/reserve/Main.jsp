<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<div id="container" style="max-width:1200px; margin:auto">
	<section class="rcmd p-4 bg-dark">
		<div class="swiper-container">
<!-- 			<div class="swiper-wrapper"> -->
				<div class="swiper-slide px-3">
				<div class="fs-3 fw-bold" style="color:#d2850c">오늘의 공연</div>
				    <div class="row row-cols-1 row-cols-md-3 g-2" id="slideBox">
					<c:forEach var="sh" items="${newshow}">
				        <div class="card mb-3 border-0 bg-dark text-white" style="max-width:400px; cursor:pointer;" onclick="location.href='${ctx}/ticketing.do?title=${sh.title}'">
				            <div class="row row-cols-md-2 g-0">
				                <div class="col-5"><img src="img/${sh.image}" class="card-img-top2" alt="..."></div>
					                <div class="col-7 card-body">
					                    <h5 class="card-title text-white fw-bold">${sh.title}</h5>
					                    <div class="text-info fw-bold">⭐⭐⭐ ${sh.star}</div>
					                    <div class="text-white">${sh.location}</div>
					                    <div class="text-white fw-bold">${sh.price}</div>
					                    <div class="text-danger fw-bold">${sh.discount}%</div>
					                </div>
				            </div>
							<div class="ellipsis2 text-light">${sh.info}</div>
				        </div>
<%-- 				        <div class="col" onclick="location.href='${ctx}/ticketing.do?title=${sh.title}'" style="cursor:pointer;">
				            <div class="card h-100">
				                <div style="height:350px"><img src="img/${sh.image}" class="card-img-top" alt="..."></div>
				                <div class="card-body">
				                    <h5 class="card-title">${sh.title}</h5>
				                    <div class="ellipsis">${sh.info}</div>
				                    <div>⭐⭐⭐ ${sh.star}</div>
				                </div>
				            </div>
				        </div> --%>
					</c:forEach>
				    </div>
			   <!--  </div> -->
			   
			    <%-- <div class="swiper-slide px-5">
   				<div class="fs-3 fw-bold" style="color:#d2850c">오늘의 스포츠</div>
				    <div class="row row-cols-1 row-cols-md-3 g-5">
					<c:forEach var="sp" items="${newsports}">
				        <div class="col" onclick="location.href='${ctx}/ticketing.do?title=${sp.title}'" style="cursor:pointer;">
				            <div class="card h-100">
				                <div style="height:350px"><img src="img/${sp.image}" class="card-img-top" alt="..."></div>
				                <div class="card-body">
				                    <h5 class="card-title">${sp.title}</h5>
				                    <div class="ellipsis">${sp.info}</div>
				                    <div>⭐⭐⭐ ${sp.star}</div>
				                </div>
				            </div>
				        </div>
					</c:forEach>
				    </div>
			    </div> --%>
		    </div>
		</div>
	</section>
  
	<section class="topRk p-4">
		<input type="radio" name="tabmenu" id="tab1" checked>
		<label for="tab1">공연 랭킹Top3</label>
		<input type="radio" name="tabmenu" id="tab2">
		<label for="tab2" >스포츠 랭킹Top3</label>
		
		<div class="conbox con1 px-5">
		    <div class="row row-cols-1 row-cols-md-3 g-5">
			<c:forEach var="r" items="${rankshow}">
		        <div class="col" onclick="location.href='${ctx}/ticketing.do?title=${r.title}'" style="cursor:pointer;">
		            <div class="card h-100">
		                <div style="height:350px"><img src="img/${r.image}" class="card-img-top" alt="..."></div>
		                <div class="card-body">
		                    <h5 class="card-title">${r.title}</h5>
		                    <div class="ellipsis">${r.info}</div>
		                    <div>⭐⭐⭐ ${r.star}</div>
		                </div>
		            </div>
		        </div>
			</c:forEach>
		    </div>
		</div>
		<div class="conbox con2 px-5" >
		    <div class="row row-cols-1 row-cols-md-3 g-5">
			<c:forEach var="r" items="${ranksports}">
		        <div class="col" onclick="location.href='${ctx}/ticketing.do?title=${r.title}'" style="cursor:pointer;">
		            <div class="card h-100">
		                <div style="height:350px"><img src="img/${r.image}" class="card-img-top" alt="..."></div>
		                <div class="card-body">
		                    <h5 class="card-title">${r.title}</h5>
		                    <div class="ellipsis">${r.info}</div>
		                    <div>⭐⭐⭐ ${r.star}</div>
		                </div>
		            </div>
		        </div>
			</c:forEach>
		    </div>
		</div>
	</section>
</div>

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