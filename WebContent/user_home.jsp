<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Profile</title>
</head>

   <style>
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
<div class="form-group">
		<h2>User profile Update</h2>
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
	   <input type="text" class="form-control" name="address" placeholder=" Enter Address">
    </div> 
    
    <div class="form-group">
	   <input type="text" class="form-control" name="skills" placeholder=" Enter skills">
    </div> 
    
     <div class="form-group">
	   <input type="file" class="form-control" name="resume" placeholder="Upload Resume">
    </div> 
    
     <div class="form-group">
	   <input type="text" class="form-control" name="language" placeholder=" Enter Language">
    </div> 
    
     <div class="form-group">
	   <input type="date" class="form-control" name="dob" placeholder=" Enter DOB">
    </div> 
    
     <div class="form-group">
	   <input type="text" class="form-control" name="image" placeholder=" Uplaod Image">
    </div> 
    
    <div class="form-group" style="width:100%">
	    <select class="form-control border" name="address" style="width:100%">
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
	</form>
	
	 <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

</body>
</html>