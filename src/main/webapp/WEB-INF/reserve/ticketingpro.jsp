<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>      

<link rel="stylesheet" type="text/css" href="${ctx}/css/tableApp.css">
<script type="text/javascript" src="script/ReserveCheck.js" defer></script>
<%@ include file="../modal/reservecheck.jsp" %>
	
<div id="container" style="max-width:1200px; margin:auto">
	<div class="col-8 p-4 text-DR fs-1 fw-bold">예매정보</div>
	<div class="table-responsive">
		<table id="customTable" class="table table-hover text-center m-auto" style="width:95%">
			<thead>
				<tr style="background:#d1cfcd">
					<th scope="col">삭제</th>
					<th scope="col">날짜</th>
					<th scope="col">제목</th>
					<th scope="col">장소</th>
					<th scope="col">수량</th>
					<th scope="col">금액</th>
					<th scope="col" class="col-2">리뷰</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="t" items="${res}" varStatus="status">
				<tr>
				    <td>  
				    <input class="form-check-input" type="checkbox" id="flexCheckDefault" data-idx2="${status.index}">
 					</td>
 					
					<td>${t.reserveDate}</td>
					<td>${t.reserveTitle}</td>
					<td>${t.reserveLocation}</td>
					<td>${t.reserveSeatNum}</td>
					<td>${t.reservePrice}</td>
					<td>
 					<c:if test="${t.review eq 0}">
 						<c:forEach var="m" items="${mlist}">
						<select class="form-select p-1" id="review" style="width:150px"
						 onchange="addreview(${m.id},${t.id},this.value)">
						
				            <option selected>- 별점 달기 -</option>
				            
				            <option value="1">⭐</option>
				            <option value="2">⭐⭐</option>
				            <option value="3">⭐⭐⭐</option>
				            <option value="4">⭐⭐⭐⭐</option>
				            <option value="5">⭐⭐⭐⭐⭐</option>
				           					
				        </select>
				         </c:forEach>
					</c:if>
					<c:if test="${t.review ne 0}">
						<c:forEach var="st" begin="1" end="${t.review}">
						⭐
						</c:forEach>
 					</c:if>
			        </td>
				</tr>
				<input type="hidden" value="${t.id}" data-idx="${status.index}" id="tid">
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="p-3 ps-5">
		<button class="btn-cancelD" onclick="ischecked()">예매 취소</button>
	</div>

</div>

<%@ include file="./footer.jsp" %>
	
	
	
	