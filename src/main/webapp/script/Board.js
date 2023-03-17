let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

function deleteAction(id){
	$.ajax({
		type : POST,
		url : ctx+"/boardDelete.do",
		date :{} ,
		
	})
}