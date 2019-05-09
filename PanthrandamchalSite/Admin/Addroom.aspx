<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterAdmin1.master" AutoEventWireup="true" CodeFile="Addroom.aspx.cs" Inherits="Admin_AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        height: 22px;
            text-align: justify;
        }
        .auto-style2 {
            height: 22px;
            text-align: left;
            width: 307px;
        }
        .auto-style3 {
            width: 307px;
        }
        .auto-style4 {
            height: 22px;
            width: 307px;
        }
        .auto-style5 {
            width: 307px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <form id="form1" runat="server">
        <center>
    <table class="nav-justified" style="width :70%">
    <tr>
        <td colspan="2" class="text-center">ADD ROOMS</td>
    </tr>
    <tr>
        <td class="auto-style5">
            <asp:Label ID="Label1" runat="server" Text="Room No"></asp:Label>
        </td>
        <td class="auto-style6">
            <asp:TextBox ID="txtroomno" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">
            
            <asp:Label ID="Label2" runat="server" Text="Type"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="Non-AC"></asp:ListItem>
                <asp:ListItem Value="AC"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">
            &nbsp;<asp:Label ID="Label3" runat="server" Text="Bed"></asp:Label>
        </td>
        <td class="auto-style1">
            <asp:RadioButtonList ID="RadioButtonList2" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="1"></asp:ListItem>
                <asp:ListItem Value="2"></asp:ListItem>
            </asp:RadioButtonList>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label4" runat="server" Text="Desription"></asp:Label>
        </td>
        <td class="text-left">
            <asp:TextBox ID="txtdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
    </tr>
         <tr>
        <td class="auto-style3">
            <asp:Label ID="Label5" runat="server" Text="Image"></asp:Label>
        </td>
        <td class="text-left">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px"/>        

        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label6" runat="server" Text="Rate"></asp:Label>
        </td>
        <td>
            <asp:TextBox ID="txtrate" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" Text="INSERT" OnClick="Button1_Click" />
        </td>
    </tr>
</table>
            </center>
</form>
   

</asp:Content>

