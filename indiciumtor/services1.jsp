<!DOCTYPE html>
<%@page import="indicium.classes.FetchVidClass"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="indicium.jdbcdao.JdbcConnect"%>
<%@page import="indicium.classes.FetchData"%>
<%@page import="java.util.ArrayList"%>
<html lang="en">

<head>
<script type="text/javascript">
	window.onload = function() {

		var ex1 = document.getElementById('ebook');
		var ex2 = document.getElementById('magazine');
		var ex3 = document.getElementById('video');

		ex1.onclick = handler1;
		ex2.onclick = handler2;
		ex3.onclick = handler3;

	}

	function handler1() {
		document.getElementById("test").innerHTML = "<input type=\"file\" name=\"ebook\" accept=\".pdf\">";
	}
	function handler2() {
		document.getElementById("test").innerHTML = "<input type=\"file\" name=\"magazine\" accept=\".pdf\">";
	}
	function handler3() {
		document.getElementById("test").innerHTML = "<input type=\"file\" name=\"video\" accept=\".mp4,.avi, .flv\">";
	}
</script>



<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Student Section</title>

<!-- Bootstrap Core CSS -->
<link href="mainresource/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="mainresource/css/modern-business.css" rel="stylesheet">
<link href="mainresource/css/custom.css" rel="stylesheet">

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
			<div class="col-lg-12">
				<h1 class="page-header">
					Services <small>Subheading</small>
				</h1>
				<ol class="breadcrumb">
					<li><a href="stdhome.jsp">Home</a></li>
					<li class="active">Tutorials</li>
				</ol>
			</div>
		</div>
		<!-- /.row -->

		<!-- Image Header -->
		<div class="row">
			<div class="col-lg-12">
				<img class="img-responsive" src="resource/ProjectImages/Services.jpg"
					alt="">
			</div>
		</div>
		<!-- /.row -->

		<!-- Service Panels -->
		<!-- The circle icons use Font Awesome's stacked icon classes. For more information, visit http://fontawesome.io/examples/ -->
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">Services Panels</h2>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<span class="fa-stack fa-5x"> <i
							class="fa fa-circle fa-stack-2x text-primary"></i> <i
							class="fa fa-book fa-stack-1x fa-inverse"></i>
						</span>
					</div>
					<div class="panel-body">
						<h4>Service One</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<span class="fa-stack fa-5x"> <i
							class="fa fa-circle fa-stack-2x text-primary"></i> <i
							class="fa fa-newspaper-o fa-stack-1x fa-inverse"></i>
						</span>
					</div>
					<div class="panel-body">
						<h4>Service Two</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<span class="fa-stack fa-5x"> <i
							class="fa fa-circle fa-stack-2x text-primary"></i> <i
							class="fa fa-film fa-stack-1x fa-inverse"></i>
						</span>
					</div>
					<div class="panel-body">
						<h4>Service Three</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

					</div>
				</div>
			</div>
			<div class="col-md-3 col-sm-6">
				<div class="panel panel-default text-center">
					<div class="panel-heading">
						<span class="fa-stack fa-5x"> <i
							class="fa fa-circle fa-stack-2x text-primary"></i> <i
							class="fa fa-upload fa-stack-1x fa-inverse"></i>
						</span>
					</div>
					<div class="panel-body">
						<h4>Service Four</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

					</div>
				</div>
			</div>
		</div>

		<!-- Service Tabs -->
		<div class="row">
			<div class="col-lg-12">
				<h2 class="page-header">Service Tabs</h2>
				<p align="center">
					<font color="red" style="font-size: 2; font-weight: bold;">${ upmsg }
					</font>
				</p>
			</div>
			<div class="col-lg-12">

				<ul id="myTab" class="nav nav-tabs nav-justified">
					<li class="active"><a href="#service-one" data-toggle="tab"><i
							class="fa fa-book"></i> Ebooks</a></li>
					<li class=""><a href="#service-two" data-toggle="tab"><i
							class="fa fa-newspaper-o"></i> Magazines</a></li>
					<li class=""><a href="#service-three" data-toggle="tab"><i
							class="fa fa-film"></i> Videos</a></li>
					<li class=""><a href="#service-four" data-toggle="tab"><i
							class="fa fa-upload"></i> Upload</a></li>
				</ul>

				<div id="myTabContent" class="tab-content">

					<div class="tab-pane fade active in" id="service-one">
						<form action="fetch" method="post">
							<br>
							<div class="col-md-3 col-sm-6">
								<div class="panel panel-default text-center">
									<div class="panel-heading"></div>
									<div class="panel-body">
										<br> <select name="subject" class="dropdown-select">
											<option>---choose Subject---</option>
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
										</select><br> <br>
										<button type="submit" class="btn">Search</button>
										<br> <br>
									</div>
								</div>
							</div>
							<%
								int lock = (int) session.getAttribute("ebooklock");
								if (lock != 0) {
									ArrayList<FetchData> al = new ArrayList<FetchData>();
									al = (ArrayList<FetchData>) session.getAttribute("data");
							%>
							<br>
							<div class="CSSTableGenerator"
								style="width: 600px; height: auto; float: right; margin-right: 200px;">
								<table>
									<tr>
										<th>Subject Name</th>
										<th>Author Name</th>
										<th>Author Name</th>

										<%
											for (FetchData obj : al) {
										%>
									</tr>
									<tr>
										<td>
											<%
												out.println(obj.getSubject());
											%>

										</td>
										<td>
											<%
												out.println(obj.getDescription());
											%>
										</td>
										<td></td>

									</tr>
									<%
										}
									%>


									<%
										} 
									%>
									
									<br>
									<br>
									<p align="center">
										<font color="#e60000"> ${ebookmsg}</font>
									</p>
									</form>
									</div>

									<div class="tab-pane fade" id="service-two">




										<%
											String sql1 = "select * from magazine where status=" + 1;
											ResultSet rs2 = JdbcConnect.selectOperation(sql1);
										%><br>
										<div class="CSSTableGenerator"
											style="width: 800px; height: auto; float: right; margin-right: 220px;">
											<table>

												<tr>
													<th>Subject Name</th>
													<th>Author Name</th>
													<th>Author Name</th>

													<%
														while (rs2.next()) {
													%>
												
												<tr>
													<td><a href="#" style="color: black;"> <%
 	out.println(rs2.getString("name"));
 %>

													</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td>
														<%
															out.println(rs2.getString("reldate"));
														%>
													</td>
													<td>
														<%
															out.println(rs2.getString("path"));
															}
														%>
													</td>
												</tr>



											</table>
										</div>
									</div>



									<div class="tab-pane fade" id="service-three">

										<form action="fv" method="post">
											<br>
											<div class="col-md-3 col-sm-6">
												<div class="panel panel-default text-center">
													<div class="panel-heading"></div>
													<div class="panel-body">
														<br> <select name="subject" class="dropdown-select">
															<option>---choose Subject---</option>
															<%
																String branch3 = (String) session.getAttribute("branch");

																String sql3 = "Select * from department where DName='" + branch3 + "'";
																ResultSet rs3 = JdbcConnect.selectOperation(sql3);
																String dId3 = "";
																if (rs3.next()) {
																	dId3 = rs3.getString(1);
																}
																sql = "Select * from suboffer where did='" + dId3 + "'";
																rs3 = JdbcConnect.selectOperation(sql);
																String sid3 = "";
																ResultSet rs4 = null;
																while (rs3.next()) {
																	sid3 = rs3.getString(2);
																	sql = "select * from subject where id='" + sid3 + "'";
																	rs4 = JdbcConnect.selectOperation(sql);
																	if (rs4.next()) {
															%>
															<option value="<%=rs4.getString("subject")%>"><%=rs4.getString("subject")%></option>
															<%
																}
																}
															%>
														</select><br> <br>
														<button type="submit" class="btn">Search</button>
														<br> <br>
													</div>
												</div>
											</div>
											<%
												int lock3 = (int) session.getAttribute("videolock");
												if (lock3 != 0) {
													ArrayList<FetchVidClass> al3 = new ArrayList<FetchVidClass>();
													al3 = (ArrayList<FetchVidClass>) session.getAttribute("vids");
											%><br>
											<div class="CSSTableGenerator"
												style="width: 600px; height: auto; float: right; margin-right: 200px;">
												<table>
													<tr>
														<th>Video</th>
														<th>Description</th>
														<th>Download</th>
													</tr>
														<%
															for (FetchVidClass obj : al3) {
														%>
													
													<tr>
														<td><video controls="true" height="100" width="120">
																<source src="<%=obj.getPath()%>" type="video/mp4" />
															</video></td>
														<td>
															<%
																out.println(obj.getName());
															%>
														</td>
														<td>
															<%
																out.println(obj.getPath());
															%>
														</td>

													</tr>
													<%
														}
													%>


													<%
														} else {
													%>
													<div
														style="width: 600px; height: auto; float: right; margin-right: 200px;">
														<table>
															<tr>

															</tr>


															<%
																}
															%>


														</table>
													</div>
													<br>
													<br>
													<p align="center">
														<font color="#e60000">${videomsg}</font>
													</p>
													</form>
													</div>








													<div class="tab-pane fade" id="service-four">
														<div class="col-md-3 col-sm-6">
															<div class="panel panel-default text-center">
																<form action="redup" method="post">
																	<div class="panel-heading">

																		<!--Code for Radio Buttons-->
																		<div align="left" style="padding-left: 60px">

																			<font style="font-family: sans-serif;"><b>Choose
																					File Type</b></font><br> <input type="radio" name="up"
																				value="ebook" checked="checked"> Ebooks <br>
																			<input type="radio" name="up" value="magazine">
																			Magazine <br> <input type="radio" name="up"
																				value="video"> Videos <br>
																		</div>


																	</div>
																	<div class="panel-body">
																		<button type="submit">Go to Upload</button>
																	</div>
																</form>
															</div>
														</div>

														<div></div>
													</div>


													<hr>

													<!-- Footer -->


													<footer>
														<div class="row" align="center">
															<div class="col-lg-12">
																<br> <br>
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
