<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="AppSecAssignment1.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Change Password </h1>
        <div>
            <p>Current Pssword: <asp:TextBox ID="tb_cpwd" runat="server"></asp:TextBox> </p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
                ControlToValidate="tb_cpwd" ErrorMessage="Please enter Current Password" ForeColor="Red">
            </asp:RequiredFieldValidator> 

            <p>New Pssword: <asp:TextBox ID="tb_npwd" runat="server"></asp:TextBox> </p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
                ControlToValidate="tb_npwd" ErrorMessage="Please enter New Password" ForeColor="Red">
            </asp:RequiredFieldValidator> 

            <p>Confirm New Pssword: <asp:TextBox ID="tb_cfmnpwd" runat="server"></asp:TextBox> </p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"   
                ControlToValidate="tb_cfmnpwd" ErrorMessage="Please enter New Password again" ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server"   
            ControlToCompare="tb_npwd" ControlToValidate="tb_cfmnpwd"   
            ErrorMessage="Password Mismatch"></asp:CompareValidator>   

            <br />
            <asp:Button ID="btn_updatepwd" runat="server" Text="Submit" Width="320px" OnClick="btn_update_pwd_click"/>
            <br />
            <br />

            <asp:Label ID="lbl_msg" ForeColor="#FF3300" runat="server" Text=""></asp:Label><br />



        </div>
    </form>
</body>
</html>
