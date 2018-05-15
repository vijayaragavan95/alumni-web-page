<%@taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<title>Welcome!!!</title>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="resources/css/home.css" type="text/css" />
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<script src="resources/js/home.js"></script>
</head>
<body onload="url()">
<div id="snackbar">You have been successfully Logged Out...</div>
	<div id="login_room">
		<c:url value="/j_spring_security_logout" var="logoutUrl" />
	<form action="${logoutUrl}" method="post" id="logoutForm">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
	<script>
		function formSubmit() {
			document.getElementById("logoutForm").submit();
		}
		function errormessage() {
		    var x = document.getElementById("error-div");
		    if (x.style.display === "none") {
		        x.style.display = "block";
		    } else {
		        x.style.display = "none";
		    }
		}
	</script>

	<c:if test="${pageContext.request.userPrincipal.name != null}">
		<h2>
			Welcome : ${pageContext.request.userPrincipal.name} | <a
				href="javascript:formSubmit()"> Logout</a>
		</h2>
	</c:if>
		<c:if test="${pageContext.request.userPrincipal.name == null}">
		<!-- Button trigger modal -->
		<div class="text-right"
			style="padding-top: 0.5%; padding-right: 1.5%;">
			<button type="button" id="login-button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModalCenter">Login or Sign Up</button>
		</div>
		<!-- Modal -->
		<div class="modal fade" id="exampleModalCenter" tabindex="-1"
			role="dialog" aria-labelledby="exampleModalCenterTitle"
			aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h2 class="modal-title font_weight font_family"
							id="exampleModalLongTitle">Login</h2>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
<form name='loginForm'
			action="<c:url value='/auth/login_check?targetUrl=${targetUrl}' />"
			method='POST'>
			<div id="error-div" style="display:none;">
			Incorrect Username or password!!!
			</div>
							<div class="form-group">
								<label class="font_weight" for="exampleInputEmail1">Username</label>
								<input type="email" class="form-control" id="emailinput"
									aria-describedby="emailHelp" onkeyup="emailinputfunc()" name='username' placeholder="Enter Email">
							</div>
							<div class="form-group">
								<label class="font_weight" for="exampleInputPassword1">Password</label>
								<input type="password" class="form-control"
									onkeyup="passwordinputfunc()" id="passwordinput" name='password' placeholder="Password">
							</div>
							<div class="form-check">
								<div>
									<input type="checkbox" class="form-check-input" name="remember-me"
										id="exampleCheck1">
								</div>
								<div>
									<label class="form-check-label" for="exampleCheck1">Remember
										Me</label>
								</div>
							</div>
							<div>
								<div style="float: left;">
									<a href="#" class="badge badge-primary">New Here!! Register
										Yourself</a>
								</div>
								<div style="float: right;">
									<button type="submit" name="submit"  class="btn btn-success">Submit</button>
								</div>
							</div>
								<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
						</form>
					</div>
					<div class="modal-footer">
						<div id="progressdiv" class="progress w-100 float-left">
							<div id="progressbar" class="progress-bar" role="progressbar" style="width: 5%;"
								aria-valuenow="25" aria-valuemin="0" aria-valuemax="100">
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</c:if>
	</div>
	<div id="carouselExampleIndicators" class="carousel slide"
		data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="d-block w-100" src="resources/images/slider/1.jpg"
					alt="First slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="resources/images/slider/2.jpg"
					alt="Second slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="resources/images/slider/3.jpg"
					alt="Third slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="resources/images/slider/4.jpg"
					alt="Fourth slide">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100" src="resources/images/slider/5.jpg"
					alt="Fifth slide">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>
</body>
</html>