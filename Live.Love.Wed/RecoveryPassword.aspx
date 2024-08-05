<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoveryPassword.aspx.cs" Inherits="Live.Love.Wed.RecoveryPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Password Recovery</title>

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="X-UA-Compatible" content="IE-edge"/>
    <link href="css/Custom.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
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
            <div class ="form-horizontal">
                <br />
                <br />
                <br />

                <h2>Reset Password</h2>
                <hr />
                <h3></h3>
                <div  class ="form-group">
                   <asp:Label ID="lblmsg" CssClass ="col-md-2 control-label" runat="server"  Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>

                </div>


                <div class ="form-group">
                    <asp:Label ID="lblNewPassword" CssClass ="col-md-2 control-label" runat="server" Text=" New Password" Visible="False"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtNewPass" CssClass =" form-control" TextMode ="Password"  runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your New Password" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>

                </div>

                
                <div class ="form-group">
                    <asp:Label ID="lblConfirmPass" CssClass ="col-md-2 control-label" runat="server" Text="Confirm New Password" Visible="False"></asp:Label>
                    <div class ="col-md-3">
                        <asp:TextBox ID="txtConfirmPass" CssClass =" form-control" TextMode ="Password"  runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass ="Text-danger" runat="server" ErrorMessage="Enter Your Confirm New Password" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPass" CssClass ="Text-danger" runat="server" ErrorMessage="confirm password not match...try again" ControlToCompare="txtConfirmPass" ForeColor="Red" ControlToValidate="txtNewPass"></asp:CompareValidator>
                    </div>

                </div> 


                <div class ="form-group">
                    <div class ="col-md-2">   </div>

                    <div class ="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass ="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click"  />
                   
                         </div>
                </div>

            </div>
        </div>

        </div>
    </form>
</body>
</html>
