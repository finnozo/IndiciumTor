<!DOCTYPE html>
<%@page import="indicium.jdbcdao.JdbcConnect"%>
<%@page import="java.sql.ResultSet"%>
<html lang="en">

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

    <title>Alumni Detail</title>

    <!-- Bootstrap Core CSS -->
    <link href="mainresource/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="mainresource/css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="mainresource/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="mainresource/css/custom.css" rel="stylesheet">
    
  
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
            		   ResultSet rsmenu=JdbcConnect.selectOperation("select * from studentdetails where rollnumber='"+roll+"'");
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
                    <li class="active">Alumni List</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row" align="center">

            <!-- Blog Post Content Column -->
            <div class="col-lg-8" align="center">
				<%
				String aid =(String) request.getParameter("aid");
				String sql="select * from alumni where mobile='"+aid+"'";
				ResultSet rs = JdbcConnect.selectOperation(sql);
				if(rs.next()){
				
				%>
              

                <hr>

            		<div class="CSSTableGenerator">
                <table>
                    <tr>
                        <td>
                            
                        </td>
                        <td >
                            
                        </td>
                        
                    </tr>
                   
                    <tr> 
                        <td >
                            <img height="100px" width="90px" src="test.jsp?mob=<%=aid %>" />
                        </td>
                        <td>
                           <b><%out.println(rs.getString("fname")+" "+rs.getString("lname")); %> </b>
                        </td>
                       
                    </tr>
                    <tr> 
                        <td >
                           <b>Mobile Number</b>
                        </td>
                        <td>
                            <%out.println(rs.getString("mobile")); %>
                        </td>
                       
                    </tr>
                    <tr> 
                        <td >
                            <b>Email ID</b>
                        </td>
                        <td>
                            <%out.println(rs.getString("email")); %>
                        </td>
                       
                    </tr>
                    
                    <tr> 
                        <td >
                            <b>Address</b>
                        </td>
                        <td>
                            <%out.println(rs.getString("address")); %>
                        </td>
                       
                    </tr>
                    
                    <tr> 
                        <td >
                            <b>Branch</b>
                        </td>
                        <td>
                           <%out.println(rs.getString("branch")); %>
                        </td>
                       
                    </tr>
                    
                    <tr> 
                        <td >
                            <b>Present Working Company </b>
                        </td>
                        <td>
                        		<%out.println(rs.getString("worksat")); %>
                        </td>
                       
                    </tr>
                    
                </table>
               
               
               
               
            </div>
                
               
                 
				<%} %>
                  
            </div>


        <hr>
        </div>
</div>
              
<hr>
        <!-- Footer -->
        <footer>
        
            <div class="row">
                <div align="center" class="col-lg-12">
                    <p>Designed &amp; Developed By @TechnoCrats</p>
                </div>
            </div>
        </footer>

    
    <!-- /.container -->

    <!-- jQuery -->
    <script src="mainresource/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="mainresource/js/bootstrap.min.js"></script>

</body>

</html>
