<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="Admin_register" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 624px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 23px;
            width: 208px;
        }
        .auto-style5 {
            text-align: center;
            height: 23px;
        }
        .auto-style11 {
            height: 71px;
        }
        .auto-style14 {
            height: 105px;
        }
        .auto-style15 {
            height: 35px;
        }
        .auto-style17 {
            height: 42px;
        }
        .auto-style18 {
            height: 31px;
        }
        .auto-style19 {
            height: 30px;
            width: 208px;
        }
        .auto-style20 {
            height: 42px;
            width: 208px;
        }
        .auto-style21 {
            height: 35px;
            width: 208px;
        }
        .auto-style22 {
            height: 31px;
            width: 208px;
        }
        .auto-style23 {
            height: 105px;
            width: 208px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <div style="background-image: url('images/bird3.jpeg')">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td colspan="2" style="text-align: center" class="auto-style11"><h1>REGISTRATION FORM</h1><asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>User name</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter username" ForeColor="Red" ControlToValidate="txtuname"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Email&nbsp;</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="emailtxt" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="emailtxt" ErrorMessage="Enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="emailtxt" ErrorMessage="enter correct format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Password</strong>&nbsp;</td>
                <td class="auto-style3">
                    
                    <asp:TextBox ID="txtpswd" runat="server"></asp:TextBox>
                    <cc1:PasswordStrength ID="txtpswd_PasswordStrength" runat="server" Enabled="True" TargetControlID="txtpswd">
                    </cc1:PasswordStrength>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtpswd" ErrorMessage="Enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Retype Password</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtconpswd" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Confirm password" ForeColor="Red" ControlToValidate="txtconpswd"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpswd" ControlToValidate="txtconpswd" ErrorMessage="Password Mismatch" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Address</strong></td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtaddr" runat="server" TextMode="MultiLine" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtaddr" ErrorMessage="Enter address" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td class="auto-style20">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Phone</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtphn" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Phone" ForeColor="Red" ControlToValidate="txtphn"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtphn" ErrorMessage="must be 10 in digit" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style21"></td>
                <td class="auto-style15">
                    <asp:Label ID="lblcaptua" runat="server" ForeColor="#0000CC" Font-Bold="True" Font-Italic="True" Font-Size="X-Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style22"></td>
                <td class="auto-style18">
                    <asp:TextBox ID="txtcaptua" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="25px" ImageUrl="images/refresh.jpg"  ValidateRequestMode="Disabled" Width="25px" OnClick="ImageButton1_Click" />
                </td>
            </tr>
            <tr>
                <td class="auto-style23"></td>
                <td class="auto-style14">
                    <asp:Button ID="btnregister" runat="server" Text="SUBMIT" OnClick="Button1_Click" Height="37px" Width="100px" />
                </td>
            </tr>
        </table>
</div>
    </div>
    </form>
</body>
</html>
