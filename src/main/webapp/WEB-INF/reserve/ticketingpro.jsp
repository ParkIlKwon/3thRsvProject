<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>      

<link rel="stylesheet" type="text/css" href="${ctx}/css/tableApp.css">
<script type="text/javascript" src="script/ReserveCheck.js" defer></script>
	
<body>

	<h1>-예매정보-</h1>
		<div class="table-responsive">
			<table id="customTable" class="table custom-table">
				<thead>
					<tr>
						<th scope="col">Del</th>
						<th scope="col">Title</th>
						<th scope="col">Location</th>
						<th scope="col">QTY.</th>
						<th scope="col">Price</th>
						
					</tr>
				</thead>
				<tbody>
					<c:forEach var="t" items="${res}" varStatus="status">
					<tr>
					     <td>  
					     <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" data-idx2="${status.index}">
  						</td>
						<td>${t.reserveTitle}</td>
						<td>${t.reserveLocation}</td>
						<td>${t.reserveSeatNum}
						</td>
						<td>${t.reservePrice}</td>
					</tr>
					
						<input type="hidden" value="${t.id}" data-idx="${status.index}" id="tid">
					</c:forEach>
					
				</tbody>
			</table>
		</div>

	<button onclick="ischecked()">테스트</button>


</body>
	
<%@ include file="./footer.jsp" %>
	
	
	
	