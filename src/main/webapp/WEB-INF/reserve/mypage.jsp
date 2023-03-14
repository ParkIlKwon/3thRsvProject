<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<%@ include file="../modal/membermodal.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지영역</title>
</head>
<body>
     현재로그인한 사용자 정보 <br>
	 아이디 : ${id} <br>
	 <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteMember">회원탈퇴</button>
	 <button class="btn btn-warning">비밀번호수정</button>
	 
	
</body>
</html>
<%@ include file="./footer.jsp" %>