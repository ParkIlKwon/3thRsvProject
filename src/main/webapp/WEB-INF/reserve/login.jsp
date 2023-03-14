<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<script type="text/javascript" src="script/Login.js" defer></script>

<div class="row container" align="center">
<div class="col-5 m-auto py-5">
	<div class="input-group input-group-lg">
	  <span class="input-group-text" id="inputGroup-sizing-lg">아 이 디&nbsp</span>
	  <input id="id" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
	</div><br>
	<div class="input-group input-group-lg">
	  <span class="input-group-text" id="inputGroup-sizing-lg">비밀번호</span>
	  <input id="pw" type="text" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
	</div><br>
        <button type="button" class="btn btn-outline-basic" onclick="idcheck()">로그인</button> &nbsp
        <button type="button" class="btn btn-outline-basic" onclick="location.href='${ctx}/account.do'">회원가입</button>
</div>
	
		
</div>

<%@ include file="./footer.jsp" %>