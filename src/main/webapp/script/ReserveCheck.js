

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



	
}