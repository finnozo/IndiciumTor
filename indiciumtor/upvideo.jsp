<%@page import="indicium.jdbcdao.JdbcConnect"%>
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


<script>
  function func()
  {

	  var a=document.forms["f1"]["subject"].value;
	 if(a=="0")
		 {
		 alert("Please select subject");
	      return false;
	     
		 
		 }
	 var a=document.forms["f1"]["name"].value;
	 a=a.trim();
	  if (a==null || a=="")
	  {
      alert("Enter name of video");
      return false;
      }
	  if(document.getElementById("uploadBox").files.length ==0)
	  {
		  alert("No files selected");
		  return false;
	  }
	  
    }
	 
	  
  
</script>



<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Upload Video</title>
 <link rel="stylesheet" href="mainresource/css/normalize.css">

    
        <link rel="stylesheet" href="mainresource/css/style.css">
<!-- Bootstrap Core CSS -->
<link href="mainresource/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="mainresource/css/modern-business.css" rel="stylesheet">
<link href="mainresource/css/custom2.css" rel="stylesheet">

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
	<!-- /.container --> </nav>

	<!-- Page Content -->
	<div class="container">

		<!-- Page Heading/Breadcrumbs -->
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Upload Video</h1>
				<ol class="breadcrumb">
					<li><a href="stdhome.jsp">Home</a></li>
					<li class="active">Upload Page</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->

		<!-- Content Row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="main" align="center">
				

					<div class="two" align="center">
						<div class="register" >
							<h3>Fill Details of the Video</h3>
							<form name=f1 id="reg-form1" action="upvids" method="post" onsubmit="return func()" enctype="multipart/form-data">
								<div>
									<label for="name1">Subject</label>
									<select name="subject" class="dropdown-select">
											<option value="0">---choose Subject---</option>
											<%
												String branch1 = (String) session.getAttribute("branch");

												String sql = "Select * from department where DName='" + branch1 + "'";
												ResultSet rs = JdbcConnect.selectOperation(sql);
												String dId = "";
												if (rs.next()) {
													dId = rs.getString(1);
												}
												sql = "Select * from suboffer where did='" + dId + "'";
												rs = JdbcConnect.selectOperation(sql);
												String sid = "";
												ResultSet rs1 = null;
												while (rs.next()) {
													sid = rs.getString(2);
													sql = "select * from subject where id='" + sid + "'";
													rs1 = JdbcConnect.selectOperation(sql);
													if (rs1.next()) {
											%>
											<option value="<%=rs1.getString("subject")%>"><%=rs1.getString("subject")%></option>
											<%
												}
												}
											%>
										</select>
									
									
								</div>
								<div>
									<label for="email1">Name</label> <input  type="text"
									name="name"	id="email1" spellcheck="false"
										placeholder="Name of Video" />
								</div>
								
								<div style="margin-left: 80px">
									<input id="uploadBox" type="file" name="upfile" accept=".mp4, .avi, .flv, .mkv"/>
								</div>
								
								<div>
								 <input type="submit" value="Upload"
										id="create-account1" class="button" />
								</div>
							</form>
							
						</div>
					</div>
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
    <script src="mainresource/js/index.js"></script>
</body>

</html>