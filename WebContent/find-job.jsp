<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Job</title>
</head>
<jsp:include page="header.jsp"></jsp:include> 
<jsp:include page="csslink.jsp"></jsp:include>
<body>
   
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
 
 

<%-- <jsp:include page="footer.jsp"></jsp:include> --%>
   
   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
   
   
</body>
</html>