<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>      
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
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
	
</body>

<%@ include file="./footer.jsp" %>
</html>