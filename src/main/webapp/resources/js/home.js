//	function formSubmit() {
//			document.getElementById("logoutForm").submit();
//		}

function emailinputfunc(){
	
}
function passwordinputfunc(){
	
}
function errormessage() {
    var x = document.getElementById("error-div");
    if (x.style.display === "none") {
        x.style.display = "block";
    } else {
        x.style.display = "none";
    }
}
function url(){
	var x=window.location.hash;
	if (x === '#error') {
		document.getElementById("login-button").click();
		errormessage();
		}
	else if(x === '#loggetout'){
			toasterLoggedout();
		}
}
function toasterLoggedout() {
    var x = document.getElementById("snackbar");
    x.className = "show";
    setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
}