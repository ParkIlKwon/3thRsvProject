ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

function checkSearch(){
	if(!$.trim($("#searchData").val())){
		alert("검색어를 입력하세요.");
		$('#searchData').focus();
		$("#searchData").css("border","2px orange solid")
	}else{
		let data = $("#searchData").val();
			$.ajax({
			type : "POST",
			url : ctx+"/search.do",
			data : {"searchData":data},
			success : function() {
				window.location.href = "search.do";
			}
		});
	}
}

window.onload = function() {
	$("#searchData").keyup(function() {
		$("#searchData").css("border","");
	});
	
}