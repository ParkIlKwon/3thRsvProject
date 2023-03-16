<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검색영역</title>
</head>
<body>

	<h1></h1>
	<c:forEach var = "t" items="${TicketList}">
	${t.title}
	
	</c:forEach>
	
<%@ include file="./footer.jsp" %>	
</body>
</html>

