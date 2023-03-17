<%@page import="java.util.ArrayList"%>
<%@page import="com.basic.reserve.vo.Member"%>
<%@page import="com.basic.reserve.dao.MemberDAO"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var = "ctx" value="${pageContext.request.contextPath}"/>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="./img/favicon.png">
<title>Ticketory</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/css/app.css">
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<script type="text/javascript" src="script/Search.js" defer></script>
<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>

<body>
<header>
	<nav class="navbar navbar-expand-md navbar-light px-2" id="topNv" style="background-color:none; max-width:1200px; margin:auto">
	  <div class="container-fluid">
	  	<img src="${ctx}/img/logo.png" alt="로고" onclick="location.href ='${ctx}/main.do'" style="cursor:pointer; width:240px">
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerList" aria-controls="navbarTogglerList" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse justify-content-end" id="navbarTogglerList">
			<ul class="nav topNv p-2">
				<c:if test="${id eq null}">
				<li class="nav-item"><a class="nav-link text-basic" href="${ctx}/login.do">로그인</a></li>
				<li class="nav-item"><a class="nav-link text-basic" style="font-color:black" href="${ctx}/account.do">회원가입</a></li>
				</c:if>
				<c:if test="${id ne null}">
				<li class="nav-item"><a class="nav-link text-basic" href="${ctx}/logout.do">${id}님 로그아웃</a></li>
				</c:if>
				<li class="nav-item"><a class="nav-link text-basic" href="#">예약확인/취소</a></li>
				<li class="nav-item"><a class="nav-link text-basic" href="${ctx}/mypage.do">마이 페이지</a></li>
				<li class="nav-item"><a class="nav-link text-basic" href="${ctx}/board.do">고객센터</a></li>
			</ul>
	    </div>
	  </div>
	</nav>
	
	<nav class="navbar navbar-expand-md navbar-light"
		style="background-color: #f9e7cb;">
		<div class="container-fluid" style="max-width:1200px; margin:auto">
			<ul class="navbar-nav me-auto">
				<li class="nav-item"><a class="nav-link active"
					href="${ctx}/main.do">홈</a></li>
				<li class="nav-item"><a class="nav-link" href="#">영화</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
					href="#" role="button" aria-haspopup="true" aria-expanded="false">공연</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">뮤지컬</a> <a
							class="dropdown-item" href="#">연극</a> <a class="dropdown-item"
							href="#">콘서트</a>
					</div></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
					href="#" role="button" aria-haspopup="true" aria-expanded="false">스포츠</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="#">야구</a> <a class="dropdown-item"
							href="#">축구</a> <a class="dropdown-item" href="#">농구</a>
					</div></li>
			</ul>
			<div class="d-none d-lg-block">
				<form class="d-flex">
					<input class="form-control me-sm-1" type="search"
						placeholder="Search" id="searchData">
					<button class="btn btn-secondary btn-sm btn-block" type="button"
						onclick="checkSearch()" id="search">검색</button>
				</form>
			</div>
		</div>
	</nav>
</header>