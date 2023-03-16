<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>
<%@ include file="../modal/membermodal.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지영역</title>
</head>
<body>
	<div class="m-auto py-5" style="width:40%">
	<p class="pb-4" align="center"><font style="font-size:1.3rem; font-weight:bold;">
	<font style="color:#efa635; font-size:2rem">${id}</font>님 회원정보</font></p>
	회원번호
	이름
	아이디
	패스워드 [수정하기]
	휴대폰번호
	
	<form class="row g-3">
		<div class="col-4">회원 번호</div>
		<div class="col-8"></div>
		<label for="inputAddress" class="form-label">Address</label>
		    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
	  	</div>
	
	  <div class="col-md-6">
	    <label for="inputEmail4" class="form-label">Email</label>
	    <input type="email" class="form-control" id="inputEmail4">
	  </div>
	  <div class="col-md-6">
	    <label for="inputPassword4" class="form-label">Password</label>
	    <input type="password" class="form-control" id="inputPassword4">
	  </div>
	  <div class="col-12">
	    <label for="inputAddress" class="form-label">Address</label>
	    <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
	  </div>
	  <div class="col-12">
	    <label for="inputAddress2" class="form-label">Address 2</label>
	    <input type="text" class="form-control" id="inputAddress2" placeholder="Apartment, studio, or floor">
	  </div>
	  <div class="col-md-6">
	    <label for="inputCity" class="form-label">City</label>
	    <input type="text" class="form-control" id="inputCity">
	  </div>
	  <div class="col-md-4">
	    <label for="inputState" class="form-label">State</label>
	    <select id="inputState" class="form-select">
	      <option selected>Choose...</option>
	      <option>...</option>
	    </select>
	  </div>
	  <div class="col-md-2">
	    <label for="inputZip" class="form-label">Zip</label>
	    <input type="text" class="form-control" id="inputZip">
	  </div>
	  <div class="col-12">
	    <div class="form-check">
	      <input class="form-check-input" type="checkbox" id="gridCheck">
	      <label class="form-check-label" for="gridCheck">
	        Check me out
	      </label>
	    </div>
	  </div>
	  <div class="col-12">
	    <button type="submit" class="btn btn-primary">Sign in</button>
	  </div>
	</form>
</div>

     현재로그인한 사용자 정보 <br>
	 아이디 : ${id} <br>
	 <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#deleteMember">회원탈퇴</button>
	 <button class="btn btn-warning">비밀번호수정</button>
	 <c:forEach var='m' items='${mlist}'>
	 ${m.memberName}
	  </c:forEach>
	
</body>
</html>
<%@ include file="./footer.jsp" %>