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
	
	 
    <title>Registration page</title>
  </head>
   <style>
   		body
   		{
   			background: linear-gradient(to top left, #33ccff 0%, #ff99cc 100%);
   		}
	   .register
	   {
	   	width: 35%;
	   	padding: 10px;
	   	margin-left: 30%;
	   	margin-top: 5%;
	   	margin-bottom: 10%;
	   }
   </style>
  <body>
  
   <jsp:include page="header.jsp"></jsp:include> 
   
    <form class="register card" method="post" action="user_register">
    <h2 class="text-center text-success">${requestScope['msg'] }</h2>
    <div class="form-group">
		<h2>User Registration Form</h2>
	</div>
	 <div class="form-group">
		<input type="email" class="form-control" name="mail" placeholder=" Enter Email">
	</div>
	
	<div class="form-group">
       <input type="password" class="form-control" name="password" placeholder="Enter Password">
    </div>
    
	<div class="form-group">
	   <input type="text" class="form-control" name="name" placeholder=" Enter Name">
    </div> 
    
    <div class="form-group">
	   <input type="text" class="form-control" name="contact" placeholder=" Enter Contact">
    </div> 
    
    <div class="form-group">
	    <select class="form-control border" name="address">
			 <option selected>Choose Location</option>
			 <option value="kolkata">Kolkata</option>
		     <option value="patna">Patna</option>
			 <option value="bangalore">Bangalore</option>
			 <option value="hydrabad">Hydrabad</option>
			 <option value="delhi">Delhi</option>
			 <option value="kerala">Kerala</option>
		</select>
    </div> 	
    
    <div class="form-group" style="width:100%">
    	<select class="form-control border" name="qualification" style="width:100%">
			 <option >Choose Qualifiaction Detail</option>
			 <option value="b.tech">B.Tech</option>
	         <option value="m.tech">M.tech</option>
			 <option value="mca">Mca</option>
			 <option value="bca">Bca</option>
			 <option value="bba">Bba</option>
			 <option value="mba">Mba</option>
		</select>
    </div>
	
	<div class="form-group">
		<div class="form-check form-check-inline border" style="padding: 20px;width:100%">
			 <label class="form-check-label" for="inlineRadio1" style="margin-right: 20px">Select Gender: </label>
		
			  <input class="form-check-input" type="radio" name="gender" id="inlineRadio1" value="male">
			  <label class="form-check-label" for="inlineRadio1" style="margin-right: 20px">Male</label>
			  
			  <input class="form-check-input" type="radio" name="gender" id="inlineRadio2" value="female">
			  <label class="form-check-label" for="inlineRadio2" style="margin-right: 20px">Female</label>
			  
			  <input class="form-check-input" type="radio" name="gender" id="inlineRadio3" value="other">
			  <label class="form-check-label" for="inlineRadio3" style="margin-right: 20px">Other</label>
		</div>
	</div>
	
						   
	<button type="submit" class="template-btn">Submit</button>
	
</form>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

  </body>
</html>