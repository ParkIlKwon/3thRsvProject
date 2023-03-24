<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./header.jsp" %>      

<link rel="stylesheet" type="text/css" href="${ctx}/css/tableApp.css">
	
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
					<c:forEach var="t" items="${res}">
					<tr>
					     <td>  
					     <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
  						</td>
						<td>${t.reserveTitle}</td>
						<td>${t.reserveLocation}</td>
						<td>${t.reserveSeatNum}
						</td>
						<td>${t.reservePrice}</td>
					</tr>
					</c:forEach>
					
				</tbody>
			</table>
		</div>



	<c:forEach var = "r" items="${rsv}">
	
	${r.reserveTitle}
	${r.reserveDate}
	${r.reserveSeatNum}
	${r.reservePrice}

</c:forEach>

</body>
	
<%@ include file="./footer.jsp" %>
	
	
	
	