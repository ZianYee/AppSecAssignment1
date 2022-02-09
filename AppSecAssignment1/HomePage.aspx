<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="AppSecAssignment1.HomePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
</head>
<body>
    <form id="homepage" runat="server">
        <h1>Home Page </h1>
        <div>
            <asp:Label ID="lbl_msg" runat="server" EnableViewState="false"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_logout" runat="server" Text="Logout" OnClick ="btn_logout_click"/>

        </div>
    </form>
</body>
</html>
