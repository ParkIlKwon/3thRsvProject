<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="./header2.jsp" %>
<%@ include file="../modal/membermodal.jsp" %>
<script type="text/javascript" src="script/Account.js" defer></script>

<body>
	<div class="m-auto py-5" style="width:60%" align="center">
		<font style="font-size:1.5rem; font-weight:bold;">
		<font style="color:#efa635">티켓토리 </font>
		회원가입</font><br><br>
		<form action="${ctx}/account.do" method="POST" onsubmit="return checkform();">
			<table class="table table-striped" border="1">
			<tr><th class="col-4" style="text-align:center">아 이 디</th><td><input class="left col-12" type="text" name="id" id="id"/></td></tr>
			<tr><th class="col-4" style="text-align:center">비밀번호</th><td><input class="left col-12" type="text" name="pw1" id="pw1"/></td></tr>
			<tr><th class="col-4" style="text-align:center">비밀번호 확인</th><td><input class="left col-12" type="text" name="pw2" id="pw2"/></td></tr>
			<tr><th class="col-4" style="text-align:center">이 &nbsp 름</th><td><input class="left col-12" type="text" name="name" id="name"/></td></tr>
			<tr><th class="col-4" style="text-align:center">휴대폰 번호</th><td><input class="left col-12" type="text" name="hp" id="hp"/></td></tr>
			</table>
			<input type="checkbox" id="terms"> [필수] 이용약관 동의
			<input type="button" data-bs-toggle="modal" data-bs-target="#showterms" value="전문보기">
			<br><br>
			<input class="btn-basic" type="submit" value="회원가입"/> &nbsp<input type="reset" value="취소" class="btn-cancel"/>
		</form>
	</div>
</body>
</html>