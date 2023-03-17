<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header2.jsp" %>
<script type="text/javascript" src="script/Login.js" defer></script>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>

<div class="p-5" style="max-width: 500px; margin: auto" align="center">
	<h3 style="font-weight: bold;">
		<font style="color: #efa635">티켓토리 </font> 로그인
	</h3><br><br>
	<div class="input-group input-group-lg">
		<span class="input-group-text" id="inputGroup-sizing-lg">아 이 디&nbsp</span>
		<input id="id" type="text" class="form-control">
	</div><br>
	<div class="input-group input-group-lg">
		<span class="input-group-text" id="inputGroup-sizing-lg">비밀번호</span>
		<input id="pw" type="text" class="form-control">
	</div><br>
	<p class="pt-3">
		<button type="button" class="btn-basic" onclick="idcheck()">로그인</button>
		 &nbsp
		<button type="button" class="btn-lt-basic" onclick="location.href='${ctx}/account.do'">회원가입</button>
	</p>
</div>

<div align="center"><%@ include file="./footer.jsp" %></div>