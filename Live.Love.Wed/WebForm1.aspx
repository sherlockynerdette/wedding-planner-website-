<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WebForm1.aspx.cs" Inherits="Live.Love.Wed.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Live.Love.Wed</title>

    <script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custom.css" rel="stylesheet" />
    <link href="css/Style.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

    <script type="text/javascript">

        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "Cart.aspx";
            });
        });

    </script>

</head>
<body style="background-color: plum">
    <form id="form1" runat="server">
        <div>
            <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="WebForm1.aspx" 
                            style="background-color: HighlightText; font-family: 'Maiandra GD'; font-size: x-large;"><span><img src="icons/logo.jpg"alt="Live.Love.Wed" height="30" /></span>Live.Love.Wed</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="WebForm1.aspx">Home</a></li>
                            <li><a href="AboutUs.aspx">About</a></li>
                            <li><a href="ContactUs.aspx">Contact Us</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown.toggle" data-toggle="dropdown">Our Services<b 
                                    class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Venues.aspx">Venues</a></li>
                                    <li><a href="Themes.aspx">Themes</a></li>
                                    <li><a href="Costumes.aspx">Costumes</a></li>
                                    <li><a href="Photographers.aspx">Photographers</a></li>
                                </ul>
                            </li>
                            <li><a href="Blog.aspx">Blog</a></li>

                            <li>
                            <button id="btnCart" class="btn btn-primary navbar-btn " type="button">
                                Cart <span class="badge " id="pCount" runat="server"></span>
                            </button>
                        </li>

                            <li  id="btnRegister" runat="server"><a href="Register.aspx">Register</a></li>
                            <li id="btnLogin" runat="server" ><a href="Login.aspx">Login</a></li>

                            

                           </ul>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />

            <!---image slider start---->
            <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="ImgSlider/slide1.jpg" alt="Slide1" style="width:120%; height:400px"/>
                         <div class="carousel-caption">
                            <h3>
                                Kick Start Your Happily Ever After With Us..!</h3>
                            <p>
                                Hurry Up</p>
                            <p>
                                <a class="btn btn-lg btn-primary" href="Register.aspx" role="button">Register Now</a></p>
                        </div>
                    </div>

                    <div class="item">
                        <img src="ImgSlider/Slide2.jpg" alt="Slide2" style="width:120%; height:400px"/>
                    </div>

                    <div class="item">
                        <img src="ImgSlider/Slide3.jpg" alt="Slide3" style="width:120%; height:400px"/>
                    </div>

                    <div class="item">
                        <img src="ImgSlider/Slide4.jpg" alt="Slide4" style="width:120%; height:400px"/>
                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <!---image slider End---->
        </div>
        
        <!---Middle Content Start--->
        <hr />
        <div class ="container center">
            <div class ="row">
                <div class ="col-lg-4">
                    <image class ="img-circle" src="JodiPics/Jodi1.jpg" alt="thumbnail" width="140" height="140" />
                    <h2>Mukta & Gautam</h2>
                    <p>

                    </p>
                    <p><a class="btn btn-default"href="Blog.aspx" role="button">Their story &raquo;</a></p>
                </div>

                <div class ="col-lg-4">
                    <image class ="img-circle" src="JodiPics/Jodi2.jpg" alt="thumbnail" width="140" height="140" />
                    <h2>Jack & Jenny</h2>
                    <p> 

                    </p>
                    <p><a class="btn btn-default"href="Blog.aspx" role="button">Their story &raquo;</a></p>
                </div>

                <div class ="col-lg-4">
                    <image class ="img-circle" src="JodiPics/Jodi3.jpg" alt="thumbnail" width="140" height="140" />
                    <h2>Meenakshi & Sundareshwar</h2>
                    <p>

                    </p>
                    <p><a class="btn btn-default"href="Blog.aspx" role="button">Their story &raquo;</a></p>
                </div>
            </div>

        </div>

            <!---Middle Content End--->

        <!---footer contents start here--->

        <footer>
            <div class ="container">
                <p class ="pull-right "><a href="#"> Admin Login  </a></p>
                <p class ="pull-right"><a href="#"> Back to top</a></p>
                <p>&copy;Live.Love.Wed &middot; 
                    <a href ="WebForm1.aspx">Home</a>&middot;
                    <a href ="About.aspx">About</a>&middot;
                    <a href ="Contact.aspx">Contact</a>&middot; href ="#">
                </p>
            </div>


        </footer>


        <!---footer contents end--->
    </form>

</body>
</html>
