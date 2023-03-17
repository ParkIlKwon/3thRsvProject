<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<%@ include file="../modal/membermodal.jsp" %>

<div class="row justify-content-md-center p-5" align="center">
	<c:forEach var='m' items='${mlist}'>
		<p class="pb-3"><font style="font-size:1.3rem; font-weight:bold;">
		<font style="color:#efa635; font-size:2rem">${m.memberName}</font>님 회원정보</font></p>
		
	<div class="col-md-4 px-5" align="left">
		<div class="p-2">회원 아이디 <font style="color:#efa635; font-size:1.2rem; font-weight:bold">${m.memberId}</font></div>
		
		<div class="p-2">비밀번호 <input type="password" class="form-control" id="memberHP" value="${m.memberHP}">
		<button class="btn-ltsm-basic" data-bs-toggle="modal" data-bs-target="#deleteMember">수정하기</button></div>

		<div class="p-2">휴대폰번호 <input type="text" class="form-control" id="memberHP" value="${m.memberHP}">
		<button class="btn-ltsm-basic" data-bs-toggle="modal" data-bs-target="#deleteMember">수정하기</button></div>
		
	</div>
	</c:forEach>
	<div class="p-5"><font style="color:grey; font-size:0.8rem">[회원탈퇴를 원하시면 
	<a style="color:red; font-weight:bold; font-size:1rem" data-bs-toggle="modal" href="#deleteMember">여기</a>를 클릭하세요]</font></div>
	</div>

<%@ include file="./footer.jsp" %>