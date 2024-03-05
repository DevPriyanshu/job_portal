<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Jobs</title>
</head>
<body>

<jsp:include page="company_header.jsp"></jsp:include>

 <section class="jobs-area section-padding3">
        <div class="container">
                        
             <jsp:useBean id="job" class="bean.JobMethod"></jsp:useBean>
  			 <jsp:useBean id="comp_obj" class="bean.CompanyMethod"></jsp:useBean>
  			 <h2>${requestScope['msg']}</h2>
  			 <c:forEach items="${job.showAllJob()}" var="j">
   
            <div class="row card" style="margin-bottom: 2%; padding: 10px;">
                <div class="col-lg-12">
                                                   	
                                	<jsp:setProperty property="email" name="comp_obj" value="${j.getCompany_email()}"/>
                                	                                	
                                	<c:choose>
									  	<c:when test="${comp_obj.getCompanyProfile()==null}">
									  	 <img src="profile/logo1.png" class="card-img-round" alt="local" width="100px" height="100px" style="float:right">	
									  	</c:when>
									  	
									  	<c:otherwise>
									  	 <img src="<%=comp_obj.getCompanyProfile() %>" class="card-img-round " alt="server" width="100px" height="100px" style="float:right">
									  	</c:otherwise>
									  </c:choose>
                                
                                    <h4>${j.getJob_name()}</h4>
                                    <ul class="mt-4">
                                        <li class="mb-3"><h5><b>Job Location : </b>${j.getLocation() }</h5></li>
                                        <li class="mb-3"><h5><b>Job Category : </b>${j.getJob_cat() }</h5></li>
                                        <li class="mb-3"><h5><b>Job Type : </b> ${j.getJob_type() }</h5></li>
                                        <li><h5><b>Last Date : </b> ${j. getJob_last_date()}</h5></li>
                                        <li><h5><b>Post Date : </b> ${j.getJob_post_date() }</h5></li>
                                        <li class="mb-3"><h5><b>Qualification : </b> ${j.getQualification() }</h5></li>
                                        <li><h5><b>Skills : </b> ${j.getSkills() }</h5></li>
                                        <li>
                                        	<%-- <a href="editpostedjob.jsp?jobpostid=${j.getJobpostid()}" class="third-btn bg-primary">Edit</a>
                                       		<a href="deletejobpost?jobpostid=${j.getJobpostid()}" class="third-btn bg-danger">Delete</a> --%>
                                       	<p>${j.getStatus()}</p>                                       	
                                       	<c:choose>
                                       		<c:when test=" ${j.getStatus()==1}">
                                       			<button type="button" class="btn btn-lg btn-success" disabled>Apply</button>
                                       		</c:when>
                                       		<c:otherwise>
                                       			<button type="button" class="btn btn-lg btn-primary">Apply</button>                                       		
                                       		</c:otherwise>
                                       	</c:choose>	
                                       		
                                       	</li>
                                    </ul>
                                 
                                    </div>
                                   </div>
                           
                                        
   			</c:forEach>
   		</div>
   	</section>
   
    <jsp:include page="footer.jsp"></jsp:include>
  
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  
  

</body>
</html>