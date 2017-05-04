<%@page import="java.sql.ResultSet"%>
<%@page import="indicium.jdbcdao.JdbcConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>H.O.D-Home</title>

    <!-- Bootstrap Core CSS -->
    <link href="mainresource/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="mainresource/css/modern-business.css" rel="stylesheet">
    <link href="mainresource/css/tblcss.css" rel="stylesheet">

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
                <a class="navbar-brand" href="hodhome.jsp">Indicium Tor</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="about.html">About</a>
                    </li>
                   
                    <li>
                        <a href="#">Contact</a>
                    </li>
                    <li>
                        <a href="kill.jsp">Logout</a>
                    </li>
            </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">

        <!-- Page Heading/Breadcrumbs -->
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">Welcome 
                
                </h1>
                <ol class="breadcrumb">
                    <li><a href="#">Home</a>
                    </li>
                    <li class="active"></li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <!-- Sidebar Column -->
            <div class="col-md-3">
                <div class="list-group">
                    <a href="#" class="list-group-item">Home</a>
                    <a href="aluminiprofile.jsp" class="list-group-item">Profile</a>
                    <a href="alumniupload.jsp" class="list-group-item">Uploads</a>
                   <br>
                    <br>
                    <br>
                </div>
            </div>
            <!-- Content Column -->
            <div class="col-md-9">
                      <h1></h1>
                  <% 
                     String branch=(String)session.getAttribute("branch");
            		 ResultSet rs=JdbcConnect.selectOperation("select * from feedback where branch='"+branch+"' and status="+1+" and approval="+1+" and reply="+0);
            		 int i=1; 
            		while(rs.next())
                     {
                    	
                    	 %>
                    	 <div><h2><a href="#" style="text-decoration: none">
                    	   <%
                    	      out.println(i +") "+ rs.getString("content"));
                    	      i++;
                    	   %></a></h2>
                    	 </div>
                    	 <hr>
                    	 <%
                     }
            		%>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div align="center" class="row">
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