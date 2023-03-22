<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<div id="container" style="max-width:1200px; margin:auto">
	<section class="rcmd p-4">
		<div class="swiper-container px-5">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
				    <div class="row row-cols-1 row-cols-md-3 g-5">
					<c:forEach var="sh" items="${newshow}">
				        <div class="col" onclick="location.href='${ctx}/ticketing.do?title=${sh.title}'" style="cursor:pointer;">
				            <div class="card h-100">
				                <div style="height:350px"><img src="img/${sh.image}" class="card-img-top" alt="..."></div>
				                <div class="card-body">
				                    <h5 class="card-title">${sh.title}</h5>
				                    <div class="ellipsis">${sh.info}</div>
				                    <div>⭐⭐⭐ ${sh.star}</div>
				                </div>
				            </div>
				        </div>
					</c:forEach>
				    </div>
			    </div>
			    <div class="swiper-slide">
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
			    </div>
		    </div>
		</div>
	</section>
  
	<section class="topRk p-4">
		<input type="radio" name="tabmenu" id="tab1" checked>
		<label for="tab1">공연 순위</label>
		<input type="radio" name="tabmenu" id="tab2">
		<label for="tab2" >스포츠 순위</label>
		
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