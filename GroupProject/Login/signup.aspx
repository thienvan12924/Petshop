<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="GroupProject.Login.signup" %>

<!DOCTYPE html>

<html>
<head runat="server">



    <title>SIGNUP</title>
    <link href="Login.css" rel="stylesheet" />
</head>
<body>
    <div class="center">
        <h1>PET SHOP ONLINE</h1>
        <form method="POST" runat="server">
            <div class="txt_field">
                <input type="text" id="acc" name="acc"  required>
                <span></span>
                <label>Username</label>
            </div>
            <div class="txt_field">
                <input type="password" id="pass" name="pass" required>
                <span></span>
                <label>Password</label>
            </div>
            <div class="txt_field">
                <input type="password" id="subpass" name="subpass" required>
                <span></span>
                <label>Confirm Password</label>                
            </div>
            <asp:Label ID="lbl_TB" runat="server" ForeColor="Red"></asp:Label>
            <asp:Button ID="Button1" runat="server" CssClass="btn_login" Text="Sign up" OnClick="Button1_Click" />
            <div class="signUp">You had an account? <a href="login.aspx">Log In</a></div>

        </form>
    </div>
</body>
</html>
