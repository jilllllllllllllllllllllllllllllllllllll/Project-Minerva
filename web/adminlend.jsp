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
<title>Lend Book</title>
</head>
<body>

<body class="bodyBG">


<div class="navbar navbar-default navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="adminmainpage.jsp">MINERVA</a>
			</div>

			<div class="col-sm-3 col-md-3 pull-left">
		    	<form class="navbar-form" role="search" action="searchprocess.html" method="post">
		        	<div class="input-group">
		            	<input name = "generalSearch" id = "generalSearch" type="text" class="form-control" placeholder="Search"/>
		                	<div class="input-group-btn">
		                    	<button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
		                    </div>
		            </div>
		        </form>
		    </div>        


			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
                		<a class="dropdown-toggle" data-toggle="dropdown">ADD<b class="caret"></b></a>
                		<ul class="dropdown-menu">
		                    <li><a href="adminaddbook.jsp">ADD BOOK</a></li>
		                    <li><a href="adminaddnews.jsp">ADD NEWS</a></li>    
                		</ul>
            		</li>
            		<li><a href="adminbrowse.jsp">BROWSE</a></li>
            		<li><a href="adminfeedback.jsp">FEEDBACK</a></li>
					<li><a href="adminlend.jsp">LEND</a></li>
					<li><a href="adminsearch.jsp">SEARCH</a></li>
					

					<li class="dropdown">
                		<a class="dropdown-toggle" data-toggle="dropdown">PROFILE <b class="caret"></b></a>
                		<ul class="dropdown-menu">
		                    <li><a href="#">HISTORY</a></li>
		                    <li><a href="#">CHANGE PASSWORD</a></li>
		                    <li><a href="login.jsp">LOGOUT</a></li>              
                		</ul>
            		</li>
				</ul>
			</div>	
		</div>
	</div>
	
	
	
	<div class="container" align="center">
	<h2 class="text-center">Lend Book</h2>
      <form class="col-sm-6 col-md-4 col-md-offset-4" action="lendprocess.html"> 
        <input type="text" name="inputBookTitle" id="inputBookTitle" class=."form-control" placeholder="Book Title" required = "required">
        <div class="help-block text-danger error"></div> 
        <button class="btn btn-lg btn-primary btn-block" type="submit">Search</button>
      </form>
      
<!--       <div class="row"> -->
<!--       	<div style="margin:20px"> -->
<!--       		<table class="table table-hover"> -->
<!--       			<thead> -->
<!--       				<th>Account Number</th> -->
<!--       				<th>Author</th> -->
<!--       				<th>Title</th> -->
<!--       				<th>Availability</th> -->
<!--       			</thead> -->
      			
<%--       			<%while(search.next()) {%> --%>
<!--       			<tbody> -->
<!--       				<tr> -->
<%--       					<td><%=search.getString("accNum")%></td> --%>
<%--       					<td><%=search.getString("author")%></td> --%>
<%--       					<td><%=search.getString("bookTitle")%></td> --%>
<%--       					<td><%=search.getString("availability")%></td> --%>
<!--       				</tr> -->
<!--       			</tbody> -->
      			
<%--       			<%} %> --%>
<!--       		</table> -->
      	</div>
	

</body>
</html>