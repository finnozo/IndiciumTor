<%@page import="indicium.jdbcdao.JdbcConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<%
        String myname =  (String)session.getAttribute("uname");
        
       
       
        if(myname == null || !myname.equalsIgnoreCase("Super_User"))
            {
             response.sendRedirect("kill.jsp");
            }
	
	
			
      
%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Control Panel - Admin</title>

<!-- Bootstrap Core CSS -->
<link href="mainresource/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="mainresource/css/modern-business.css" rel="stylesheet">
<link href="mainresource/css/tblcss.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="mainresource/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<link href="resource2/css/NewFile.css"
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
			<a class="navbar-brand" href="superhome.jsp">Indicium Tor</a>
		</div>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="aboutus1.html">About</a></li>
				<li><a href="kill.jsp">Logout</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Control Panel</h1>
				<ol class="breadcrumb">
					<li><a href="superhome.jsp">Home</a></li>
					<li class="active">Control Panel</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->

		<!-- Content Row -->
		<div class="row">
			<!-- Sidebar Column -->
			<div class="col-md-3">
				<div class="list-group">
					<a href="superhome.jsp" class="list-group-item">Home</a> <a
						href="createadmin.jsp" class="list-group-item">Create Admin</a> <a
						href="createhod.jsp" class="list-group-item">Create HOD
						Account</a> <a href="deactadmin.jsp" class="list-group-item">Deactivate
						Admin </a> <br> <br> <br>
				</div>
			</div>
			<!-- Content Column -->
			<div class="col-md-9">
			<center><font size="5">Admin List</font></center><br>
				 <%
            					
     		 	String sql="select * from login where userType='admin' and status = 1";
			 
   		 		ResultSet rs=JdbcConnect.selectOperation(sql);
   		 	
            	%>
				<form id="contactform" action="#" method="post">
				<center><font color="red" style="font-size: 1.5em"> ${ msghod } </font> </center>
				<div class="CSSTableGenerator" >
                <table >
                    <tr>
                        <td>
                            User ID
                        </td>
                        <td >
                            Branch
                        </td>
                        <td>
                            Deactivate Link
                        </td>
                    </tr>
                    <%while(rs.next()) {%>
                    <tr>
                    
                        <td >
                            <%out.println(rs.getString("rollNumber")); %>
                        </td>
                        <td>
                             <%out.println(rs.getString("branch")); %>
                        </td>
                        <td>
                            <a href="deactivatehod.jsp?roll=<%=rs.getString("rollNumber")%>">deactivate</a>
                        </td>
                    </tr>
                    <%} %>
                </table>
            </div>
            				
				</form>
				
			</div>
		</div>
	</div>
	<!-- /.row -->

	<hr>

	<!-- Footer -->
	<footer>
	<div class="row">
		<div class="col-lg-12">
			<p>Designed &amp; Developed By @TechnoCrats</p>
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