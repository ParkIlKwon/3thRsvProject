
// let result = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');

function test(){
	alert("테스트");
}

function cgSeat(){
	
	let snum = $("#seat").val();
	if(snum < 0 ){
		$("#seat").val(0);
		return;
	}
	$("#tseat").val(snum);
	$("#tpcs").val(snum * (getCurrentprice() - $("#pts").val()));
}

function setpts(mpts){
	if($("#pts").val() > mpts){
		alert("소유하신 포인트가 더 작습니다.");
		return;
	}
	let pcs = getCurrentprice();
	$("#cprice").val(pcs - $("#pts").val());
};

function getCurrentprice(){
	let price = $("#singleprice").val();
	let discount = $("#dispercent").val();
	return Math.floor(price * ((100 - discount)*0.01));
}

function setDate(){
	$("#tdate").val($("#datepicker").val());
}

function reserve(id,tid,location){
	
	let totalpcs =  $("#tpcs").val();
	let seat = $("#seat").val();
	let date = $('#datepicker').val();
	alert(location);	 

	 $("#date.body-contents").val(date);
	 $("#loc.body-contents").val(location);
	 $("#qty.body-contents").val(seat);
	 $("#price.body-contents").val(totalpcs);
	
	$.ajax({
			type : "POST",
			url : ctx1+"/ticketingPro.do",
			data : {"id":id,"price":totalpcs,"tid":tid,"seat":seat,"date":date},
			success : function() {
				alert("예약이 완료되었습니다.");
			}
		});
	
	return;
}

