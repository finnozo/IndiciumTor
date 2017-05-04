<%@page import="java.util.ArrayList"%>
<%@page import="indicium.jdbcdao.JdbcConnect"%>
<%@page import="org.apache.catalina.valves.JDBCAccessLogValve"%>
<%@page import="java.sql.ResultSet"%>
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

<title>Alumni-list</title>

<!-- Bootstrap Core CSS -->
<link href="mainresource/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="mainresource/css/modern-business.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="mainresource/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">



</head>

<body>

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="stdhome.jsp">Indicium Tor</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
			
			<%
                       String roll=(String)session.getAttribute("uname");
            		   ResultSet rsmenu=JdbcConnect.selectOperation("select * from studentdetails where rollnumber='"+roll+"'");
            		   if(rsmenu.next()){
            			   %><li><a href="studentprofile.jsp"><%out.println(rsmenu.getString("fname")); %></a></li>
                    <%
            		   }
                    %>

				<li><a href="services.jsp">Tutorial</a></li>
				<li><a href="stdpostlist.jsp">Discussion</a></li>
				<li><a href="feedback.jsp">Feedback</a></li>
				<li><a href="stdlumnilist.jsp">Alumni</a></li>
				<li><a href="aboutus1.html">About Us</a></li>
				<li><a href="kill.jsp">Log Out</a></li>



			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container --> </nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header"><font face="Bradley hand ITC" color="B19715" size="8"><center>Alumni</center></font></h1>
				<ol class="breadcrumb">
					<li><a href="stdhome.jsp">Home</a></li>
					<li class="active">Alumni</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->

		<!-- Content Row -->
		<div  class="row">

			<!-- Blog Post Content Column -->
			<div  class="col-lg-8">
				<hr>

				<!-- Preview Image -->
				<img class="img-responsive" src="resource/img/alumni.jpg" alt="">

			


				

				<hr>

				<!-- Posted Comments -->

				<!-- Comment -->

				<%
				             String branch=(String)session.getAttribute("branch");							
                      		 String sql="select * from alumni where branch='"+branch+"'";
							 int i=0;
	                         String []a=new String[100];
                    		 ResultSet rs=JdbcConnect.selectOperation(sql);
                    		 String name="";
                    		 
							while(rs.next())
							{	
								
								a[i]=rs.getString("mobile");
									%>
				<div  class="media">
					<a class="pull-left" href="alumnidetails.jsp?aid=<%=a[i] %>">. <img class="media-object"
						height="100px" width="90px" src="test.jsp?mob=<%=rs.getString("mobile") %>" alt="">
					</a>
					<div style="padding-top: 22px " class="media-body">

						<h4 class="media-heading">
							<%
		                            	name=rs.getString("fname")+" "+rs.getString("lname");
										//a[i]=rs.getString("mobile");	
		                            	%><a href="alumnidetails.jsp?aid=<%=a[i++] %>"> <%=name %></a>
		                            		</h4>
		                            		
					
						<% 
						    out.println(rs.getString("worksat"));
						  
						%>
					
					</div>
						</div><hr>
		                            	<% 
							        
		                         }
		              
							%>

					
			
			


			</div>
			<br> <br>
			
			</div>



		</div>

	</div>
	<!-- /.row -->

	<hr>

	<!-- Footer -->
	<footer>
	<div class="row">
		<div align="center"col-lg-12">
			<p>Designed &amp; Developed by @TechnoCrats</p>
		</div>
	</div>
	</footer>

	</div>
	<!-- /.container -->

	<!-- jQuery -->
	<script src="mainresource/js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="mainresource/js/bootstrap.min.js"></script>

</body>


</html>