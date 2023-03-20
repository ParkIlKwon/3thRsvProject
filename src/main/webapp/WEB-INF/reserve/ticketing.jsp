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
				<div class="ps-2">
					<div class="p-2"><h2><b>${t.title}&nbsp;</b></h2>
						<c:if test="${now >= t.dateStart && now <= t.dateEnd}"><span id="running" class="btn-sm-blue">진행중</span></c:if>
						<c:if test="${now < t.dateStart}"><span id="running" class="btn-sm-green">예정</span></c:if>
						<c:if test="${now > t.dateEnd}"><span id="running" class="btn-sm-red">종료</span></c:if>
					</div>
					<div class="p-2"><b>[${t.category} > ${t.contents}]</b></div>
					<div class="p-2"><b>날짜 :</b> ${t.dateStart} ~ ${t.dateEnd}</div>
					<div class="p-2"><b>시간 :</b> ${t.duration}분</div>
					<div class="p-2"><b>평점 : ⭐⭐⭐ ${t.star}</b></div>
						<c:if test="${now < t.dateStart || now > t.dateEnd}">
						<div class="p-2"><button class="btn-disable" disabled>예매하기</button></div>
						</c:if>
						<c:if test="${now >= t.dateStart && now <= t.dateEnd}">
						<div class="p-2"><button class="btn-basic" onclick="location.href='${ctx}/ticketing.do?placename=${p.name}'">예매하기</button></div>
						</c:if>
					<%-- <div class="p-2"><button class="btn-basic" onclick="location.href='${ctx}/ticketing.do?placename=${p.name}'">예매하기</button></div> --%>
				</div>
				
				<div class="col-8"><input type="checkbox" id="reserve" style="display:none">
					<label for="reserve"><span class="btn-basic">예매하기</span></label>
					
				
					<div id="info" style="width:100rem;">
						<b>[상세 설명]</b><br>
						${t.info}
					</div>
					
					<div id="rsvPage" style="width:100rem;">
					<div style="border-bottom: 2px solid; color: #efa635"></div>
					<h2><b>[예매하기]</b></h2>
					날짜 선택
					시간 선택
					포인트 적용 선택
					<button class="btn-basic" onclick="location.href='#'">결제하기</button>
					</div>
				
				</div>
			</c:forEach>
		</div>
	</div>
</div>
<%@ include file="./footer.jsp" %>
