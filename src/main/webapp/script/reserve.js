
// let result = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');

function test(d){
	alert(d)
}

function setpts(mpts){
	if($("#pts").val() > mpts){
		alert("소유하신 포인트가 더 작습니다.");
		return;
	}else if($("#seat").val() == ''){
		alert("먼저 필요한 좌석수를 입력하세요.");
		return;
	}
	let pcs = getCurrentprice();
	$("#currentprice").val(pcs - $("#pts").val());
	cgSeat();
};

function getCurrentprice(){
	let price = $("#singleprice").val();
	let discount = $("#dispercent").val();
		alert("작동");
	return Math.floor(price * ((100 - discount)*0.01));
}

function getsingleprice(){
	let price = $("#currentprice").val();
	let discount = $("#dispercent").val();
	return Math.floor(price * ((100 - discount)*0.01));
}


/*날짜 확인*/
function setDate(){
	$("#tdate").val($("#datepicker").val());
}

/*좌석수 확인*/
function cgSeat(){
	$("#tseat").val($("#seat").val()+"석");
	$("#cprice").html($("#seat").val() * getsingleprice());
}

/*화면 새로고침*/
function reload(){
	return location.reload();
}

function reserve(id,tid,location){
	
	let totalpcs =  $("#cprice").html();
	let seat = $("#seat").val();
	let date = $('#datepicker').val();

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

