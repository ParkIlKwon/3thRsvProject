let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

function checkform(id){

	if(frontcheck(id) == false){
		return;
	}else{
		let pw = $("#pw").val();
		$.ajax({
			type : "POST",
			url : ctx+"/mypage.do",
			data : {"pw":pw},
			success : function(data) {
				if(data == ("1")){
					alert("탈퇴성공.");
					window.location.href = "main.do";
				}else{
					alert("패스워드를 확인해주세요.");
					$("#pw").css("border","3px orange solid")
					$("#pw").val("");
				}	
			}
		});
	}
}


function updatepw(id){

	if(frontcheck(id) == false){
		return;
	}else{
		let input = $("#memberpw").val();
		let pw = $("#pw").val();
		$.ajax({
			type : "POST",
			url : ctx+"/update.do",
			data : {"input":input,"pw":pw,"pos":"1"},
			success : function(data) {
				if(data == ("1")){
					alert("수정성공.");
					window.location.href = "main.do";
				}else{
					alert("패스워드를 확인해주세요.");
					$("#pw").css("border","3px orange solid")
					$("#pw").val("");
				}	
			}
		});
	}
}


function updatehp(id){

	if(frontcheck(id) == false){
		return;
	}else{
		let input = $("#memberHP").val();
		let pw = $("#pw").val();
		$.ajax({
			type : "POST",
			url : ctx+"/update.do",
			data : {"input":input,"pw":pw,"pos":"2"},
			success : function(data) {
				if(data == ("1")){
					alert("수정성공.");
					window.location.href = "main.do";
				}else{
					alert("패스워드를 확인해주세요.");
					$("#pw").css("border","3px orange solid")
					$("#pw").val("");
				}	
			}
		});
	}
}
















function frontcheck(id){
	 if($.trim($("#pw").val())==''){
		 alert("비밀번호를 입력하세요.");
		 return false;
	 }else if(id == "admin"){
		 alert("관리자는 수정 및 삭제불가.");
		 return false;
	}else{
		return true;
	}
}


