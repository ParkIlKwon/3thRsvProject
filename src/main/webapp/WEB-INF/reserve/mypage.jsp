<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<%@ include file="../modal/membermodal.jsp" %>

<div id="container" style="max-width:340px; margin:auto" align="center">
	<c:forEach var='m' items='${mlist}'>
		<p class="pt-5"><font style="font-size:1.3rem; font-weight:bold;">
		<font style="color:#d2850c; font-size:2rem">${m.memberName}</font>님 회원정보</font></p>
		
		<div class="col py-2" style="border:2px solid #f9e7cb; border-radius:5px" align="left">
			<div class="row p-3">
				<div class="col-4">아&nbsp이&nbsp디</div>
				<div class="col-8" style="color:#efa635; font-weight:bold">${m.memberId}</div>
			</div>
			<div class="row p-3">
				<div class="col-4">비밀번호</div>
				<div class="col-8"><input type="password" style="border:none;color:#efa635;background-color:white" value="${m.memberPw}" disabled></div>
				<div class="col-4"></div>
				<div class="col-8"><input type="checkbox" id="mdPw">
					<label for="mdPw"><font style="color:#9b9b9b; font-size:0.9rem">&nbsp비밀번호 변경</font></label>
					<div class="modiPw"><input type="password" class="input-basic col-8" id="memberpw">
						<button id="pwbtn" class="btn-ltsm-basic" data-bs-toggle="modal" data-bs-target="#updatePassword">변경하기</button>
					</div>
				</div>
			</div>
			<div class="row p-3">
				<div class="col-4">휴대폰번호</div>
				<div class="col-8"><font style="color:#efa635; font-weight:bold">${m.memberHP}</font></div>
				<div class="col-4"></div>
				<div class="col-8"><input type="checkbox" id="mdHp">
					<label for="mdHp"><font style="color:#9b9b9b; font-size:0.9rem">&nbsp휴대폰번호 변경</font></label>
					<div class="modiHp"><input type="text" class="input-basic col-8" placeholder="010-xxxx-xxxx" id="memberHP">
						<button id="hpbtn" class="btn-ltsm-basic" data-bs-toggle="modal" data-bs-target="#updateHP">변경하기</button>
					</div>
				</div>
			</div>
		</div>
		
		<div class="card m-3" style="width: 270px" align="center">
			<div class="card-header"><b>MY 쿠폰함</b></div>
			<div class="card-body p-2">
				<B>회원가입 쿠폰 </B> 3,000원 할인<br>
				<B>일일출석 쿠폰 </B> 1,000원 할인<br>
				<B>포인트 잔액 : ${m.memberPoints}</B><br>
			</div>
		</div>
		<div class="pt-4 p-2"><font style="color:grey; font-size:0.8rem">&nbsp&nbsp※ 회원탈퇴는 
		<a style="color:red; font-weight:bold;" data-bs-toggle="modal" href="#deleteMember">[여기]</a>를 클릭하세요.</font></div>
	</c:forEach>
</div>
<%@ include file="./footer.jsp" %>
