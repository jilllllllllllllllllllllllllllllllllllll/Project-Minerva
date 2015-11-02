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
<title>Minerva</title>
</head>
<body>
<body class="bodyBG">

	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="mainpage.jsp">MINERVA</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="clientbrowse.jsp">BROWSE</a></li>
					<li><a href="clientsearch.jsp">SEARCH</a></li>
					<li><a href="clientfeedback.jsp">FEEDBACK</a></li>

					<li class="dropdown">
                		<a class="dropdown-toggle" data-toggle="dropdown">PROFILE <span class="caret"></span></a>
                		<ul class="dropdown-menu">
		                    <li><a href="clienthistory.jsp">HISTORY</a></li>
		                    <li><a href="clientchangepass.jsp">CHANGE PASSWORD</a></li>
		                    <li><a href="login.jsp">LOGOUT</a></li>              
                		</ul>
            		</li>
            		
				</ul>
			</div>	
		</div>
	</nav>
	
	<div class="container" style="padding-top: 100px">
	
		<div class="row">
			<div class="col-lg-6 col-height">
				<div class="well" >
					<h2>New Acquisitions</h2>
						<div id="acquisitionCarousel" class="carousel slide" data-ride="carousel">
					    <!-- Indicators -->
					    <ol class="carousel-indicators">
							<li data-target="#acquisitionCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#acquisitionCarousel" data-slide-to="1"></li>
							<li data-target="#acquisitionCarousel" data-slide-to="2"></li>
							<li data-target="#acquisitionCarousel" data-slide-to="3"></li>
					    </ol>
					
					    <!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<ul>
									<li><h5>Title: </h5></li>
									<li><h5>Genre: </h5></li>
									<li><h5>Publisher: </h5></li>
									<li><h5>Availability: </h5></li>
								</ul>
							</div>
							<div class="item">
					     	   <ul>
									<li><h5>Title: </h5></li>
									<li><h5>Genre: </h5></li>
									<li><h5>Publisher: </h5></li>
									<li><h5>Availability: </h5></li>
								</ul>
							</div>
							<div class="item">
								<ul>
									<li><h5>Title: </h5></li>
									<li><h5>Genre: </h5></li>
									<li><h5>Publisher: </h5></li>
									<li><h5>Availability: </h5></li>
								</ul>
							</div>
							<div class="item">
								<ul>
									<li><h5>Title: </h5></li>
									<li><h5>Genre: </h5></li>
									<li><h5>Publisher: </h5></li>
									<li><h5>Availability: </h5></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<div class="col-lg-6 col-height">
				<div class="well">
					<h2>News and Events</h2>
					<div id="acquisitionCarousel" class="carousel slide" data-ride="carousel">
					    <!-- Indicators -->
					    <ol class="carousel-indicators">
							<li data-target="#acquisitionCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#acquisitionCarousel" data-slide-to="1"></li>
							<li data-target="#acquisitionCarousel" data-slide-to="2"></li>
							<li data-target="#acquisitionCarousel" data-slide-to="3"></li>
					    </ol>
					
					    <!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<ul>
									<li><h5>Date: </h5></li>
								</ul>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								</p>
							</div>
							<div class="item">
					     	   <ul>
									<li><h5>Date: </h5></li>
								</ul>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								</p>
							</div>
							<div class="item">
								<ul>
									<li><h5>Date: </h5></li>
								</ul>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								</p>
							</div>
							<div class="item">
								<ul>
									<li><h5>Date: </h5></li>
								</ul>
								<p>
									Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		
			<div class="col-lg-12">
				<div class="well">
					<h2>Recommendations</h2>
				<div id="acquisitionCarousel" class="carousel slide" data-ride="carousel">
					    <!-- Indicators -->
					    <ol class="carousel-indicators">
							<li data-target="#acquisitionCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#acquisitionCarousel" data-slide-to="1"></li>
							<li data-target="#acquisitionCarousel" data-slide-to="2"></li>
							<li data-target="#acquisitionCarousel" data-slide-to="3"></li>
					    </ol>
					
					    <!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<ul>
									<li><h5>Title: </h5></li>
									<li><h5>Genre: </h5></li>
									<li><h5>Publisher: </h5></li>
								</ul>
							</div>
							<div class="item">
					     	   <ul>
									<li><h5>Title: </h5></li>
									<li><h5>Genre: </h5></li>
									<li><h5>Publisher: </h5></li>
								</ul>
							</div>
							<div class="item">
								<ul>
									<li><h5>Title: </h5></li>
									<li><h5>Genre: </h5></li>
									<li><h5>Publisher: </h5></li>
								</ul>
							</div>
							<div class="item">
								<ul>
									<li><h5>Title: </h5></li>
									<li><h5>Genre: </h5></li>
									<li><h5>Publisher: </h5></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		
	</div>


</body>
</html>