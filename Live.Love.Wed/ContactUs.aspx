<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="Live.Love.Wed.ContactUs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>ContactUs</title>
     <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">

    <link href="css/contact.css" rel="stylesheet" />
    <link href="css/Custom.css" rel="stylesheet" />
    <link href="css/Style.css" rel="stylesheet" />

    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
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
                            <li><a href="#">Contact Us</a></li>
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
                            <li><a href="#">Our Packages</a></li>
                            <li><a href="#">Blog</a></li>

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

  <div class="container">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">Thakur Building,Thakur Nagar </div>
          <div class="text-two">Andheri(East), Mumbai-60</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">+91 7977331577</div>
          <div class="text-two">+91 9869084289</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one">live.love.wed@gmail.com</div>
        </div>
      </div>
        <div class="right-side">
            <center>
            <img src="Images/card.jpg" height="350" width="500" />
            </center>
            </div>
    </div>
  </div>
            </div>
    </form>
</body>
</html>