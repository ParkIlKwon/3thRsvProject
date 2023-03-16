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
<title>Ticketory</title>
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"> -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="${ctx}/css/app.css">
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<!-- <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css"> -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">

  <script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
  <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
</head>

<body>
<header>

<div id="top" class="row py-2 px-2">
	<div class="col-3"><img src="https://via.placeholder.com/160x80" alt="로고" onclick="location.href ='${ctx}/main.do'" style="cursor:pointer"></div>
	<div class="col-9" id="topNv">
		<ul class="nav topNv justify-content-end p-2">
		<c:if test="${id eq null}">
		<li class="nav-item text-"><a class="nav-link text-basic" href="${ctx}/login.do">로그인</a></li>
		<li class="nav-item"><a class="nav-link text-basic" style="font-color:black" href="${ctx}/account.do">회원가입</a></li>
		</c:if>
		<c:if test="${id ne null}">
		<li class="nav-item"><a class="nav-link text-basic" href="${ctx}/logout.do">${id}님 로그아웃</a></li>
		</c:if>
	  <li class="nav-item"><a class="nav-link text-basic" href="#">예약확인/취소</a></li>
	  <li class="nav-item"><a class="nav-link text-basic" href="${ctx}/mypage.do">마이 페이지</a></li>
	  <li class="nav-item"><a class="nav-link text-basic" href="#">고객센터</a></li>
	</ul>
	</div>
</div>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color:#f9e7cb;">
<div class="container-fluid">
	<div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link active" href="${ctx}/main.do">홈</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">영화</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">공연</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="#">뮤지컬</a>
            <a class="dropdown-item" href="#">연극</a>
            <a class="dropdown-item" href="#">콘서트</a>
          </div>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">스포츠</a>
          <div class="dropdown-menu">
            <a class="dropdown-item" href="#">야구</a>
            <a class="dropdown-item" href="#">축구</a>
            <a class="dropdown-item" href="#">농구</a>
          </div>
        </li>
      </ul>
      <form class="d-flex">
        <input class="form-control me-sm-1" type="search" placeholder="Search" id="searchData">
        <button class="btn btn-secondary btn-sm btn-block" type="button" onclick="checkSearch()">Search</button>
      </form>
	</div>
  </div>
</nav>
</header>