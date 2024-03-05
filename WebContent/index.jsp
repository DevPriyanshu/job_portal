 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Job Portal</title>

	<!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/logo/cat8.png" type="image/x-icon">

</head>
 <jsp:include page="header.jsp"></jsp:include> 
<body>

  <jsp:include page="csslink.jsp"></jsp:include> 
   
    <!-- Search Area Starts -->
    
    <!-- Search Area Starts -->
    <div class="search-area">
        <div class="search-bg">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12" style="margin-top:15%;">
                        <form action="show_all_search_job.jsp" class="d-md-flex justify-content-between">
                            <select name="job_type">
                                <option value="all">All Category</option>
                                <option value="parttime">Part Time</option>
                                <option value="fulltime">Full Time</option>
                                <option value="remote">Remote</option>
                                <option value="office">Office Job</option>
                            </select>
                            
                            <input type="text" name="location" placeholder="Search Location" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Location'" required>
						    
                            <input type="text" name="skills" placeholder="Search Keyword" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Search Keyword'" required>
                            <button type="submit" class="template-btn">find job</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
       
    </div>
    <!-- Search Area End -->
    
    <!-- Search Area End -->
       
    <!-- Jobs Area Starts -->
   	<section class="jobs-area section-padding3">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="jobs-title" style="margin-top: 15%; padding: 10px;">
                       
                    </div>
                </div>
            </div>
            
             <jsp:useBean id="job" class="bean.JobMethod"></jsp:useBean>
             <jsp:useBean id="comp_obj" class="bean.CompanyMethod"></jsp:useBean>
  			 
  			  			 
  			 <c:forEach items="${job.showAllJob()}" var="j">
   
            <div class="row">
                <div class="col-lg-12">
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="recent" role="tabpanel" aria-labelledby="home-tab">
                            <div class="single-job mb-4 d-lg-flex justify-content-between">
                                <div class="job-text">
                                    <jsp:setProperty property="email" name="comp_obj" value="${j.getCompany_email()}"/>
                                	                                	
                                	<c:choose>
									  	<c:when test="${comp_obj.getCompanyProfile()==null}">
									  	 <img src="profile/logo1.png" class="card-img-round" alt="local" width="50px" height="50px" style="float:right">	
									  	</c:when>
									  	
									  	<c:otherwise>
									  	 <img src="<%=comp_obj.getCompanyProfile() %>" class="card-img-round " alt="server">
									  	</c:otherwise>
									  </c:choose>
                                    
                                    <h4>${j.getJob_name() }</h4>
                                    <ul class="mt-4">
                                        <li class="mb-3"><h5><i class="fa fa-map-marker"></i>${j.getLocation() }</h5></li>
                                        <li class="mb-3"><h5><i class="fa fa-pie-chart"></i> ${j.getJob_type() }</h5></li>
                                        <li><h5><i class="fa fa-clock-o"></i> ${j. getJob_last_date()}</h5></li>
                                         <li><h5><i class="fa fa-clock-o"></i> ${j.getJob_post_date() }</h5></li>
                                        <li class="mb-3"><h5><i class="fa fa-pie-chart"></i> ${j.getQualification() }</h5></li>
                                        <li><h5><i class="fa fa-clock-o"></i> ${j.getSkills() }</h5></li>
                                    </ul>
                                 
                                    </div>
                                
                                <div class="job-btn align-self-center">
                                    
                                    <a href="#" class="third-btn">apply</a>
                                </div>
                                </div>
                            </div>
                        </div>
                    </div>
                 </div>
                 </c:forEach>
              </div>
                        
   		

   
     <jsp:include page="footer.jsp"></jsp:include>
  
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  
  
</body>
</html>