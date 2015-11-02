<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="search" type="java.sql.ResultSet" scope="request"/>
    
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
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<body style="background: #EDEEEE">	

	<div class="container backgroundLogIn" align="center">
	<h2 class="text-center">Lend Book</h2>
      <form class="col-sm-6 col-md-4 col-md-offset-4" action="lendprocess.html"> 
        <input type="text" name="inputBookTitle" id="inputBookTitle" class=."form-control" placeholder="Book Title" required = "required">
        <div class="help-block text-danger error"></div> 
        <button class="btn btn-lg btn-primary btn-block" type="submit">Search</button>
      </form>
	</div>

	<div class="row">
      	<div style="margin:20px">
      		<table class="table table-hover">
      			<thead>
      				<th>Account Number</th>
      				<th>Author</th>
      				<th>Title</th>
      				<th>Availability</th>
      			</thead>
      			
      			<%while(search.next()) {%>
      			<tbody>
      				<tr>
      					<td><%=search.getString("accNum")%></td>
      					<td><%=search.getString("author")%></td>
      					<td><%=search.getString("bookTitle")%></td>
      					<td><%=search.getString("availability")%></td>
      				</tr>
      			</tbody>
      			
      			<%} %>
      		</table>


</body>
</html>