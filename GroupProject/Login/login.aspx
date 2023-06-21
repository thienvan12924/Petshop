<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="GroupProject.Login.login" %>

<!DOCTYPE html>







<html>




<head runat="server">
    <title>LOGIN</title>
    <link href="Login.css" rel="stylesheet" />
</head>
<body>
    <div class="logo">
    </div>
    <div class="center">
        <h1>PET SHOP ONLINE</h1>
        <form method="POST" runat="server">
            <div class="txt_field">
                <input type="text" id="acc" name="acc" required>
                <span></span>
                <label>Username</label>
            </div>
            <div class="txt_field">
                <input type="password" id="pass" name="pass" required>
                <span></span>
                <label>Password</label>
            </div>
            <div class="pass">Forgot Your Password?</div>
            <asp:Button ID="Button1" CssClass="btn_login" runat="server" Text="Login" OnClick="Button1_Click" />
            <div class="signUp">Don't have an account? <a href="signup.aspx">Sign Up</a></div>
            <div class="signUp">Tên nhóm</div>
        </form>
    </div>
</body>
</html>
