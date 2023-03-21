<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="./header.jsp" %>      
<meta charset="EUC-KR">
<title>어드민 티켓영역</title>
</head>
<body>
		<h1>티켓관리</h1>
	
	<table class="table">
  <thead>
    <tr>
      <th scope="col">제목</th>
      <th scope="col">시작일</th>
      <th scope="col">마감일</th>
      <th scope="col">상태</th>
      <th scope="col">삭제</th>
    </tr>
  </thead>
  
  <tbody>
  <c:forEach var="t" items="${ticketAllList}">
    <tr>
      <th scope="row">${t.title}</th>
      <td>${t.dateStart}</td>
      <td>${t.dateEnd}</td>
      <td>
      <c:if test="${now >= t.dateStart && now <= t.dateEnd}"><span class="btn-sm-blue">진행중</span></c:if>
	  <c:if test="${now < t.dateStart}"><span class="btn-sm-green">예정</span></c:if>
	  <c:if test="${now > t.dateEnd}"><span class="btn-sm-red">종료</span></c:if>
      </td>
      <td><button class="btn btn-danger btn-sm">삭제</button></td>
    </tr>
</c:forEach>
  </tbody>
</table>




		
		
		
		
		
		
</body>
<%@ include file="./footer.jsp" %>
</html>