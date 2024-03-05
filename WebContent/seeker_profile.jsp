<%@page import="bean.UserMethod"%>
<%@page import="bean.CompanyMethod"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<style>
	.profile
		{
			width: 40%;
			margin-left: 30%;
		}
		.form-img
		{
			width: 100px;
			height: 100px;
		}
</style>
<body>

<jsp:include page="seeker_header.jsp"></jsp:include>

	<h1 class="text-center text-success">${requestScope['msg'] }</h1>
	<%
		HttpSession sess=request.getSession(false);
      	String email=(String)sess.getAttribute("email");
      	//out.println(email);
      	UserMethod um=new UserMethod();
      	um.setEmail(email);
      	
      	//out.println(info.getImage());
      	UserMethod uinfo=um.showByMail();
      	//out.println(uinfo.getImage());
     %>
<div class="profile card">
  
   <div class="card-body">
    	
    		<c:set var="img_path" value="<%=uinfo.getImage()%>"></c:set>
				<c:choose>
					<c:when test="${img_path==null}">
						<center>
							<img src="profile/logo1.png" class="card-img-round form-img" alt="Local Image Error" >
							<i class="fa fa-camera " style="padding-top:10px"> Edit</i>
						</center>
					</c:when>
					<c:otherwise>
						<center>
							<img src="<%= uinfo.getImage()%>" class="card-img-round form-img"  alt="Server Image Error" >
							<i class="fa fa-camera" style="padding-top:10px" > Edit</i>	
						</center>
					</c:otherwise>
			 </c:choose>
			 
		      		       		      
		      <div>
				  <div class="form-group">
				    <label for="exampleInputEmail1">Email Id</label>
				    <input type="text" class="form-control" name="email" readonly="readonly" value="<%=uinfo.getEmail()%>">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputEmail1">Name</label>
				    <input type="text" class="form-control"  readonly="readonly" value="<%=uinfo.getName() %>">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputEmail1">Address</label>
				    <input type="text" class="form-control" readonly="readonly" value="<%=uinfo.getAddress() %>">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputEmail1">Qualification</label>
				    <input type="text" class="form-control" readonly="readonly" value="<%=uinfo.getQualification() %>">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputEmail1">Gender</label>
				    <input type="text" class="form-control" readonly="readonly" value="<%=uinfo.getGender() %>">
				  </div>
				 
				 <c:set var="skills" value="<%=uinfo.getSkills()%>"></c:set> 
				 <c:if test="${skills != null }">
				 	 <div class="form-group">
					    <label for="exampleInputEmail1">Skills</label>
					    <input type="text" class="form-control" readonly="readonly" value="<%=uinfo.getSkills() %>">
					  </div>
				 </c:if>
				 
				 <c:set var="language" value="<%=uinfo.getLanguage()%>"></c:set> 
				 <c:if test="${language != null }">
				 	<div class="form-group">
					    <label for="exampleInputEmail1">Language</label>
					    <input type="text" class="form-control" readonly="readonly" value="<%=uinfo.getLanguage()%>">
					  </div>
				 </c:if>
				 
				 <c:set var="dob" value="<%=uinfo.getDob()%>"></c:set> 
				 <c:if test="${dob != null }">
				 	<div class="form-group">
					    <label for="exampleInputEmail1">Date of Birth</label>
					    <input type="date" class="form-control" readonly="readonly" value="<%=uinfo.getDob()%>">
					 </div>
				 </c:if>
				 
				 <div class="form-group">
				    <a href="user_update.jsp?email=<%=uinfo.getEmail()%>" class="btn bg-primary text-white">Edit Details</a>
				    
				 </div>
				 
				  
				</div>
    
    
    </div>
    </div>
    
  

<jsp:include page="footer.jsp"></jsp:include>
  
  </body>
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  

  
</html>