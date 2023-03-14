let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

function idcheck() {
	if(!$.trim($("#id").val())){
		alert("아이디를 입력하세요.");
		$(id).focus();
		$("#id").css("border","3px red solid")
	}else if(!$.trim($("#pw").val())){
		alert("패스워드를 입력하세요.");
		$(pw).focus();
		$("#pw").css("border","3px red solid")
	}else{
		let id=$("#id").val();
		let pw=$("#pw").val();
		$.ajax({
			type : "POST",
			url : ctx+"/login.do",
			data : {"id":id,"pw":pw},
			success : function(data) {
				if(data != null){
					alert("로그인성공");
					window.location.reload();
				}else {
					alert("아이디와 패스워드를 확인해주세요.");
					$("#id").css("border","3px orange solid")
					$("#pw").css("border","3px orange solid")
					$("#id").val("");
					$("#pw").val("");
				}	
			}
		});
	}
}

window.onload = function() {
	$("#id").keyup(function() {
		$("#id").css("border","");
	});
	$("#pw").keyup(function() {
		$("#pw").css("border","");
	});
}