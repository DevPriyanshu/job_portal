<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All Seekers</title>
</head>
<body>
	<jsp:include page="company_header.jsp"></jsp:include>
	
	
	<section class="jobs-area section-padding3">
        <div class="container">
            
            
             <jsp:useBean id="alluser" class="bean.UserMethod"></jsp:useBean>
  			 
  			 <c:forEach items="${alluser.showAllUser()}" var="u">
  		
            <div class="row card" style="margin-bottom: 2%; padding: 10px;">
                <div class="col-lg-12">
                    
                               
                               		<div class="job-img align-self-center">
                                	  <c:choose>
									  	<c:when test="${u.getImage()==null}">
									  	 <img src="profile/logo1.png" class="job-img align-self-center" alt="local" width="100px" height="100px" style="float:right">	
									  	</c:when>
									  	
									  	<c:otherwise>
									  	 <img src="${u.getImage() }" class="job-img align-self-center " alt="server">
									  	</c:otherwise>
									  </c:choose>
                                   </div>
                               
                                    <h4>${u.getName()}</h4>
                                    <ul class="mt-4">
                                        <li class="mb-3"><h5><b>Email : </b>${u.getEmail() }</h5></li>
                                        <li class="mb-3"><h5><b>Contact : </b>${u.getContact() }</h5></li>
                                        <li><h5><b>Address : </b>${u. getAddress()}</h5></li>
                                        <li><h5><b>Gender : </b>${u.getGender() }</h5></li>
                                        <li class="mb-3"><h5><b>Qualification : </b>${u.getQualification() }</h5></li>
                                        <c:if test="${u.getLanguage()!=null}">
                                        	<li class="mb-3"><h5><b>language : </b>${u.getLanguage() }</h5></li>
                                        </c:if>
                                        <c:if test="${u.getSkills()!=null}">
                                        	<li><h5><b>Skills : </b> ${u.getSkills() }</h5></li>
                                        </c:if>
                                        <c:if test="${u.getDob()!=null}">
                                        	<li><h5><b>D.O.B : </b> ${u.getDob() }</h5></li>
                                        </c:if>
                                        <c:choose>
									  	<c:when test="${u.getResume()==null}">
									  	 	<li><h5><b>Resume : </b> #Not Avilable</h5></li>	
									  	</c:when>
									  	
									  	<c:otherwise>
									  	 	<li><h5><b>Resume : </b> <a href="${u.getResume()}">view</a></h5></li>
									  	</c:otherwise>
									  </c:choose>
                                        
                                        
                                    	
                                    </ul>
                                    
                                   </div>
                                 
                                    
                                   
                                                                       
                               </div> 
                            
   						</c:forEach>
   					</div>
   				</section>
	
	
	<jsp:include page="footer.jsp"></jsp:include>
</body>
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
		  
</html>