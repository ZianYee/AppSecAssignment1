<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="AppSecAssignment1.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration</title>

    <script type="text/javascript">
        function validate() {
            var str = document.getElementById('<%=tb_pwd.ClientID %>').value;

            if (str.length < 12) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password Length Must be at least 12 characters";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("too_short");
            }

            else if (str.search(/[0-9]/) == -1){
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 number";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_number");
            }

            else if (str.search(/[a-z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 lower case character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_lowercase");
            }

            else if (str.search(/[A-Z]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 upper case character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_uppercase");
            }

            else if (str.search(/[^a-zA-Z0-9]/) == -1) {
                document.getElementById("lbl_pwdchecker").innerHTML = "Password require at least 1 special character";
                document.getElementById("lbl_pwdchecker").style.color = "Red";
                return ("no_specialchar");
            }

            document.getElementById("lbl_pwdchecker").innerHTML = "Excellent! Strong Password";
            document.getElementById("lbl_pwdchecker").style.color = "Green";
        }
    </script>
</head>
<body>
    
    
    <form id="registrationForm" runat="server">
        <h1>Account Registration</h1>
        <br />
        <div style="width: 1337px">

            <p>First Name: <asp:TextBox ID="tb_fname" runat="server"></asp:TextBox> </p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
                ControlToValidate="tb_fname" ErrorMessage="Please enter First Name" ForeColor="Red">
            </asp:RequiredFieldValidator> 

            <p>Last Name:<asp:TextBox ID="tb_lname" runat="server"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
                ControlToValidate="tb_lname" ErrorMessage="Please enter Last Name" ForeColor="Red">
            </asp:RequiredFieldValidator> 

            <p>Credit Card Number:<asp:TextBox ID="tb_creditcard" runat="server" TextMode="Number"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"   
                ControlToValidate="tb_creditcard" ErrorMessage="Please enter Credit Card Number" ForeColor="Red">
            </asp:RequiredFieldValidator> 

            <p>Email: <asp:TextBox ID="tb_email" runat="server" TextMode="Email"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"   
                ControlToValidate="tb_email" ErrorMessage="Please enter Email" ForeColor="Red">
            </asp:RequiredFieldValidator> 

            <p>Password: <asp:TextBox ID="tb_pwd" runat="server" TextMode="Password" onkeyup="javascript:validate()"></asp:TextBox> (
            <asp:Label ID="lbl_pwdchecker" runat="server" Text="Password Checker"></asp:Label> ) </p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"   
                ControlToValidate="tb_pwd" ErrorMessage="Please enter Password" ForeColor="Red">
            </asp:RequiredFieldValidator> 

            <p>Date of Birth: <asp:TextBox ID="tb_dob" runat="server" TextMode="Date"></asp:TextBox></p>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"   
                ControlToValidate="tb_dob" ErrorMessage="Please enter Date of Birth" ForeColor="Red">
            </asp:RequiredFieldValidator> 

            <p>Photo: <asp:TextBox ID="tb_photo" runat="server"></asp:TextBox></p>

            <br />
            <asp:Button ID="btn_chkpwd" runat="server" Text="Check Password" Width="320px" OnClick="btn_chkpwd_click" />
            <br />
            <br />
            <asp:Button ID="btn_submit" runat="server" Text="Submit" Width="320px" OnClick="btn_submit_registration_click"/>
            <br />
            <asp:Label ID="lbl_errormsg" runat="server" Text="Error Message here"></asp:Label>
        </div>
    </form>
</body>
</html>
