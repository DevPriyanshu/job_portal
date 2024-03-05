<%@page import="bean.UserMethod"%>
<%@page import="bean.CompanyMethod"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seeker Update</title>
</head>

 <style>
  	.update-u
  {
   	width: 35%;
   	
   	padding: 10px;
   	margin-left: 30%;
   	margin-top: 5%;
   	margin-bottom: 10%;
   }
  </style>

<body>
	<jsp:include page="seeker_header.jsp"></jsp:include>
	
<form class="update-u card" method="post" action="user-update" enctype="multipart/form-data">
	  <div class="form-group">
			  <h5 class="text-center">User Update Form</h5> 
	  </div>
 
 	<%
	 	String email=request.getParameter("email");
	 	
	 	UserMethod um=new UserMethod();
	 	um.setEmail(email);
	 	
	 	UserMethod uinfo=um.showByMail();
 	%>
  <div class="form-group">
    <input type="hidden" name="email"  class="form-control" value="<%=email %>" >
  </div>
  
   <div class="form-group">
	    <label for="exampleInputEmail1">Company Name</label>
	    <input type="text" name="uname"  class="form-control" value="<%=uinfo.getName() %>" required="required">
    </div>
    
    <div class="form-group">
	    <label for="exampleInputEmail1">Company Password</label>
	    <input type="text" name="upass"  class="form-control" value="<%=uinfo.getPassword() %>" required="required">
    </div>
    
  <div class="form-group">
    <label for="exampleInputEmail1">Company Contact</label>
    <input type="text" name="address"  class="form-control" value="<%=uinfo.getContact() %>" required="required">
  </div> 
  
  <div class="form-group">
    <label for="exampleInputEmail1">Company Address</label>
    <input type="text" name="contact"  class="form-control" value="<%=uinfo.getAddress() %>" required="required">
    </div>
    
  <div class="form-group">
    <label for="exampleInputEmail1">Gender</label>
    <input type="text" name="gender"  class="form-control" value="<%=uinfo.getGender()%>" required="required">
  </div>
  
   <div class="form-group">
    <label for="exampleInputEmail1">Date of Birth</label>
    <input type="date" name="dob"  class="form-control" value="<%=uinfo.getDob()%>" required="required">
  </div> 
  
  <div class="form-group">
    <label for="exampleInputEmail1">Language</label>
    <input type="text" name="language"  class="form-control" value="<%=uinfo.getLanguage()%>" required="required">
   </div>
    
  <div class="form-group">
    <label for="exampleInputEmail1">Qualification</label>
    <input type="text" name="qualification"  class="form-control"  value="<%=uinfo.getQualification()%>" required="required">
  </div>
    
    <div class="form-group">
    <label for="exampleInputEmail1">Skills</label>
    <input type="text" name="skill"  class="form-control"  value="<%=uinfo.getSkills()%>" required="required">
  </div>
  
 
  
  <button type="submit" class="template-btn">Update</button>
  <h2>${requestScope['msg'] }</h2>
</form>
		
	
`	<jsp:include page="footer.jsp"></jsp:include>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


</body>
</html>