<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="script/Account.js" defer></script>
<head>
<meta charset="UTF-8">
<title>회원가입폼</title>

</head>
<body>
	<form action="${ctx}/account.do" method="POST" onsubmit="return checkform();">
	<table class="table table-striped" border="1">
	<tr><th style="text-align: center;" class="col-2">아이디</th><td><input class="left col-6" type="text" name="id" id="id"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">비밀번호</th><td><input class="left col-6" type="text" name="pw" id="pw"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">비밀번호 확인</th><td><input class="left col-6" type="text" name="pw2" id="pw2"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">이름</th><td><input class="left col-6" type="text" name="name" id="name"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">핸드폰 번호</th><td><input class="left col-6" type="text" name="hp" id="hp"/></td></tr>

	<tr><td colspan="2"><input style="margin-left: 200px" class="col-2 btn btn-secondary" type="submit" value="회원가입"/>  <input type="reset" value="취소" class="col-2 btn btn-warning"/></td></tr>
	</table>
		</form>
</body>
</html>