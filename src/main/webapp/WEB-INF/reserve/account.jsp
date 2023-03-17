<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../modal/membermodal.jsp" %>
<%@ include file="./header2.jsp" %>
<script type="text/javascript" src="script/Account.js" defer></script>

<div class="p-5" style="max-width:500px; margin:auto" align="center">
	<h3 style="font-weight:bold;">
	<font style="color:#efa635">티켓토리 </font>
	회원가입</h3><br><br>
	<form action="${ctx}/account.do" method="POST" onsubmit="return checkform();">
		<table class="table table-striped" border="1">
			<tr><th class="col-4" style="text-align:center">아 이 디</th>
				<td><input class="left col-12 px-2" type="text" name="id" id="id"/></td>
			</tr>
			<tr><th class="col-4" style="text-align:center">비밀번호</th>
				<td><input class="left col-12 px-2" type="text" name="pw1" id="pw1"/></td>
			</tr>
			<tr><th class="col-4" style="text-align:center">비밀번호 확인</th>
				<td><input class="left col-12 px-2" type="text" name="pw2" id="pw2"/></td>
			</tr>
			<tr>
			<th class="col-4" style="text-align:center">이 &nbsp 름</th>
				<td><input class="left col-12 px-2" type="text" name="name" id="name"/></td>
			</tr>
			<tr>
			<th class="col-4" style="text-align:center">휴대폰 번호</th>
				<td><input class="left col-12 px-2" type="text" name="hp" id="hp" placeholder="010-xxxx-xxxx"/></td>
			</tr>
		</table>
		<p><input type="checkbox" id="terms"> [필수] 이용약관 동의&nbsp
		<input type="button" data-bs-toggle="modal" data-bs-target="#showterms" value="전문보기" style="font-size:0.7rem">
		</p>
		<p class="pt-3"><input class="btn-basic" type="submit" value="회원가입"/> &nbsp
		<input type="reset" value="취소" class="btn-cancel"/></p>
	</form>
</div>
<div align="center"><%@ include file="./footer.jsp" %></div>
