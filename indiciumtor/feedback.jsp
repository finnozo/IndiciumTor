<%@page import="java.util.ArrayList"%>
<%@page import="indicium.jdbcdao.JdbcConnect"%>
<%@page import="org.apache.catalina.valves.JDBCAccessLogValve"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<script>
  function func()
  {

	  var a=document.forms["f1"]["content"].value;
	  a=a.trim();
	  if (a==null || a=="")
	  {
      alert("Field is empty");
      return false;
      }
    }
	 
	  
  
</script>


<head>

<%
        String myname =  (String)session.getAttribute("uname");
        String type1 =  (String)session.getAttribute("utype");
		String branch =  (String)session.getAttribute("branch");
       
       
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

<title>Feedback</title>

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
                       String roll1=(String)session.getAttribute("uname");
            		   ResultSet rsmenu=JdbcConnect.selectOperation("select * from studentdetails where rollnumber='"+roll1+"'");
            		   if(rsmenu.next()){
            			   %><li><a href="studentprofile.jsp"><%out.println(rsmenu.getString("fname")); %></a></li>
                    <%
            		   }
                    %>
                 
				<li><a href="services.jsp">Tutorial</a></li>
				<li><a href="stdpostlist.jsp">Discussion</a></li>
				<li><a href="feedback.jsp">Feedback</a></li>
				<li><a href="stdalumnilist.jsp">Alumni</a></li>
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
			
				<h1 class="page-header"><font face="Bradley Hand ITC" color="B19715"><center>"Deliver and Receive feedback like a gift"</center></font></h1>
				<ol class="breadcrumb">
					<li><a href="stdhome.jsp">Home</a></li>
					<li class="active">Discussion</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->

		<!-- Content Row -->
		<div class="row">

			<!-- Blog Post Content Column -->
			<div class="col-lg-8">
				<hr>

				<!-- Preview Image -->
				<img class="img-responsive" src="resource/img/Feedback1.jpg" alt="">

				<hr>
             <font color="red" style="font-size: 1.5em">${feedmsg} ${ upmsg } </font>

				<div class="well">
					<h4>Ask your Queries</h4>
					<form role="form" name=f1 action="stufeed" method="post" onsubmit="return func()">
						<div class="form-group">
							<textarea class="form-control" rows="3" name="content"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>

				<hr>

				<!-- Posted Comments -->

				<!-- Comment -->

				<%
			
				             String roll=(String)session.getAttribute("uname");
                      		 String sql="select * from feedback where rollnumber='"+roll+"'";
							 
							 ResultSet res=null;
							 String name="";
	                            
                    		 ResultSet rs=JdbcConnect.selectOperation(sql);
                    		 if(rs.isBeforeFirst())
								{
                    		 rs.last();
                    		 int a[]=new int[1000];
                    		 int i=0;
                    		 boolean b=true;
							while(b)
							{
								
								sql="select * from studentdetails where rollnumber='"+roll+"'";
								res=JdbcConnect.selectOperation(sql);
								 if(res.isBeforeFirst())
									{
								 if(res.next())
		                         {
									%>
				<div class="media">
					<a class="pull-left" href="#"> <img height="64" width="64" class="media-object"
						src="imgstudent.jsp?roll=<%=roll %>" alt="">
					</a>
					<div class="media-body">

						<h4 class="media-heading">
							<%
		                            	name=res.getString("fname")+" "+res.getString("lname");
											a[i]=rs.getInt("postid");
		                            	%><a href="viewfeed.jsp?pid=<%=a[i++] %>"> <%=name %></a>
		                            	
		                            	<% 
							        
		                         		                        	 
		                         }}
							              
							%>

						</h4>
						<% 
						    out.println(rs.getString("content"));
						   
						    if(rs.previous()==false)
						    	b=false;
						%>
					</div>
				</div>
				<%							
						       } 	}
		
	                          	
	                        %>


			</div>
			<br> <br>
			<!-- Blog Sidebar Widgets Column -->
			<div class="col-md-4">

				<!-- Blog Search Well -->
				<div class="well">
					<h4>Post Search</h4>
					<div class="input-group">
						<input type="text" class="form-control"> <span
							class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search"></i>
							</button>
						</span>
					</div>
					<!-- /.input-group -->
				</div>

				<!-- Blog Categories Well -->
				<!--     <div class="well">
                    <h4>Post Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#"></a>
                                </li>
                                <li><a href="#"></a>
                                </li>
                                <li><a href="#"></a>
                                </li>
                                <li><a href="#"></a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                <li><a href="#"></a>
                                </li>
                                <li><a href="#"></a>
                                </li>
                                <li><a href="#"></a>
                                </li>
                                <li><a href="#"></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /.row -->
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