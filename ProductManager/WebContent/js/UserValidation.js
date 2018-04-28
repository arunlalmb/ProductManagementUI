$(document).ready(function() {

	$('#loginBtn').click(function(){
		
		var canSubmit = performValidation();
		if(canSubmit != false){
			var form = $("#loginForm");
			$(form).attr("action", "validateAccess.action");
			$(form).submit();
		}

	});
	
});

function performValidation(){
	if( $('#userName').val() == '' || $('#password').val() == ''){
		alert('Username or Password is empty');
		return false;
	}else{
		return true;
	}	
}

