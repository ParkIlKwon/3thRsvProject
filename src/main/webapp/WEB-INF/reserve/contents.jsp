<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<script>
let title = request.getParameter("title");
</script>
<div id="container" style="max-width:1200px; margin:auto">
<main class="main">
	<section class="rcmd">
		<div class="swiper-container">
		  <div class="swiper-wrapper">
		    <div class="swiper-slide"><a href="#"><img src="${ctx}/img/slide1.jpg"></a></div>
		    <div class="swiper-slide"><a href="#"><img src="${ctx}/img/slide2.jpg"></a></div>
		    <div class="swiper-slide"><a href="#"><img src="${ctx}/img/slide3.jpg"></a></div>
		  </div>
		</div>
	</section>
  
	<section class="topRk p-4">
		<input type="radio" name="tabmenu" id="tab1" checked>
		<label for="tab1">영화 순위</label>
		<input type="radio" name="tabmenu" id="tab2">
		<label for="tab2">공연 순위</label>
		<input type="radio" name="tabmenu" id="tab3">
		<label for="tab3">스포츠 순위</label>
		
		<div class="conbox con1">
		<div class="mycards">
		    <div class="row row-cols-1 row-cols-md-3 g-4">
			<c:forEach var="r" items="${rankshow}">
		        <div class="col"  OnClick="location.href ='contents.jsp?'" style="cursor:pointer;">
		            <div class="card">
		                <img src="img/${r.image}" class="card-img-top" alt="...">
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

		</div>
		<div class="conbox con2">공연내용</div>
		<div class="conbox con3">스포츠내용</div>
	</section>
</main>
</div>
<%@ include file="./footer.jsp" %>