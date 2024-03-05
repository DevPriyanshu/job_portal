<%@page import="bean.JobMethod"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

  </head>
   <style>
  	.job-post
  	 {
	   	width: 35%;
	   	padding: 10px;
	   	margin-left: 30%;
	   	margin-top: 5%;
	   	margin-bottom: 10%;
   }
  </style>
  
  <script>
  	
  </script>
  <body>
  
  <%
  		int jobpostid = Integer.parseInt(request.getParameter("jobpostid"));
  		JobMethod jm = new JobMethod();
  		jm.setJobpostid(jobpostid);
  		JobMethod info = jm.getPostedJoById();
  %>
  
   <jsp:include page="company_header.jsp"></jsp:include>
   <form class="job-post card" method="post" action="update-job-post">
  <div class="form-group">
		    <h2 class="text-center">Edit Posted job</h2> 
		    <h3 class="text-center text-success">${requestScope['msg'] }</h3>
 </div>
 
  <div class="form-group">
    
    <input type="hidden" name="jobpostid"  class="form-control" value="<%=jobpostid %>">
  </div>
  
  <div class="form-group">
   <select class="form-control" name="job_type">
      <option value="<%= info.getJob_type()%>"><%= info.getJob_type()%></option>
      <option value="all">All Category</option>
      <option value="parttime">Part Time</option>
      <option value="fulltime">Full Time</option>
      <option value="remote">Remote</option>
      <option value="office">Office Job</option>
   </select>
  </div>
    
  <div class="form-group">
   <select class="form-control" name="job_cat">
      <option value="<%= info.getJob_cat()%>"><%= info.getJob_cat()%></option>
      <option value="Software Development">Software Development</option>
      <option value="Web Designing">Web Designing</option>
      <option value="Photography">Photography</option>
      <option value="Data Entry">Data Entry</option>
      <option value="Teaching">Teaching</option>
    </select>
  </div>
  
   <div class="form-group">
    <input type="text" name="jobname"  class="form-control" placeholder="Job Name" value="<%= info.getJob_name()%>">
    </div>
    
    <div class="form-group">
    	<input type="date" name="postdate"  class="form-control" placeholder="Job Post Date" value="<%= info.getJob_post_date()%>">
    </div>
  
  <div class="form-group">
    <input type="date" name="lastdate"  class="form-control" placeholder="Job Last Date" value="<%= info.getJob_last_date()%>">
    </div>
    
  <div class="form-group">
    <input type="text" name="qualification"  class="form-control" placeholder="Qualification" value="<%= info.getQualification()%>">
  </div>
  
   <div class="form-group">
    <input type="text" name="package"  class="form-control" placeholder="Package" value="<%= info.getSalary()%>">
  </div> 
  
  <div class="form-group">
    <input type="text" name="location"  class="form-control" placeholder="Skills" value="<%= info.getLocation()%>">
  </div>
    
  <div class="form-group">
    <input type="text" name="skill"  class="form-control" placeholder="Skills" value="<%= info.getSkills()%>">
  </div>
  
  <button type="submit" class="template-btn">Update</button>
  
</form>
   
   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>