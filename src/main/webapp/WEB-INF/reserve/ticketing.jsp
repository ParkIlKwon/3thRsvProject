<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<link rel="stylesheet" type="text/css" href="${ctx}/css/datepicker.css">
<script type="text/javascript" src="script/datepicker.js" defer></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.js"></script>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="now" class="java.util.Date"/>
<%-- <fmt:formatDate value="${now}" type="DATE" pattern="yyyy-MM-dd"/> --%>
<%-- <fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="today"></fmt:parseNumber> --%>
<div id="container" style="max-width:1200px; margin:auto">
	<div class="row p-4">
		<c:forEach var="t" items="${selection}">
		
		<div class="col-md-auto">
			<div class="p-2">
				<c:if test="${now >= t.dateStart && now <= t.dateEnd}"><span class="btn-sm-blue">진행중</span></c:if>
				<c:if test="${now < t.dateStart}"><span class="btn-sm-green">예정</span></c:if>
				<c:if test="${now > t.dateEnd}"><span class="btn-sm-red">종료</span></c:if>
			</div>
			<div style="width: 18rem; max-height:350px">
				<img alt="" src="img/${t.image}" style="width:95%; max-height:350px; border-radius:10px">
			</div>
		</div>
		
		<div class="col p-3" style="line-height:2">
			<div class="pt-3" style="font-size:1.4rem; font-weight:bold">${t.title}&nbsp;</div>
			<div class="fw-bold" style="font-size:0.8rem; color:#efa635">[${t.category} > ${t.contents}]</div>
			<div><b>기간 :</b> ${t.dateStart} ~ ${t.dateEnd}</div>
	
			<div><b>장소 :</b> ${t.location}</div>
			<div><b>시간 :</b> ${t.duration}</div>
			<div><b>평점 : ⭐⭐⭐ ${t.star}</b></div>
			<div class="my-2" style="border-top:1px solid #efa635;  font-size:0.9rem">
				<b>[상세 소개]</b>
				<div style="overflow:auto; height:120px; line-height:1.5">
					${t.info}
				</div>
			</div>
		</div>
		<div class="p-2 my-2" style="border:2px solid #f9e7cb; border-radius:10px">
<%-- 				<c:if test="${now < t.dateStart || now > t.dateEnd}">
				<div class="p-1"><button class="btn-disable" disabled>예매불가</button></div>
				</c:if> --%>
<%-- 				<c:forEach var="d" varStatus="status" begin="1" end="${endDate - strDate+1 }">
				<c:set var="i" value="${i+1}"/> --%>
				<%-- <fmt:formatDate value="${strDate}" type="DATE" pattern="yyyy-MM-dd"/> --%>
					<%-- <fmt:formatDate value="${strDate+i}" pattern="yyyy-MM-dd" /> --%>
					<%-- ${strDate} --%>
<%-- 					${strDate+i}
					<fmt:parseNumber value="${strDate*(1000*60*60*24)}" integerOnly="true" var="std"></fmt:parseNumber>
					<fmt:formatNumber value="${std}" pattern="yyyy-MM-dd" />
				</c:forEach> --%>
				
				날짜 선택
				<input type="text" id="datepicker" class="datepicker mr-2" placeholder="Select Date" name="date"><br>
			    <input type="hidden" id = "str" value="${t.dateStart}"> 
				<input type="hidden" id = "ed" value="${t.dateEnd}">
				<c:forEach var="i" begin="0" end="${endDate - strDate}">
				<c:set var="nextDay" value="<%=new Date(new Date().getTime() + 60 * 60 * 24 * 1000 * (int) pageContext.getAttribute(\"i\"))%>" />
				<span><fmt:formatDate value="${nextDay}" pattern="yyyy-MM-dd"/></span>
				</c:forEach>
				<div>티켓 장수 (잔여석 :<span style="color:red"> ${t.seatNum} </span>석): <input type="number" id="seat" /></div>
				<div>포인트 적용 : x원</div>
				<div><b id="totalprice">${t.price} \</b></div>
				<br>
				<h2>예매자 정보</h2>
				<span style="color:red">
				<c:if test="${id  eq null}">로그인 해주세요</c:if>
				  </span>
				<c:forEach var="m" items="${mlist}">
				이름 : ${m.memberName} <br>
				연락처 : ${m.memberHP}
				</c:forEach>
				
				<div class="p-2">
				<button class="btn-basic" onclick="reserve()">결제하기</button>
				<button class="btn-cancel" onclick="location.href='${ctx}/main.do'">취소하기</button>
				</div>
<%-- 				</c:if> --%>
		</div>
		</c:forEach>
	</div>
</div>
<%@ include file="./footer.jsp" %>
