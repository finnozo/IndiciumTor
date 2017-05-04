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

    <title>::: Indicium Tor :::</title>

    <link href="resource/css/bootstrap.min.css" rel="stylesheet">
    <link href="resource/css/grayscale.css" rel="stylesheet">
    <link href="resource/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

    <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">
                    <i class="fa fa-play-circle"></i>  <span class="light">Indicium</span> Tor
                </a>
            </div>
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#download">Login</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Contact Us</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <header class="intro">
        <div class="intro-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                      <font color="red" style="font-weight: bold;font-size: 1.5em">${logmsg }</font>
                        <h1 class="brand-heading">Indicium Tor</h1>
                        <p class="intro-text">The Complete Student Solution</p>
                        <a href="#about" class="btn btn-circle page-scroll">
                            <i class="fa fa-angle-double-down animated"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section id="about" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>"Indicium Tor"</h2>
                <p>Indicium Tor is a Complete Student Solution created by Technocrats.Login into the Website to use the services.</p>
                <p>We provide the students a common platform where they can find study material of their requirement or 
                they can even discuss their queries or doubts among their fellow class mates and Seniors.</p>
                
                <p>The technology used for front end are BOOTSTRAP,HTML-5,CSS-3 and for backend JSP,JAVASCRIPT AND SERVLETS </p>
            </div>
        </div>
    </section>
    <section id="download" class="content-section text-center">
        <div class="download-section">
            <div class="container">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2><font face="Bradley Hand ITC"  size="10"><b>Login</font></h2>
                    <!--  <p>Provide Username and Password</p>-->
                    <a href="login.jsp" class="btn btn-default btn-lg">Click to Login</a>
                </div>
   
            </div>
        </div>
    </section>
    <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h2>Contact :: TechnoCrats ::</h2>
                <p>Reply to us and share your experience at "Indicium Tor" and give suggestions/recommendations for improvement .</p>
                <p><a href="mailto:mrsushil.nitrr@gmail.com">TechnoCrats</a>
                </p>
                <ul class="list-inline banner-social-buttons">
                    <li>
                        <a href="#" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                    </li>
                    <li>
                        <a href="#" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span class="network-name">Facebook</span></a>
                    </li>
                    <li>
                        <a href="#" class="btn btn-default btn-lg"><i class="fa fa-google-plus fa-fw"></i> <span class="network-name">Google+</span></a>
                    </li>
                    <li>
                       
                    </li>
                </ul>
            </div>
        </div>
    </section>
    
    <div id="map" align="center">
    <img  src="resource/img/map.png">
    </div>
   
    <footer>
        <div class="container text-center">
            <p1><font color="black">Designed and Developed By <span>@TechnoCrats</span>  </font></p1>
        </div>
    </footer>
    <script src="resource/js/jquery.js"></script>

    <script src="resource/js/bootstrap.min.js"></script>

    <script src="resource/js/jquery.easing.min.js"></script>
    <script type="resource/text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>
    <script src="resource/js/grayscale.js"></script>

</body>
</html>