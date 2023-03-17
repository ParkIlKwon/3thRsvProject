<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<%@ include file="../modal/membermodal.jsp" %>

<div id="container" style="max-width:350px; margin:auto" align="center">
	<c:forEach var='m' items='${mlist}'>
		<p class="pt-5"><font style="font-size:1.3rem; font-weight:bold;">
		<font style="color:#d2850c; font-size:2rem">${m.memberName}</font>님 회원정보</font></p>
		
	<div class="p-2" align="left">
		<div class="px-3">아 이 디 &nbsp
		<font style="color:#efa635; font-size:1.2rem; font-weight:bold">${m.memberId}</font></div>
		
		<div class="p-3">비밀번호&nbsp
		<input type="password" style="border:none;color:#efa635;background-color:white" value="${m.memberPw}" disabled><br>
		<font style="color:#ced4da; font-size:0.8rem">&nbsp* 변경을 원하시면 새로운 비밀번호 입력</font><br>
		&nbsp&nbsp&nbsp<input type="password" class="input-basic" id="memberpw">
		<button id="pwbtn" class="btn-ltsm-basic" data-bs-toggle="modal" data-bs-target="#updatePassword">수정하기</button></div>

		<div class="p-3">휴대폰번호 <font style="color:#efa635; font-weight:bold">${m.memberHP}</font><br>
		<font style="color:#ced4da; font-size:0.8rem">&nbsp* 변경을 원하시면 새로운 휴대폰 번호 입력</font><br>
		&nbsp&nbsp&nbsp<input type="text" class="input-basic" id="memberHP">
		<button id="hpbtn" class="btn-ltsm-basic" data-bs-toggle="modal" data-bs-target="#updateHP">수정하기</button></div>

		<div class="card m-3" style="width: 270px" align="center">
			<div class="card-header"><b>MY 쿠폰함</b></div>
			<div class="card-body p-2">
				<B>회원가입 쿠폰 </B> 3,000원 할인<br>
				<B>일일출석 쿠폰 </B> 1,000원 할인
		</div></div>
		<div class="pt-4 p-2"><font style="color:grey; font-size:0.8rem">&nbsp&nbsp※ 회원탈퇴는 
		<a style="color:red; font-weight:bold;" data-bs-toggle="modal" href="#deleteMember">[여기]</a>를 클릭하세요.</font></div>
	</div>
	</c:forEach>
</div>
<%@ include file="./footer.jsp" %>
