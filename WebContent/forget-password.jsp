<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Forget Password</title>
</head>
<body>
 <jsp:include page="header.jsp"></jsp:include>
<style>
.form
  	{
  		width: 40%;
  		margin-left: 35%;
  		margin-top: 5%;
  		padding: 10px;
  	}
</style>
<form class="form card">
  <div class="form-group">
		    <h2 class="text-center">Enter Your Acoount</h2> 
 </div>
 <div class="form-group">
    <label for="exampleInputEmail1">Please enter your email address or phone number.</label>
    <input type="email" class="form-control" name="forget" aria-describedby="emailHelp">
	  <button type="submit" class="template-btn">Send OTP</button>
  </div>

</body>
</html>