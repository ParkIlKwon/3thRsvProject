<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<section >
	<div class="swiper-container p-2" style="max-width:1200px; margin:auto"> 
		<div class="swiper-wrapper">
			<div class="swiper-slide">
			   <div class="col-5"><img src="img/회원가입1.png" class="card-img-top2" alt="..."></div>
           </div>
		</div>
		<div class="swiper-slide">
		   <div class="col-5"><img src="img/후기1.png" class="card-img-top2" alt="..."></div>
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