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
	
	<c:forEach var="t" items="${selection}">
	<img alt="" src="img/${t.image}">
	${t.title}
	${t.dateStart} ~ ${t.dateEnd}
		</c:forEach>
	<br>
	${t.info}
	<br>
	<c:forEach var="p" items="${placesel}">
	<img alt="" src="img/${p.image}">
	${p.name}
	<button class="btn btn-primary" onclick="location.href='${ctx}/ticketing.do?placename=${p.name}'">예매하러가기 !</button>
	</c:forEach>
	
	

	
</body>

<%@ include file="./footer.jsp" %>
</html>