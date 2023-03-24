<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<meta charset="UTF-8">
</head>
<body>

<div class="modal fade" id="checkreserve" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
      <div class="modal-content">
      
      <div class="modal-header">
        <h5 class="modal-title">예매확인</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
       <div class="modal-body">
    예약장소 :  <input type="text" class="body-contents" id="loc" readonly="readonly" style="border: none;"/><br>
    예약날짜 :  <input type="text" class="body-contents" id="date" readonly="readonly" style="border: none;"/><br>
    예약매수 :  <input type="text" class="body-contents" id="qty" readonly="readonly"/> 장<br>
    최종가격 :  <input type="text" class="body-contents" id="price" readonly="readonly"/> 원<br>
      </div>
      
       <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" onclick="location.href='${ctx}/main.do'">메인페이지로</button>
        <c:forEach var="m" items="${mlist}">
        <button type="button" class="btn btn-primary" onclick="location.href='${ctx}/ticketingPro.do'">예매확인하러가기</button>
      	</c:forEach>
      </div>
      
     	 </div>
    </div>
  </div>
  

</body>
</html>