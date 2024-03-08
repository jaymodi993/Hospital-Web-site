<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="myweb.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0" />
    <link rel="shortcut icon" type="image/x-icon" href="Images/ico/logo.jpg" />
    <title>Geeta Hospital</title>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <!--[if lt IE 9]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <div class="main-wrapper account-wrapper" style="background-image: url('../Images/1.jpg');">
        <div class="account-page">
            <div class="account-center">
                <div class="account-box">
                    <form id="form1" runat="server">
                        <div class="form-signin">
                            <div class="account-logo">
                                <a href="Default.aspx">
                                    <%--<img src="../Images/ico/logo.jpg" alt="" style="border-radius: 30%; height: 95px; width: 65px; border:1px solid black;" />--%>
                                <img src="../Images/intro.jpg" />
                                </a>
                                
                            </div>
                            <div class="form-group">
                                <label>Username or Email</label>
                                <input type="text" id="uname" runat="server" autofocus="" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" id="upass" runat="server" class="form-control" />
                            </div>
                            <div class="form-group text-right">
                                <a href="forgot-password.html">Forgot your password?</a>
                            </div>
                            <div class="form-group text-center">
                                <%--<button type="submit" class="btn btn-primary account-btn">Login</button>--%>
                                <asp:Button ID="submit" cssclass="btn btn-primary account-btn" runat="server" Text="Login" />
                                <asp:Label ID="Label1" runat="server" ForeColor="RED" Text=""></asp:Label>
                            </div>
                            <div class="text-center register-link">
                                Don’t have an account? <a href="register.aspx">Register Now</a>
                            </div>

                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/js/jquery-3.2.1.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/app.js"></script>
</body>
</html>
