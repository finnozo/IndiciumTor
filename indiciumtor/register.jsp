<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Sign Up</title>
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7; IE=EmulateIE9">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" type="text/css" href="resource2/css/demo.css" media="all" />
    <link rel="stylesheet" type="text/css" href="resource2/css/styleregister.css" media="all" />
    <link href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
</head>
<body >
<div id="logo"><a href="index.jsp"><img src="resource2/images/logo.png"/></a></div>
<div class="container">
		
			<header>
				<h1>  Registration Form </h1>
            </header>       
      <div  class="form">
    		<form id="contactform" action="su" method="post"> 
    			<p class="contact"><label for="fname">First Name</label></p> 
    			<input id="fname" name="fname" placeholder="First name" required="" tabindex="1" type="text"> 
    			 
				 <p class="contact"><label for="lname">Last Name</label></p> 
    			<input id="lname" name="lname" placeholder="Last name" required="" tabindex="2" type="text"> 
    			
				  <p class="contact"><label for="roll">Roll Number<font color="red"> ( For alumni enter your mobile number )</font></label></p> 
    			<input id="roll" name="roll" placeholder="Roll Number" required="" tabindex="3" type="text"> 
    			
				<p class="contact"><label for="email">Email</label></p> 
    			<input id="email" name="email" placeholder="example@domain.com" required="" type="email" tabindex="4"> 
                				
				 <p class="contact"><label for="password">Create a password</label></p> 
    			<input type="password" id="password" name="password" required="" tabindex="5"> 
				
                <p class="contact"><label for="confirmpassword">Confirm your password</label></p> 
    			<input type="password" id="confirmpassword" name="confirmpassword" required="" tabindex="6"> 
        
				 <p class="contact"><label for="mob">Mobile</label></p> 
    			<input id="mob" name="mob" placeholder="Mobile Number" required=""  type="text" tabindex="7"> 
    			
				<p class="contact"><label for="address">Address</label></p> 
    			<input id="address" name="address" placeholder="Address" required="" tabindex="8" type="text"> 
    			 
    			
               
               
               <fieldset>
                 <label>Branch</label>
                  <label class="month"> 
                  <select class="select-style" name="branch">
                 <option value="">--- Select Branch ---</option>
			<option value="MCA">MCA</option>
			<option value="METALLURGY">METALLURGY</option>
			<option value="ELECTRICAL">ELECTRICAL</option>
			<option value="MINING">MINING</option>
			<option value="COMPUTER SCIENCE AND ENGINEERING">COMPUTER SCIENCE</option>
			<option value="INFORMATION TECHNOLOGY">INFORMATION TECHNOLOGY</option>
			<option value="CIVIL">CIVIL</option>
			<option value="MECHANICAL">MECHANICAL</option>
			<option value="ECS">ELEC&COMM</option>
			<option value="BARCH">BARCH</option>
			<option value="BIOMEDICAL">BIOMEDICAL</option>
			<option value="CHEMICAL">CHEMICAL</option>
			<option value="MTECH">MTECH</option>
                  </label>
                 </select>    
                  </fieldset><br>
			  <fieldset>
                 <label>Semester</label>	  
			 <select class="select-style" name="semester">
			 <option value="0">--- Select Semester ---</option>
			<option value="I">I</option>
			<option value="II">II</option>
			<option value="III">III</option>
			<option value="IV">IV</option>
			<option value="V">V</option>
			<option value="VI">VI</option>
			<option value="VII">VII</option>
			<option value="VIII">VIII</option>
			</label>
			</select>
			</fieldset>
			<br>
            <select class="select-style gender" name="alumni">
            <option value="select">i am..</option>
            <option value="student">Student</option>
            <option value="alumni">Alumni</option>
           </select><br><br>
            
            <input class="buttom" name="submit" id="submit" tabindex="9" value="Sign me up!" type="submit"> 	 
   </form> 
</div>      
</div>

</body>
</html>