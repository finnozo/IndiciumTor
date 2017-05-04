<%@page import="java.sql.ResultSet"%>
<%@page import="indicium.jdbcdao.JdbcConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%
        String myname =  (String)session.getAttribute("uname");
        String type1 =  (String)session.getAttribute("utype");
		
       
       
        if(myname == null || type1 == null || !type1.equalsIgnoreCase("student"))
            {
             response.sendRedirect("kill.jsp");
            }
	
	
			
      
%>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Indicium Tor</title>

    <!-- Bootstrap Core CSS -->
    <link href="mainresource/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="mainresource/css/modern-business.css" rel="stylesheet">
   
    <!-- Custom Fonts -->
    <link href="mainresource/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="stdhome.jsp">Indicium Tor</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <%
                       String roll=(String)session.getAttribute("uname");
            		   ResultSet rs=JdbcConnect.selectOperation("select * from studentdetails where rollnumber='"+roll+"'");
            		   if(rs.next()){
            			   %><li><a href="studentprofile.jsp"><%out.println(rs.getString("fname")); %></a></li>
                    <%
            		   }
                    %>
                    <li><a href="services.jsp">Tutorial</a></li>
                    <li>
                        <a href="stdpostlist.jsp">Discussion</a>
                    </li>
                    <li>
                        <a href="feedback.jsp">Feedback</a>
                    </li>
                    <li>
                        <a href="stdalumnilist.jsp">Alumni</a>
                    </li>
                    <li>
                        <a href="aboutus1.html">About Us</a>
                    </li>
                    <li>
                        <a href="kill.jsp">Log Out</a>
                    </li>
                    
                    
                    
                </ul>
            </div>
        </div>
    </nav>
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('resource/ProjectImages/banner1.jpg');"></div>
                <div class="carousel-caption">
                    <h2></h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('resource/ProjectImages/dp2.jpg');"></div>
                <div class="carousel-caption">
                    <h2></h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('resource/ProjectImages/BL.jpg');"></div>
                <div class="carousel-caption">
                    <h2></h2>
                </div>
            </div>
        </div>
        <br>
        
       <h2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        "<font color="Green"><font face="Bradley ahnd ITC" color="B19715"><b>Educating</b></font> the mind without <font face="Bradley ahnd ITC" color="B19715"><b>Educating</b></font> the heart is no education at all"</h2></font>
       
        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>
    <br>
	<br>

    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
            <div class="col-lg-12">
               
            </div>
            
             <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header"></h2>
            </div>
            <div class="col-md-6">
                <p><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Welcome to <font face="Bradley hand ITC" color="B19715" size="8"><b>"Indicium Tor"</b></font></h3></p>
                <br>
                <p><h3><font face="Century SchoolBook">You have hit the veracious place,here you are serviced with all the functionality 
                 that is expected from an Educational Website.Login to login into a domain where you can learn and share your knowledge and to help others 
                 gain wisdom.
                 </font>
                 </h3></p>
            </div>
            <div class="col-md-6">
                <img class="img-responsive" src="resource/img/sevices1.jpg" alt="">
            </div>
        </div>
          

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <h2 class="page-header">Gallery</h2>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="#">
                    <img class="img-responsive img-portfolio img-hover" src="resource/ProjectImages/G1.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="#">
                    <img class="img-responsive img-portfolio img-hover" src="resource/ProjectImages/G5.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="#">
                    <img class="img-responsive img-portfolio img-hover" src="resource/ProjectImages/G6.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="#">
                    <img class="img-responsive img-portfolio img-hover" src="resource/ProjectImages/G3.jpg"alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
                <a href="#">
                    <img class="img-responsive img-portfolio img-hover" src="resource/ProjectImages/G2.jpg" alt="">
                </a>
            </div>
            <div class="col-md-4 col-sm-6">
            
                    <img class="img-responsive img-portfolio img-hover" src="resource/ProjectImages/G4.jpg" alt="">
            
            </div>
        </div>
      
        <hr>
        <footer>
            <div class="row">
                <div class="col-lg-12" align="center">
                    <p>Designed &amp; Developed by @TechnoCrats</p>
                </div>
            </div>
        </footer>
		<hr>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="mainresource/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="mainresource/js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>