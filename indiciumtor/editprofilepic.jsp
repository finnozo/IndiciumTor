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
		String branch =  (String)session.getAttribute("branch");
       
       
        if(myname == null || type1 == null || !type1.equalsIgnoreCase("alumni"))
            {
             response.sendRedirect("kill.jsp");
            }
	
	
			
      
%>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Alumini-Home</title>

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
                <a class="navbar-brand" href="aluminihome.jsp">Indicium Tor</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="aboutusal.html">About</a>
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
                <h1 class="page-header"><%
                String name="";
                String roll=(String)session.getAttribute("uname");
                 ResultSet rs=JdbcConnect.selectOperation("Select * from alumni where mobile='"+roll+"'");
            	 if(rs.next())
            	 {
            		 name=rs.getString("fname")+" "+rs.getString("lname");            				 
            	 
            	 
                
                %>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="aluminihome.jsp">Home</a>
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
                    <a href="aluminihome.jsp" class="list-group-item">Home</a>
                    <a href="aluminiprofile.jsp" class="list-group-item">Profile</a>
                    <a href="#" class="list-group-item">Uploads</a>
                   <br>
                    <br>
                    <br>
                </div>
            </div>
            
            <!-- Content Column -->
            <div class="col-md-9">
               <div align="center" style="margin-top:30px; vertical-align:middle;">
				<form action="updp" method="post" enctype="multipart/form-data" >
			<font color="red" style="font-size: 1em">	${ upmsg }</font>
				<br><br>
                  <img height="100" width="90" src="test.jsp?mob=<%=roll%>"/>  <br><br> <input style="margin-left: 150px;" type="file" name="picupload" >				
				<br>
				<input style="margin-right: 20px" type="submit" value="Upload">
				</form>
            </div>
            </div>
            <%} %>
            
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