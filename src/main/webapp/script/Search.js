let ctx2 = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

function newaccounttab() {
	window.open(ctx2 + '/account.do', '로그인', 'width=500px,height=800px,scrollbars=no');
}

var tooltipTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="tooltip"]'))
var tooltipList = tooltipTriggerList.map(function (tooltipTriggerEl) {
  return new bootstrap.Tooltip(tooltipTriggerEl)
})

function checkSearch(){
	if(!$.trim($("#searchData").val())){
		alert("검색어를 입력하세요.");
		$('#searchData').focus();
		$("#searchData").css("border","2px orange solid")
	}else{
		let data = $("#searchData").val();
			$.ajax({
			type : "POST",
			url : ctx2+"/search.do",
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