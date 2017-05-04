<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>Login form</title>
        <link rel="stylesheet" href="resource1/css/stylelogin.css">
  </head>

  <body>
<div id ="logo" ><i  class="fa fa-play-circle"><font color="white"><a href="index.jsp" style="text-decoration: none;" > Indicium Tor</a></font></i></div>
    <div class="login">
  <div class="heading">
    <h2>Sign in</h2>
    <font color="red" style="font-size: 4;">${emsg}</font>>
    <form action="loginuser" method="post">

      <div class="input-group input-group-lg">
        <span class="input-group-addon"><i class="fa fa-user"></i></span>
        <input type="text" class="form-control" name="roll" placeholder="Roll Number">
          </div>

        <div class="input-group input-group-lg">
          <span class="input-group-addon"><i class="fa fa-lock"></i></span>
          <input type="password" class="form-control" name="pass" placeholder="Password">
        </div>
   <%
      session.setAttribute("ebooklock", 0);
  	  session.setAttribute("videolock", 0);
  	 session.setAttribute("uploadlock", 0);
   %>
        <button type="submit" class="float">Login</button><br>
		</form>
		<form action="register.jsp" >
					<button type="submit" class="float">Register</button><br>
		
        </form>
		</div>
 </div>
    
  </body>
</html>