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
<script>
  function func()
  {
	  if(document.f1.password.value!=document.f1.confirmpassword.value)
		  {
		     alert("Password mismatch");
		     return false;
		  }
	  
	  
  }


</script>


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
						Admin </a><br> <br> <br>
				</div>
			</div>
			<!-- Content Column -->
			<div class="col-md-9">
				<center><font size="5">HOD Creation Panel</font></center><br>
			<center>	<font color="red" style="font-size: 1.5em">
				${ hodmsg }
				</font>
				</center>
				<div align="center">
				<form name=f1 id="contactform" action="hod" method="post" onsubmit="return func()">
				<table>
				<tr>
					<td align="right"><p class="contact">
						<label for="uid">User ID</label>
					</p>
					
					</td>
					<td>
						&nbsp;&nbsp;&nbsp;&nbsp;<input id="roll" name="uid" placeholder="User ID" required=""
						 type="text">
					</td>
				</tr>
				<tr>
					<td align="right"><p class="contact">
						&nbsp;&nbsp;&nbsp;&nbsp;<label for="password">Create a password</label>
					</p></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" id="password" name="password" required="" placeholder="password"
						></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td align="right"><p class="contact">
						<label for="confirmpassword">Confirm your password</label>
					</p></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" id="confirmpassword" name="confirmpassword"
						required="" placeholder="confirm password"></td>
				</tr>
				<tr>
					<td align="right"><label>Branch</label></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;<select
							class="select-style" name="branch">
								<option value="">--- Select Branch ---</option>
								<option value="MCA">MCA</option>
								<option value="META">METALLURGY</option>
								<option value="ELECTRICAL">ELECTRICAL</option>
								<option value="MINING">MINING</option>
								<option value="CS">COMPUTER SCIENCE</option>
								<option value="IT">INFORMATION TECHNOLOGY</option>
								<option value="CIVIL">CIVIL</option>
								<option value="MECHANICAL">MECHANICAL</option>
								<option value="ECS">ELEC&COMM</option>
								<option value="BARCH">BARCH</option>
								<option value="BIOMEDICAL">BIOMEDICAL</option>
								<option value="CHEMICAL">CHEMICAL</option>
								<option value="MTECH">MTECH</option>
						</select></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><br> <input class="buttom" name="submit" id="submit"
						 value="Create HOD Account" type="submit"></td>
				</tr>
				</table>					
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