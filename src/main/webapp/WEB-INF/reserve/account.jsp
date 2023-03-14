<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입폼</title>
</head>
<body>
	<form action="${ctx}/memberAccount.do">
	<table class="table table-striped" border="1">
	<tr><th style="text-align: center;" class="col-2">I  D</th><td><input class="left col-6" type="text" name="id"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">P  W</th><td><input class="left col-6" type="text" name="pw"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">NAME</th><td><input class="left col-6" type="text" name="name"/></td></tr>
	<tr><th style="text-align: center;" class="col-2">H  P</th><td><input class="left col-6" type="text" name="email"/></td></tr>

	<tr><td colspan="2"><input style="margin-left: 200px" class="col-2 btn btn-secondary" type="submit" value="회원가입"/>  <input type="reset" value="취소" class="col-2 btn btn-warning"/></td></tr>
	</table>
		</form>
</body>
</html>