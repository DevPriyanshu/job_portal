<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
  </head>
   <jsp:include page="header.jsp"></jsp:include> 
  <style>
  body
		{
			  	background-image:url(assets/images/blog-bg.jpg)
			
		}
	.contact
	{
     	background-image:url(assets/images/banner-bg.jpg)
		background-color: white;
		margin-top: 10px;
		
	}
	.my-map
	{
			width:30%;
			margin-top: 2%;
	}
</style>
  <body>
    
    <div class="container contact" >
  <div class="row">
    <div class="col-sm">
      <b>Address:</b><br>
     <i class="fa fa-home" aria-hidden="true">  Patna,Bihar , INDIA</i>
     <br>
        <i class="fa fa-map-pin" aria-hidden="true"> pin-800020</i>
    </div>
    <div class="col-sm">
    <b>Contact</b>
    <br>
      <i class="fa fa-phone-square" aria-hidden="true"> +91-9472594117</i>
      <br>
      <i class="fa fa-envelope" aria-hidden="true"> py06748@gmail.com</i>
    </div>
    
  </div>
</div>
    <div class="col-sm my-map">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14393.492416403878!2d85.14438572254207!3d25.592515441961503!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ed5885d8748499%3A0x69cc2cbe4cf5b39f!2sP%20C%20Colony%2C%20Kankarbagh%2C%20Patna%2C%20Bihar%20800020!5e0!3m2!1sen!2sin!4v1593147560350!5m2!1sen!2sin" width="100%" height="500" frameborder="5" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
      <!-- Contact Form Starts -->
    <section class="contact-form section-padding3"  style="margin-top:15%;">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 mb-5 mb-lg-0">
                    <div class="d-flex" >
                        <div class="into-icon">
                            <i class="fa fa-home"></i>
                        </div>
                        <div class="info-text">
                            <h4>Patna-Bihar, INDIA</h4>
                            <p>PC Coloney Kankarbagh</p>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="into-icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="info-text">
                            <h4>+91 9472594117</h4>
                            <p>Mon to Fri 9am to 6 pm</p>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="into-icon">
                            <i class="fa fa-envelope-o"></i>
                        </div>
                        <div class="info-text">
                            <h4>py06748@gmail.com</h4>
                            <p>Send us your query anytime!</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <form action="#">
                        <div class="left">
                            <input type="text" placeholder="Enter your name" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" required>
                            <input type="email" placeholder="Enter email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" required>
                            <input type="text" placeholder="Enter subject" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter subject'" required>
                        </div>
                        <div class="right">
                            <textarea name="message" cols="20" rows="7"  placeholder="Enter Message" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" required></textarea>
                        </div>
                        <button type="submit" class="template-btn">Send</button>
                    </form>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Form End -->
    
    
 <!-- Footer Area Starts -->
    <footer class="footer-area section-padding">
            <div class="footer-widget">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-2 col-lg-3">
                            <div class="single-widget-home mb-5 mb-lg-0">
                               <h3 class="mb-4">top products</h3>
                                <ul>
                                    <li class="mb-2"><a href="#">managed website</a></li>
                                    <li class="mb-2"><a href="#">managed reputation</a></li>
                                    <li class="mb-2"><a href="#">power tools</a></li>
                                    <li><a href="#">marketing service</a></li>
                                
                            </div>
                        </div>   
                        <div class="col-xl-5 offset-xl-1 col-lg-6">
                            <div class="single-widget-home mb-5 mb-lg-0">
                                <h3 class="mb-4">newsletter</h3>
                                <p class="mb-4">Please enter your email id for daily Notifications.</p>  
                                <form action="#">
                                    <input type="email" placeholder="Your email here" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email here'" required>
                                    <button type="submit" class="template-btn">subscribe now</button>
                                </form>
                            </div>
                        </div>
                        <div class="col-xl-3 offset-xl-1 col-lg-3">
                            <div class="single-widge-home">
                                <h3 class="mb-4">instagram feed</h3>
                                <div class="feed">
                                    <img src="assets/images/feed1.jpg" alt="feed">
                                    <img src="assets/images/feed2.jpg" alt="feed">
                                    <img src="assets/images/feed3.jpg" alt="feed">
                                    <img src="assets/images/feed4.jpg" alt="feed">
                                    <img src="assets/images/feed5.jpg" alt="feed">
                                    <img src="assets/images/feed6.jpg" alt="feed">
                                    <img src="assets/images/feed7.jpg" alt="feed">
                                    <img src="assets/images/feed8.jpg" alt="feed">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                        
 <jsp:include page="footer.jsp"></jsp:include>
        <!-- Footer Area End -->
 
 <jsp:include page="javascript.jsp"></jsp:include>
 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  </body>
</html>