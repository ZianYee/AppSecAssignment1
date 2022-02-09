<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AppSecAssignment1.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <script src="https://www.google.com/recaptcha/api.js?render=6LesR2keAAAAAFsdWZCwzIlR9xOvCuURQqQokjo5"></script>

</head>
<body>
    <form id="loginForm" runat="server">
        <h1>Login </h1>
        <div>
             
            <p>UserId (email): <asp:TextBox ID="tb_userid" runat="server"></asp:TextBox></p>
            <p>Password: <asp:TextBox ID="tb_pwd" runat="server" TextMode="Password"></asp:TextBox></p>
            <asp:Button ID="btn_login" runat="server" Text="Login" Width="234px" OnClick="btn_login_click" />
            <br />
            <br />

            <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response"/>

            <asp:Label ID="lbl_errormsg" runat="server" Text="Error Message here"></asp:Label>
           <!--
               <asp:Label ID="lbl_gScore" runat="server" Text="Label"></asp:Label> 
            -->
        </div>
    </form>

    <script>
        grecaptcha.ready(function () {
            grecaptcha.execute('6LesR2keAAAAAFsdWZCwzIlR9xOvCuURQqQokjo5', { action: 'Login' }).then(function (token) {
                document.getElementById("g-recaptcha-response").value = token;
            });
    </script>

</body>
</html>
