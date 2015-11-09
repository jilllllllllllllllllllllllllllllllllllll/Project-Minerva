<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="HandheldFriendly" content="True" />
<meta name=apple-mobile-web-app-capable content=yes>
<meta name=apple-mobile-web-app-status-bar-style content=black>
<meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
<meta http-equiv="X-UA-Compatible" content="IE=9" />

<link rel="stylesheet" type="text/css" href="assets/vendor/foundation-icons/foundation-icons.css">
<link href='https://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="assets/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="assets/css/import.css">
<link rel="stylesheet" type="text/css" href="assets/css/main.css">
<title>iAcademy Library - Minerva</title>

</head>
<body>

	<section class="wrapperFull nav">
		<div class="wrapperMax">
			<nav>
				<div class="logoContainer">
					<a href="adminmain.jsp"><img src="assets/img/logo-full.png"></a>
				</div>
				<div class="linkContainer">
					<ol class="admin">
						<ul class="search">
							<a>SEARCH</a>
							<ul class="menu arrow_box">
								<li>
									<form action="searchprocess.html" method="post">
										<input name="generalSearch" id="generalSearch" type="text" placeholder="Search"><button><i type="submit" class="fi-magnifying-glass"></i></button>
									</form>
								</li>
							</ul>
						</ul>
						<ul class="students">
							<a>ACCOUNT</a>
							<ul class="menu arrow_box">
								<li><a href="adminfeedback.jsp">Inbox</a></li>
								<li><a href="adminnewsedit.jsp">News</a></li>
								<li><a href="#">History</a></li>
								<li><a href="#">Change Password</a></li>
								<li><a href="login.jsp">Logout</a></li>
							</ul>
						</ul>
						<ul class="add">
							<a>ADD</a>
							<ul class="menu arrow_box">
								<li><a href="adminaddbook.jsp">Add Book</a></li>
								<li><a href="adminaddnews.jsp">Add News</a></li>
								<li><a href="adminadduser.jsp">Add User</a></li>
							</ul>
						</ul>
						<ul class="library">
							<a href="adminbrowse.jsp">BROWSE</a>
						</ul>
					</ol>
				</div>
			</nav>
		</div>
	</section>

	<main class="body mainPage">
		<div class="divWrapper">
			<div class="left block">
				<div class="welcome">
					<p>Welcome to the iACADEMY Library</p>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. 
					<br/>
					<br/>Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui.</p>
				</div>
				<div class="quickNav">
					<div class="left quick">
						<a href="adminbrowse.jsp">
							<div>
								<i class="fi-book"></i>
								Browse All
							</div>
						</a>
					</div>
					<div class="mid quick">
						<a href="adminrecentacquisitions.jsp">
							<div>
								<i class="fi-book-bookmark"></i>
								Recent Acquisitions
							</div>
						</a>
					</div>
					<div class="right quick">
						<a href="#">
							<div>
								<i class="fi-torso"></i>
								Review Account Status
							</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</main>

	<section class="wrapperFull footer">
		<div class="wrapperMax">
			<footer class="footer">
				<div class="linkContainer">
					<div class="left block">
						<ol>
							<li>iACADEMY</li>
							<li><a href="http://www.iacademy.edu.ph/site/home/">Official Website</a></li>
							<li><a href="#">Library</a></li>
							<li><a href="http://isims.iacademy.edu.ph/iacademy/students/">Student Portal</a></li>
						</ol>
					</div>
					<div class="mid block">
						<ol>
							<li>iACADEMY Library</li>
						</ol>
						<div class="social">
							<a href="https://iacademylibrary.wordpress.com/"><i class="fi-social-blogger"></i></a>
							<a href="https://www.facebook.com/iacademylibrary/"><i class="fi-social-facebook"></i></a>
							<a href="https://twitter.com/iacademylibrary"><i class="fi-social-twitter"></i></a>
						</div>
					</div>
				</div>
				<div class="copyright block">
					<div class="messageContainer">
						<p>&copy; 2015 iACADEMY</p>
						<p>6th flr., iACADEMY Plaza, 324 Sen. Gil Puyat Avenue, Bel-air, Makati City, Philippines 1209</p>
					</div>
				</div>
			</footer>
		</div>
	</section>	


</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="assets/js/custom.js"></script>
</html>