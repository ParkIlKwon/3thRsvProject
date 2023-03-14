let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

function checkform(id){
	 if($.trim($("#pw").val())==''){
		 alert("비밀번호를 입력하세요.");
		 return;
	 }else if(id == "admin"){
		 alert("관리자는 삭제불가.");
		 return;
	}else{
		let pw = $("#pw").val();
		$.ajax({
			type : "POST",
			url : ctx+"/mypage.do",
			data : {"pw":pw},
			success : function(data) {
				if(data != "null"){
					alert("탈퇴성공.");
					window.location.href = "main.do";
				}else {
					alert("패스워드를 확인해주세요.");
					$("#pw").css("border","3px orange solid")
					$("#pw").val("");
				}	
			}
		});
	}
}