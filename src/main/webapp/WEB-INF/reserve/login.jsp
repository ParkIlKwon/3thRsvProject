<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<script type="text/javascript" src="script/Login.js" defer></script>

<div class="container" align="center">
	<div class="m-auto py-5" style="width:60%">
		<font style="font-size:1.5rem; font-weight:bold;">
		<font style="color:#efa635">티켓토리 </font>
		로그인</font><br><br>
		<div class="input-group input-group-lg">
		  <span class="input-group-text" id="inputGroup-sizing-lg">아 이 디&nbsp</span>
		  <input id="id" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
		</div><br>
		<div class="input-group input-group-lg">
		  <span class="input-group-text" id="inputGroup-sizing-lg">비밀번호</span>
		  <input id="pw" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
		</div><br>
	        <button type="button" class="btn-basic" onclick="idcheck()">로그인</button> &nbsp
	        <button type="button" class="btn-lt-basic" onclick="location.href='${ctx}/account.do'">회원가입</button>
	</div>
</div>

<%@ include file="./footer.jsp" %>