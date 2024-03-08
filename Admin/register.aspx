<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="register.aspx.vb" Inherits="myweb.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0"/>
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico"/>
    <title>Preclinic - Medical & Hospital - Bootstrap 4 Admin Template</title>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/css/style.css"/>
    <!--[if lt IE 9]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
	<![endif]-->
</head>
<body>
    <div class="main-wrapper  account-wrapper">
        <div class="account-page">
            <div class="account-center">
                <div class="account-box">
                    <form runat="server" class="form-signin">
						
                        <div class="form-group">
                            <label>Email Address</label>
                           
                            <asp:TextBox ID="TextBox1" runat="server" class="form-control"></asp:TextBox>
                        </div>
                        
                        <div class="form-group text-center">
                            <asp:button class="btn btn-primary account-btn" type="submit" runat="server" id="btn1" Text="Send otp"></asp:button>
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                        <div class="form-group">
                            <label>otp</label>
                            
                            <asp:TextBox ID="TextBox2" runat="server" class="form-control"></asp:TextBox>
                            <asp:Label ID="label2" runat="server" Text="" Visible="false"></asp:Label>
                             <asp:button class="btn btn-primary account-btn" type="submit" runat="server" id="Button1" Text="otp verify"></asp:button>
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
