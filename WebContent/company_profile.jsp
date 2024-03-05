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

<jsp:include page="company_header.jsp"></jsp:include>


	<%
		HttpSession sess=request.getSession(false);
       	String user_email=(String)sess.getAttribute("email");
       	//out.println(email);
       	CompanyMethod cm=new CompanyMethod();
       	cm.setEmail(user_email);
       	
       	CompanyMethod cinfo=cm.comapnyDetailsByMail();
       	//out.println(info.getImage());
    %>
    <h2 class="text-center text-success">${requestScope['msg'] }</h2>
	<div class="profile card">	  	  
		  <div class="card-body">
		       	
		       	<c:set var="img_path" value="<%=cinfo.getImage()%>"></c:set>
				<c:choose>
					<c:when test="${img_path==null}">
						<center><img src="profile/logo1.png" class="card-img-round form-img" alt="Local Image Error" ></center>
					</c:when>
					<c:otherwise>
						<center><img src="<%= cinfo.getImage()%>" class="card-img-round form-img"  alt="Server Image Error" ></center>
					</c:otherwise>
				</c:choose>
		       		      
		      <form action="company_update.jsp" method="post">
				  <div class="form-group">
				    <label for="exampleInputEmail1">Email Id</label>
				    <input type="text" class="form-control" name="email" readonly="readonly" value="<%=cinfo.getEmail()%>">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputEmail1">Name</label>
				    <input type="text" class="form-control" readonly="readonly" value="<%=cinfo.getName() %>">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputEmail1">Address</label>
				    <input type="text" class="form-control" readonly="readonly" value="<%=cinfo.getAddress() %>">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputEmail1">Contact</label>
				    <input type="text" class="form-control" readonly="readonly" value="<%=cinfo.getContact() %>">
				  </div>
				  
				  <div class="form-group">
				    <label for="exampleInputEmail1">Company Type</label>
				    <input type="text" class="form-control" readonly="readonly" value="<%=cinfo.getType() %>">
				  </div>
				 
				 <c:set var="aboutus" value="<%=cinfo.getAbout_us()%>"></c:set> 
				 <c:if test="${aboutus != null }">
				 	 <div class="form-group">
					    <label for="exampleInputEmail1">About Us</label>
					    <input type="text" class="form-control" readonly="readonly" value="<%=cinfo.getAbout_us() %>">
					  </div>
				 </c:if>
				 
				 <c:set var="eyear" value="<%=cinfo.getEstablish_year()%>"></c:set> 
				 <c:if test="${eyear != null }">
				 	<div class="form-group">
					    <label for="exampleInputEmail1">Establish Year</label>
					    <input type="text" class="form-control" readonly="readonly" value="<%=cinfo.getEstablish_year()%>">
					  </div>
				 </c:if>
				  
				  				  
				  <button type="submit" class="btn btn-primary">Edit Details</button>
				</form>
		  </div>
	</div>

 
  

<jsp:include page="footer.jsp"></jsp:include>
  
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  

  </body>
</html>