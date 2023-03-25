let data = {};

function ischecked() {
	
	let checkedIds = [];
	
  let checkboxes =  [...document.querySelectorAll('#tid')];
  checkboxes.forEach(function(checkbox,index) {
    let idNum = checkbox.value;
    var check = document.querySelector("input[data-idx2='"+index+"']");
	

	if(check.checked){
		 checkedIds.push(idNum);
	}
	
  });

	data.addList = checkedIds;
	
	jQuery.ajaxSettings.traditional = true;
	
	
	$.ajax({
			type : "POST",
			url : ctx2+"/reserveDelete.do",
			data : {"checkedIds":checkedIds},
			success : function() {
			location.reload();
			}
		});


	
}