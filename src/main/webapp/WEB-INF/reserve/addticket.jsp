<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="./header.jsp" %>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>티켓추가영역</h1>
	<button class="btn btn-primary" onclick="location.href = '${ctx}/addticket.do?category=null'">공연추가</button>
	
</body>
</html>

<%@ include file="./footer.jsp" %>