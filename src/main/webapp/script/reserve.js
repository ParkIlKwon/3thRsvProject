
function test(){
	alert("들어옴");
}


function setPoint(totalprice,discount){
	let pcs = Math.floor(totalprice * ((100 - discount)*0.01)) - $("#pts").val();
	
};

function reserve(id,tid,location){
	let totalpcs =  Math.floor($("#tp").val());
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
	
}

