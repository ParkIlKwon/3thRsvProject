<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<div id="container" style="max-width:1200px; margin:auto">
         <h6 class="fs-5">display-4</h6>
         <h6 class="fs-6">display-3</h6>
         <h6 class="display-2">display-2</h6>
         <h6 class="display-1">display-1</h6>
		<div class="row row-cols-1 row-cols-md-3 p-5">
			<c:forEach var="t" items="${selection}">
				<div style="width: 25rem">
					<div class="p-2" style="font-size:1.4rem; font-weight:bold">${t.title}&nbsp;
						<c:if test="${now >= t.dateStart && now <= t.dateEnd}"><span id="running" class="btn-sm-blue">진행중</span></c:if>
						<c:if test="${now < t.dateStart}"><span id="running" class="btn-sm-green">예정</span></c:if>
						<c:if test="${now > t.dateEnd}"><span id="running" class="btn-sm-red">종료</span></c:if>
					</div>
					<div class="p-2 text-weight-bold">[${t.category} > ${t.contents}]</div>
					<img alt="" src="img/${t.image}" style="width: 90%;  border-radius:10px">
				</div>
				<div class="p-2">
					<div style="width: 18rem; " class="ps-2">
						<div class="p-2"><b>날짜 :</b> ${t.dateStart} ~ ${t.dateEnd}</div>
						<div class="p-2"><b>시간 :</b> ${t.duration}분</div>
						<div class="p-2"><b>평점 : ⭐⭐⭐ ${t.star}</b></div>
							<c:if test="${now < t.dateStart || now > t.dateEnd}">
							<div class="p-2"><button class="btn-disable" disabled>예매하기</button></div>
							</c:if>
							<c:if test="${now >= t.dateStart && now <= t.dateEnd}">
							<div class="p-2"><button class="btn-basic" onclick="location.href='${ctx}/ticketing.do?placename=${p.name}'">예매하기</button></div>
							</c:if>
							
							<input type="radio" name="rsv" value="1" id="rsv1" checked>
							<label for="rsv1"><span class="btn-basic">상세보기</span></label>
							<input type="radio" name="rsv" value="2" id="rsv2" >
							<label for="rsv2"><span class="btn-basic">예매하기</span></label>
					</div>
				
				</div>
				<div style="width: 18rem; " class="ps-2">
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
						
						<input type="radio" name="rsv" value="1" id="rsv1" checked>
						<label for="rsv1"><span class="btn-basic">상세보기</span></label>
						<input type="radio" name="rsv" value="2" id="rsv2" >
						<label for="rsv2"><span class="btn-basic">예매하기</span></label>
						
						
					
					<%-- <div class="p-2"><button class="btn-basic" onclick="location.href='${ctx}/ticketing.do?placename=${p.name}'">예매하기</button></div> --%>
				</div>
				
				<div class="p-2">
					<!-- <input type="checkbox" id="reserve" style="display:none">
					<label for="reserve"><span class="btn-basic">예매하기</span></label> -->
					<c:if test="${rsv==1}">
						<div id="info" style="width:100rem;">
						<b>[상세 설명]</b><br>
						${t.info}
						</div>
					</c:if>
					<c:if test="${rsv==2}">
						<div id="info" style="width:100rem;">
						<b>[예매하기]</b><br>
						좌석선택
						</div>
					</c:if>	
						
<%-- 					<div id="info" style="width:100rem;">
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
					</div> --%>
				
				</div>
			</c:forEach>
		</div>
	</div>
<%@ include file="./footer.jsp" %>
