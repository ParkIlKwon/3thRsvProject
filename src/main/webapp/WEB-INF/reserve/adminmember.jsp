<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="./header.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<table class="table table-hover">
	<tr><th>ID</th><th>NAME</th><th>H.P</th><th>POINT</th><th>EDIT</th><th>DELETE</th></tr>
		<c:forEach var="m" items="${mlist}">
		   <c:if test="${m.memberId ne 'admin'}">
			<tr>
			<td>${m.memberId}</td>
			<td>${m.memberName}</td>
			<td>${m.memberHP}</td>
			<td><input class="input-basic" type="number" value="${m.memberPoints}"/></td>
			<td><button class="btn btn-primary">수정</button></td>
			<td><button class="btn btn-danger" onclick="location.href='${ctx}/admindelete.do?id=${m.id}'">삭제</button></td>
			
			</tr>
				</c:if>

		</c:forEach>
	</table>





</body>
<%@ include file="./footer.jsp" %>
</html>