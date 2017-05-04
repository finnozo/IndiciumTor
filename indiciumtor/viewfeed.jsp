<!DOCTYPE html>
<%@page import="indicium.jdbcdao.JdbcConnect"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">

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

    <title>Feedback-detail</title>

    <!-- Bootstrap Core CSS -->
    <link href="mainresource/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="mainresource/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="mainresource/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

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
                       String rollmnu=(String)session.getAttribute("uname");
            		   ResultSet rsmnu=JdbcConnect.selectOperation("select * from studentdetails where rollnumber='"+rollmnu+"'");
            		   if(rsmnu.next()){
            			   %><li><a href="studentprofile.jsp"><%out.println(rsmnu.getString("fname")); %></a></li>
                    <%
            		   }
                    %>
				<li><a href="services.jsp">Tutorial</a></li>
				<li><a href="stdpostlist.jsp">Discussion</a></li>
				<li><a href="feedback.jsp">Feedback</a></li>
				<li><a href="#">Alumni</a></li>
				<li><a href="#">About Us</a></li>
				<li><a href="kill.jsp">Log Out</a></li>
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
          <br><br>
            <div class="col-lg-12">
             
                <ol class="breadcrumb">
                    <li><a href="stdhome.jsp">Home</a>
                    </li>
                    <li class="active">Feedback</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-8">

              

                <hr>

                <!-- Date/Time -->
               
                <!-- Post Content -->
                <p class="lead">
                 <%
                 
                 	String uid =(String) session.getAttribute("unmae");  
                    int pid=Integer.parseInt(request.getParameter("pid"));
            		String sql="select * from feedback where status="+1+" and postid="+pid;
            		ResultSet rs=JdbcConnect.selectOperation(sql);
            		System.out.println(sql);
            		if(rs.next()){
            			
            			out.println(rs.getString("content"));
            		}else{
            			RequestDispatcher rd=request.getRequestDispatcher("feedback.jsp");
            			request.setAttribute("feedmsg", "Post Currently not Available");
            			rd.forward(request,response);
            		}
            		
            		%>
                
              

              

                <!-- Comments Form -->
           <!--       <div class="well">
                    <h4>Reply:</h4>
                    <form role="form" action="cmt" method="post">
                        <div class="form-group">
                            <textarea class="form-control" rows="3" name="comment"></textarea>
                        </div>
                          <input type="hidden" name=pid value=<%/* pid */%>>
                        <button type="submit" class="btn btn-primary">Submit</button>
                      
                    </form>
                </div>
-->
                <hr>

                <!-- Posted Comments -->

                <!-- Comment -->
                <font style="font-family: sans-serif;font-size: 2em;font-weight: bold;">Reply</font>
                 
                    <%
                   
                      String query="select * from feedreply where postid="+pid;
                       rs=JdbcConnect.selectOperation(query);
                       
                       if(rs.last())
                       {
                       boolean b=true;
                      while(b)
                      {%>
                      <div class="media">
                    <a class="pull-left" href="#">
                        <img class="media-object" src="imgstudent.jsp?roll=<%=uid %>" alt="">
                    </a>
                    <div class="media-body">
                        <h4 class="media-heading"> <%
                        String branch=(String)session.getAttribute("branch");
                           out.println("H.O.D ("+branch+")");
                        %>
                        </h4>
                        <%
                          out.println(rs.getString("reply"));
                        %>
                        </div>
                      <% if(rs.previous()==false)
                            b=false;
                      %>
                </div>

                  <%} 
                       }
                  
                  
                  %>
            </div>

            <!-- Blog Sidebar Widgets Column -->
            <div class="col-md-4">
				<br>
                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Post Search</h4>
                    <div class="input-group">
                        <input type="text" class="form-control">
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                        </span>
                    </div>
                    <!-- /.input-group -->
                </div>

              </div>

                
            </div>

        </div>
        <!-- /.row -->

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div align="center"col-lg-12">
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
