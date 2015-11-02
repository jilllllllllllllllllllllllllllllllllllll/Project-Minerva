<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

  <meta charset="utf-8">
  <meta charset="UTF+e004">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

  
  <!-- Bootstrap core CSS -->
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <script src="bootstrap/js/bootstrap.min.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	<div class="container" style="padding-top: 150px;">
		<div class="well col-sm-6 col-md-4 col-md-offset-4">
		
			<h4 class="text-center">Sign in to Minerva</h4>
		
			<form method="post" action="loginProcess.html">
        
		        <input type="text" name="inputStudentId" id="inputStudentId" class="form-control" placeholder="Student Id" required = "required">
		        <div class="help-block text-danger error"></div> 
		        <input type="password" name="inputPassword" id="inputPassword" class="form-control" placeholder="Password" required = "required">
		        <div class="help-block text-danger error"></div>
		        
		        <div class="checkbox">
            		<input class="pull-left" type="checkbox" value="remember-me"> Remember me
          			<a href="#" class="pull-right need-help">Forgot Password? </a><span class="clearfix"></span>
        		</div>
		        
		      	<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
			</form>
			
		</div>
	</div>

</body>
</html>