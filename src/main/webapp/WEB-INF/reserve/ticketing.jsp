<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<jsp:useBean id="tday" class="java.util.Date"/>
<fmt:parseNumber value="${tday.time / (1000*60*60*24)}" integerOnly="true" var="today"></fmt:parseNumber>
<link rel="stylesheet" type="text/css" href="${ctx}/css/datepicker.css">
<script type="text/javascript" src="script/datepicker.js" defer></script>
<script type="text/javascript" src="script/reserve.js" defer></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/css/bootstrap.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/2.3.2/css/bootstrap-responsive.css">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.4.1/js/bootstrap.js"></script>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<body>

<div id="container" style="max-width:1200px; margin:auto">
	<div class="row p-4">
		<c:forEach var="t" items="${selection}">
		<div class="col-md-auto">
			<div class="p-2">
				<fmt:parseDate value="${t.dateStart }" var="strD" pattern="yyyy-MM-dd"/>
				<fmt:parseNumber value="${strD.time / (1000*60*60*24)}" integerOnly="true" var="strDate"></fmt:parseNumber>
			    <c:if test="${today >= strDate-2 && now <= t.dateEnd}"><span class="btn-sm-blue">진행중</span></c:if>
				<c:if test="${today < strDate-2}"><span class="btn-sm-green">예정</span></c:if>
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
				<c:if test="${id  eq null && today >= strDate-2 && now <= t.dateEnd}">
					<h5 style="color:red">로그인 후 예매 가능합니다</h5>
					<div class="p-1"><button class="btn-disable" disabled>예매불가</button></div>
				</c:if>
				
 				<c:if test="${today < strDate-2 || now > t.dateEnd}">
					<div class="p-1"><button class="btn-disable" disabled>예매불가</button></div>
				</c:if>
				
				<c:if test="${id ne null && today >= strDate-2 && now <= t.dateEnd}">
				<fmt:formatNumber var = "totalprice" type="number" value="${t.price * ((100 - t.discount)*0.01)}" maxFractionDigits="0"/>
				<c:forEach var="m" items="${mlist}">
				날짜 선택
				<input type="text" id="datepicker" class="input-basic datepicker mr-2" placeholder="날짜를 선택하세요" name="date"><br>
			    <input type="hidden" id = "str" value="${t.dateStart}"> 
				<input type="hidden" id = "ed" value="${t.dateEnd}">
				<div>티켓 장수 (잔여석 :<span style="color:red"> ${t.seatNum} </span>석): <input class="input-basic" type="number" id="seat" /></div>
				<div><input class="input-basic" type="number"> 사용가능 포인트 : ${m.memberPoints}원 <button>포인트적용</button></div>
				<div><b id="totalprice">최종가: ${totalprice} 원</b></div>
				
				<h2>예매자 정보</h2>
				
				이름 : ${m.memberName} <br>
				연락처 : ${m.memberHP}
				</c:forEach>
				
				<div class="p-2">
				<button class="btn-basic" onclick="reserve(${totalprice})">결제하기</button>
				<button class="btn-cancel" onclick="location.href='${ctx}/main.do'">취소하기</button>
				</div>
 				</c:if>
		</div>
		</c:forEach>
	</div>
</div>

</body>
<%@ include file="./footer.jsp" %>
