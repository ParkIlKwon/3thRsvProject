<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<div id="container" style="max-width:1200px; margin:auto">
	<div class="row p-4">
		<c:forEach var="t" items="${selection}">
		
		<div class="col-md-auto">
			<div class="p-2">
				<c:if test="${now >= t.dateStart && now <= t.dateEnd}"><span class="btn-sm-blue">진행중</span></c:if>
				<c:if test="${now < t.dateStart}"><span class="btn-sm-green">예정</span></c:if>
				<c:if test="${now > t.dateEnd}"><span class="btn-sm-red">종료</span></c:if>
			</div>
			<img alt="" src="img/${t.image}" style="width: 20rem;  border-radius:10px">
		</div>
		
		<div class="col p-3">
			<div class="p-1" style="font-size:1.4rem; font-weight:bold">${t.title}&nbsp;</div>
			<div class="p-1 fw-bold text-secondary">[${t.category} > ${t.contents}]</div>
				<div class="p-2"><b>기간 :</b> ${t.dateStart} ~ ${t.dateEnd}</div>
				<div class="p-2"><b>장소 :</b> ${t.location}</div>
				<div class="p-2"><b>시간 :</b> ${t.duration}분</div>
				<div class="p-2"><b>평점 : ⭐⭐⭐ ${t.star}</b></div>
				<c:if test="${now < t.dateStart || now > t.dateEnd}">
				<div class="p-2"><button class="btn-disable" disabled>예매하기</button></div>
				</c:if>
				<c:if test="${now >= t.dateStart && now <= t.dateEnd}">
				<div class="p-2"><button class="btn-basic" onclick="location.href='${ctx}/ticketing.do?placename=${p.name}'">예매하기</button></div>
				</c:if>
				<div>
				<hr>
				<b>[상세 설명]</b>
				<div style="overflow:auto; height:100px;">
				${t.info}
				</div>
			</div>
			
			<hr>
			<div class="conbox con_r2" >
			    <div class="row row-cols-1 row-cols-md-3 g-4">
				<b>[예매하기]</b><br>
				날짜 선택
				시간 선택
				포인트 적용 선택
			    </div>
			</div>
		</div>
<%-- 		<div class="col-md-auto p-2">
			<input type="radio" name="rsv" id="tab_r1" checked>
			<label for="tab_r1">상세보기</label>
			<c:if test="${now >= t.dateStart && now <= t.dateEnd}">
				<input type="radio" name="rsv" id="tab_r2" >
				<label for="tab_r2">예매하기</label>
			</c:if>
		
			<div class="conbox con_r1">
	    		<div class="p-2">
					<div class="p-2"><b>날짜 :</b> ${t.dateStart} ~ ${t.dateEnd}</div>
					<div class="p-2"><b>시간 :</b> ${t.duration}분</div>
					<div class="p-2"><b>평점 : ⭐⭐⭐ ${t.star}</b></div>
					<c:if test="${now < t.dateStart || now > t.dateEnd}">
					<div class="p-2"><button class="btn-disable" disabled>예매하기</button></div>
					</c:if>
					<c:if test="${now >= t.dateStart && now <= t.dateEnd}">
					<div class="p-2"><button class="btn-basic" onclick="location.href='${ctx}/ticketing.do?placename=${p.name}'">예매하기</button></div>
					</c:if>
					<div>
				<b>[상세 설명]</b>
				<div style="overflow:auto; height:100px;">
				${t.info}
					</div>
					</div>
				</div>
			</div>
			<div class="conbox con_r2" >
			    <div class="row row-cols-1 row-cols-md-3 g-4">
				<b>[예매하기]</b><br>
				날짜 선택
				시간 선택
				포인트 적용 선택
			    </div>
			</div>
		</div> --%>
		</c:forEach>
	</div>
</div>
<%@ include file="./footer.jsp" %>
