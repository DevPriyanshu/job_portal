<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title>Login Page</title>
  </head>
  <body>
  <style>
  
  	.login
  	{
  		width: 30%;
  		margin-left: 35%;
  		margin-top: 5%;
  		padding: 10px;
  	}
  </style>
  <!-- login form -->
    <jsp:include page="header.jsp"></jsp:include>
    
    <form class="login card" action="checking" method="post">
    	<div class="form-group">
		    <h2 class="text-center">Login Form</h2> 
		  </div>
    <div class="form-group border" >
    	 <select class="custom-select" id="validationCustom04" name="usertype" required>
        <option selected disabled value="">Choose...</option>
        <option value="admin">Admin</option>
        <option value="user">Job Seeker</option>
        <option value="company">Company</option>
      </select>
    </div>
 
	  <div class="form-group">
	    <input type="email" class="form-control " name="mail" placeholder="Enter Email">   
	  </div>
	  
	  <div class="form-group">
	    <input type="password" class="form-control" name="password" placeholder="Enter Password">
	  </div>
	 
	  <button type="submit" class="template-btn">Submit</button>
	  
	  <div class="form-group">
	    <p class="text-center">Forget password <a href="forget-password.jsp">Click Here</a></p>
	  </div>
	  
	  <div class="form-group">
	    <p class="text-center">New Registration<a href="user_register.jsp"> User</a> & <a href="company-registration.jsp">Company</a></p>
	  </div>
	   <div class="form-group">
	    <p class="text-center">Message : ${requsestScope['msg']}</p>
	  </div>
	  
</form>
 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>