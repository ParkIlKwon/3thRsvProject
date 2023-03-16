<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>

<main class="main">
	<section class="rcmd" align="center">
		<div class="swiper-container">
		  <div class="swiper-wrapper">
		    <div class="swiper-slide"><a><img src="${ctx}/img/slide1.jpg"></a></div>
		    <div class="swiper-slide"><a><img src="${ctx}/img/slide2.jpg"></a></div>
		    <div class="swiper-slide"><a><img src="${ctx}/img/slide3.jpg"></a></div>
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
		
		<div class="conbox con1">영화내용
		<c:forEach var="d" items="${rankshow}">
		${d.title}
		</c:forEach>
		</div>
		<div class="conbox con2">공연내용</div>
		<div class="conbox con3">스포츠내용</div>
	</section>
</main>

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