let ctx = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

function checkform() {
	
	let id = document.querySelector("#id").value;
	let pw = document.querySelector("#pw").value;
	let pw2 = document.querySelector("#pw2").value;
	let name = document.querySelector("#name").value;
	let hp = document.querySelector("#hp").value;
	
	if (!existdate(id,"아이디") ||!existdate(pw,"비밀번호") ||!existdate(pw2,"비밀번호확인")
		||!existdate(name,"이름") || !existdate(hp,"핸드폰번호")) {
		return false;
	}else if(pw != pw2){
		alert("비밀번호 확인이 일치하지 않습니다.");
		return false;
	}else{
		alert("회원가입성공");
		return true;
	}
}

function existdate(data,msg){
	if($.trim(data) == ''){
		alert(msg+"를 입력하여주시오.");
		return false;
	}
	return true;
}


