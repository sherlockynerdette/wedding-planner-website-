<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Live.Love.Wed.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

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
                            style="background-color: HighlightText; font-family: 'Maiandra GD'; font-size: xx-large;"><span><img src="icons/logo.jpg"alt="Live.Love.Wed" height="30" /></span>Live.Love.Wed</a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="WebForm1.aspx">Home</a></li>
                            <li><a href="About.aspx">About</a></li>
                            <li><a href="ContactUs.aspx">Contact Us</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown.toggle" data-toggle="dropdown">Our Services<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="Venues.aspx">Venues</a></li>
                                    <li><a href="Themes.aspx">Themes</a></li>
                                    <li><a href="Costumes.aspx">Costumes</a></li>
                                    <li><a href="Photographers.aspx">Photographers</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Our Packages</a></li>
                            <li><a href="#">Blog</a></li>
                           <li><a href="Register.aspx">Register</a></li>
                            <li class ="active"><a href="Login.aspx">Login</a></li>
                           </ul>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />

<!--- Login Form start--->

        <div class ="container ">
            <div class ="form-horizontal ">
                <h2>Login Form</h2>
                <hr />
                <div class ="form-group">
                    <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="UserName"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtUsername" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUserName" runat="server" CssClass ="text-danger " ErrorMessage="*Please Enter Username" ControlToValidate="txtUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Password"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtPass" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass ="text-danger " runat="server" ErrorMessage="*Password field cannot be empty " ControlToValidate="txtPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass =" control-label " runat="server" Text="Remember me"></asp:Label>
                    </div>
                </div>
                
                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnLogin" CssClass ="btn btn-success " runat="server" Text="Login&raquo;" OnClick="btnLogin_Click"  />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Register</asp:HyperLink>
                 </div>       
            </div>
                    <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:HyperLink ID="HyForgetPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                     </div>   
            </div>
                
                </div>
                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:Label ID="lblError" CssClass="text-danger" runat="server" ></asp:Label>
                     </div>   
            </div>

            <%--  for forgot password--%>
                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:HyperLink ID="HyForgotPass" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password</asp:HyperLink>
                       
                    </div>
                </div>



                 <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Label ID="Label4" CssClass ="text-danger " runat="server" ></asp:Label>
                    </div>
                </div>
                
                </div>
            </div>

            <!--- Login Form End--->

        <!---footer contents start here--->

        <footer class="footer-pos">
            <div class ="container">
                <p class ="pull-right"><a href="#"> Back to top</a></p>
                <p>&copy;Live.Love.Wed &middot; 
                    <a href ="Default.aspx">Home</a>&middot;
                    <a href ="#">About</a>&middot;
                    <a href ="#">Contact</a>&middot;<a href ="#"></p>
            </div>

        </footer>


        <!---footer contents end--->
    </form>
</body>
</html>
