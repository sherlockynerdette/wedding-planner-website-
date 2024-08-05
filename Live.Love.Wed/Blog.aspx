<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Live.Love.Wed.Blog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Our Blog</title>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custom.css" rel="stylesheet" />
    <link href="css/Style.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
                            <li><a href="#">About</a></li>
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

                            <li><a href="Register.aspx">Register</a></li>
                            <li class ="active"><a href="Login.aspx">Login</a></li>

                            

                           </ul>
                    </div>
                </div>
            </div>
            <br />
            <br />
            <br />
            <br />
    
        <div>
            <div class ="container center">
            <div class ="row">
                <div class ="col-lg-4">
                    <image class ="img-circle" src="JodiPics/Jodi1.jpg" alt="thumbnail" width="140" height="140" />
                    <h2>Mukta & Gautam</h2>
                    <p>
                        I Mukta & my husband Gautam, we got married last year. LIVE.LOVE.WED played the very eminent role in our wedding. My mausi suggested us about this website. And it was really well taken decision because LIVE.LOVE.WED's staff is very efficient in their work. I would rate their services as 9/10.
                    </p>
                   
                </div>

                <div class ="col-lg-4">
                    <image class ="img-circle" src="JodiPics/Jodi2.jpg" alt="thumbnail" width="140" height="140" />
                    <h2>Jack & Jenny</h2>
                    <p> 
                        Me & especially my wife Jenny was really very particular  or say overly concious about our "The Day". But LIVE.LOVE.WED & their team did a great job by meeting all our needs & conditions up-to-scale. Jenny rates, 10/10..!    
                    </p>
                    
                </div>

                <div class ="col-lg-4">
                    <image class ="img-circle" src="JodiPics/Jodi3.jpg" alt="thumbnail" width="140" height="140" />
                    <h2>Meenakshi & Sundareshwar</h2>
                    <p>
                        As being from typical south indian family we went through with all authentic rituals & mandatory concepts that lead me & Meenakshi to the beautiful track of our story. LIVE.LOVE.WED made our wedding day really verryyy special for us & we thank them for helping us at every step with our arrangements. They really work as per tagline "Kick Start Your Hppily Ever After With Us..!". We would rate these peeps 10/10. 
                    </p>
                    
                </div>
            </div>

        </div>
        </div>
    </form>
</body>
</html>
