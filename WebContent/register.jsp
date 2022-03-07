<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>journote register</title>

<link href="css/bootstrap.min.css"  rel="stylesheet">
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<script lang="javascript">
	function validateLogin() {
		var userName = document.frmRegister.InputUsername.value;
		var password = document.frmRegister.InputPassword.value;
		var newword = document.frmRegister.InputPasswordAgain.value;
		if ((userName == "") || (userName == "Username")) {
			alert("Input Username.");
			return false;
		}
		if ((password == "") || (password == "Password")) {
			alert("Input Password.");
			return false;
		}
		if (password != newword){
			alert("Passwords aren't same.");
			return false;
		}
		
	}
</script>

<body class="text-center">
	<form class="form-inline " action="CheckRegister.jsp" method="post" name="frmRegister">
	    <br><br><br><br><br><br>
		<img class=# src="img/testimg.png" alt width="72" height="72">
		<h1 class="h3 mb-3 font-weight-normal">Create an account</h1>
		
	  <div class="form-group ">
          <label for="exampleInputUsername" class="sr-only">Username</label>
          <input type="text" class="form-control" name="InputUsername" placeholder="Username">
      </div><br>
      <div class="form-group">
          <label for="exampleInputPassword" class="sr-only">Password</label>
          <input type="password" class="form-control" name="InputPassword" placeholder="Password">
      </div><br>
      <div class="form-group">
          <label for="exampleInputPassword" class="sr-only">Password again</label>
          <input type="password" class="form-control" name="InputPasswordAgain" placeholder="Password again">
      </div><br>
      <a href="login.jsp">Already have an account?</a><br>
     	<div class="col-md-2 col-md-offset-5">
      		<button type="button/submit" class="btn btn-lg btn-primary btn-block "
      		onclick="return validateLogin()">register</button>
   	    </div>
		
	</form>


</body>
</html>