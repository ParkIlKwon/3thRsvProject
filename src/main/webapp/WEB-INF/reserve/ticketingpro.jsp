<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>      
<div id="container" style="max-width:1200px; margin:auto">
	<div class="mycards p-5">
		<div class="row row-cols-1 row-cols-md-2 g-4">
			<c:forEach var="t" items="${selection}">
				<div style="width: 20rem; height:400px;">
					<img alt="" src="img/${t.image}" style="width: 100%; height:400px; border-radius:10px">
				</div>
				<div class="ps-2"">
					<div class="p-2"><h2><b>${t.title}&nbsp;</b></h2>
						<span id="running" class="btn-sm-blue">진행중</span>
						<span id="running" class="btn-sm-red">종료</span>
						<span id="running" class="btn-sm-green">예정</span>
					</div>
					<div class="p-2"><b>[${t.category} > ${t.contents}]</b></div>
					<div class="p-2"><b>날짜 :</b> ${t.dateStart} ~ ${t.dateEnd}</div>
					<div class="p-2"><b>시간 :</b> ${t.duration}분</div>
					<div class="p-2"><b>평점 : ⭐⭐⭐ ${t.star}</b></div>
					<div class="p-2"><button class="btn-basic" onclick="location.href='${ctx}/ticketing.do?placename=${p.name}'">예매하기</button></div>
				</div>
				<div style="width:100rem;">
				<b>[상세 설명]</b><br>
				${t.info}
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<%@ include file="./footer.jsp" %>
	
	<h1>예매하기 폼</h1>
	
	<c:forEach var="t" items="${selection}">
	<img alt="" src="img/${t.image}">
	<br>
	${t.title} <br>
	기간 : ${t.dateStart} ~ ${t.dateEnd}<br>
	가격 : ${t.price}<br>
	티켓 장수 (잔여석 :<span style="color:red"> ${t.seatNum} </span>석): <input type="number" id="seat" /><br>
	쿠폰 사용여부 : x<br>
	<b id="totalprice">${t.price} \</b>
	<button class="btn btn-primary" onclick="reserve()">결제하기</button>
	<button class="btn btn-secondary" onclick="location.href='${ctx}/main.do'">취소하기</button>
	</c:forEach>
	
	<h2>예매자 정보</h2>
	<span style="color:red">
	<c:if test="${id  eq null}">로그인 해주세요</c:if>
	  </span>
	<c:forEach var="m" items="${mlist}">
	이름 : ${m.memberName} <br>
	연락처 : ${m.memberHP}
	</c:forEach>
	
