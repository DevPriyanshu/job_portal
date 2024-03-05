<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company-Registration</title>
<style>
  	.register-c
  	 {
	   	width: 40%;
	   	padding: 10px;
	   	margin-left: 30%;
	   	margin-top: 2%;
	   	margin-bottom: 10%;
   }
  </style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<form class="register-c card" method="post" action="register-company">
  <div class="form-group">
		    <h2 class="text-center">Company Registration Form</h2> 
 </div>
 
  <div class="form-group">
    <input type="email" name="email"  class="form-control" placeholder="Enter Email">
  </div>
  
  <div class="form-group">
    <input type="text" name="cname"  class="form-control" placeholder="Company Name">
    </div>
    
  <div class="form-group">
    <input type="password" name="password" class="form-control" placeholder="Enter Password">
  </div>
  
   
  <div class="form-group">
    <input type="text" name="address"  class="form-control" placeholder="Address">
  </div> 
  
  <div class="form-group">
    <input type="text" name="contact"  class="form-control" placeholder="Contact">
    </div>
      
   <div class="form-group">
    <select class="form-control" name="type">
      <option value="">Select Company Type</option>
      <option value="Software Development">Software Development</option>
      <option value="Web Designing">Web Designing</option>
      <option value="Photography">Photography</option>
      <option value="Data Entry">Data Entry</option>
      <option value="Teaching">Teaching</option>
    </select>
  </div> 
   
  <button type="submit" class="template-btn">Submit</button>
  <h2>${requestScope['msg'] }</h2>
</form>

<jsp:include page="footer.jsp"></jsp:include>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


</body>
</html>