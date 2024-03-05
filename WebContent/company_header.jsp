<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Profile</title>

<!-- Favicon -->
    <link rel="shortcut icon" href="assets/images/logo/cat8.png" type="image/x-icon">
	

</head>
 <jsp:include page="csslink.jsp"></jsp:include>  

 <style>
  body
  {
  	background-image:url(assets/images/blog-bg.jpg)
  }
  </style>
<body>
<!-- Header Area Starts -->
	<header class="header-area main-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-2">
                    
                   <a>
                   <img  src="assets/images/cat8.png" width="30" height="30" class="template align-top" >
  					 JOB PORTAL
  					</a>  
                    
                </div>
                <div class="col-lg-10">
                    <div class="custom-navbar">
                        <span></span>
                        <span></span>
                        <span></span>
                    </div>  
                    <div class="main-menu">
                        <ul>
                            <li class="active"><a href="#">home</a></li>
                            <li><a href="company_profile.jsp">Profile</a></li>
        <li><a href="#">Jobs</a>
                                <ul class="sub-menu">
                                    <li><a href="job-post.jsp">post</a></li>
                                    <li><a href="show_all_job.jsp">show all post job</a></li>
                                 </ul>
                            </li>
                           
                            <li><a href="show_all_seekers.jsp">job seeker</a></li>
                         
                            <li class="menu-btn">
                                <a href="login.jsp" class="template-btn">Log Out</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header Area End -->


</head>
<body>

</body>
</html>