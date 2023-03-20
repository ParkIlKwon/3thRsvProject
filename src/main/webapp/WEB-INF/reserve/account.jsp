<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../modal/accountModal.jsp" %>
<%@ include file="./header2.jsp" %>
<script type="text/javascript" src="script/Account.js" defer></script>

<div id="container" style="max-width:400px; margin:auto" align="center">

	<p class="pt-4 pb-3"><font style="font-size:1.4rem; font-weight:bold;">
	<font style="color:#d2850c; font-size:1.7rem">티켓토리 </font>회원가입</font></p>
	
	<form action="${ctx}/account.do" method="POST" onsubmit="return checkform();">
	
		<div class="col py-2" style="border:2px solid #f9e7cb; font-weight:bold; border-radius:5px" align="center">
			<div class="row p-3">
				<div class="col-4">아&nbsp;이&nbsp;디</div>
				<div class="col-5 pe-0"><input class="input-basic col-12" type="text" name="id" id="id"/></div>
				
			</div>
			<div class="row p-3">
				<div class="col-4">비밀번호</div>
				<div class="col-8"><input class="input-basic col-12" type="password" name="pw1" id="pw1"/></div>
			</div>
			<div class="row px-3 pb-3">
				<div class="col-4">비밀번호 확인</div>
				<div class="col-8"><input class="input-basic col-12" type="password" name="pw2" id="pw2"/></div>
			</div>
			<div class="row p-3">
				<div class="col-4">이 &nbsp; 름</div>
				<div class="col-8"><input class="input-basic col-12" type="text" name="name" id="name"/></div>
			</div>
			<div class="row p-3">
				<div class="col-4">휴대폰 번호</div>
				<div class="col-8">
					<input class="input-basic col-12" type="text" name="hp" id="hp" placeholder="010-xxxx-xxxx"/>
				</div>
			</div>
		</div>
			<p class="py-3"><input class="btn-basic" type="submit" value="회원가입"/> &nbsp;
	<input type="reset" value="취소" class="btn-cancel"/></p>	
	</form>
	<div class="col-3 ps-0"><button class="btn-ltsm-basic">중복체크</button></div>
	<p class="pt-3"><input type="checkbox" id="terms"> [필수] 이용약관 동의&nbsp;
		<input type="button" data-bs-toggle="modal" data-bs-target="#showterms" value="전문보기" style="font-size:0.7rem">
	</p>

</div>

<div align="center"><%@ include file="./footer.jsp" %></div>