<%@page import="java.util.ArrayList"%>
<%@page import="com.basic.reserve.vo.Member"%>
<%@page import="com.basic.reserve.dao.MemberDAO"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "ctx" value="${pageContext.request.contextPath}"/>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>티켓천국</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/css/app.css">
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
</head>

<body>
<header>

<div id="topNv">
	<ul class="nav topNv justify-content-end p-2">
		<c:if test="${id eq null}">
		<li class="nav-item"><a class="nav-link" href="#">로그인</a></li>
		<li class="nav-item"><a class="nav-link" href="#">회원가입</a></li>
		</c:if>
		<c:if test="${id ne null}">
		<li class="nav-item"><a class="nav-link" href="#">${id}님 로그아웃</a></li>
		</c:if>
	  <li class="nav-item"><a class="nav-link" href="#">예약확인/취소</a></li>
	  <li class="nav-item"><a class="nav-link" href="#">마이 페이지</a></li>
	  <li class="nav-item"><a class="nav-link" href="#">고객센터</a></li>
	</ul>
</div>
<div id="banner" class="row py-3 px-2">
	<div class="col-2"><img src="https://via.placeholder.com/140x80" alt="로고" onclick="location.href ='${ctx}/main.do'" style="cursor:pointer"></div>
	<div class="col-7"><div class="input-group mb-3" id="search"><input type="text" class="form-control" aria-describedby="button-addon2">
  		<button class="btn btn-outline-secondary" type="button" id="button-addon2">검색</button></div></div>
	<div class="col-3"><img src="https://via.placeholder.com/200x80" alt="이벤트배너" onclick="location.href ='${ctx}/main.do'" style="cursor:pointer"></div>
</div>
<div id="gnb">
	<ul class="nav justify-content-start">
		<li class="nav-item"><a class="nav-link" href="#">홈</a></li>
	    <li class="nav-item dropdown">
		    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">공연</a>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="#">뮤지컬</a></li>
				<li><a class="dropdown-item" href="#">연극</a></li>
				<li><a class="dropdown-item" href="#">콘서트</a></li>
		    </ul>
		</li>
		<li class="nav-item"><a class="nav-link" href="#">영화</a></li>
		<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">스포츠</a>
			<ul class="dropdown-menu">
				<li><a class="dropdown-item" href="#">야구 | </a>
					<a class="dropdown-item" href="#">축구 | </a>
					<a class="dropdown-item" href="#">농구</a>
					</li>
		    </ul>
		</li>
	</ul>
</div>
</header>
</body>
</html>