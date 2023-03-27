let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

function addBoard(id){
	let title =$("#bTitle").val();
	let contents =$("#bContents").val();
	
	if(title.trim() == ''){
		alert("제목을 입력해주세요.");
		return;
	}else if(contents.trim() == ''){
		alert("내용을 입력해주세요.");
		return;
	}else{
		$.ajax({
		type : "POST",
		url : ctx+"/board.do",
		data :{"memberId":id, "title":title, "body":contents},
		success : function(){
			alert("1:1문의가 등록되었습니다.");
			location.reload();
			}
		});
	}
}

function editboard(){
	$('#editBoard').modal('show');
	
	
}







