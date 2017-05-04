<!DOCTYPE html>
<%@page import="indicium.jdbcdao.JdbcConnect"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">

<head>

	<%
        String myname =  (String)session.getAttribute("uname");
        String type1 =  (String)session.getAttribute("utype");
		
       
       
        if(myname == null || type1 == null || !type1.equalsIgnoreCase("hod"))
            {
             response.sendRedirect("kill.jsp");
            }
	
	
			
      
%>
	

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>H.O.D - Reply</title>

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
                <a class="navbar-brand" href="hodhome1.jsp">Indicium Tor</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                 
				 <li>
                        <a href="aboutus.html">About</a>
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
        <div class="row">
          <br><br>
            <div class="col-lg-12">
             
                <ol class="breadcrumb">
                    <li><a href="hodhome1.jsp">Home</a>
                    </li>
                    <li class="active">Reply</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">

            <!-- Blog Post Content Column -->
            <div class="col-lg-8">
            <div>
            <h1>
            <%
           		 int pid=Integer.parseInt(request.getParameter("pid"));
            	 ResultSet rs=JdbcConnect.selectOperation("select * from feedback where postid="+pid);
            		if(rs.next()){
            			out.println(rs.getString("content"));
            		}
                session.setAttribute("pid", pid);
            %>
             </h1>
            </div>
            <hr>
			<div class="well">
					<h4>Reply</h4>
					<form role="form" action="hodreply" method="post">
						<div class="form-group">
							<textarea class="form-control" rows="3" name="content"></textarea>
						</div>
						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			
                <p class="lead">                
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
