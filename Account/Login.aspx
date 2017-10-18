<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            background-color: #FFFFFF;
        }
        .style3
        {
            color: #FF66FF;
        }
        .style4
        {
            width: 120px;
        }
    </style>
    <table class="style1">
        <tr>
            <td colspan="2">
                <strong><span class="style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <span class="style3">&nbsp; Login Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" style="color: #FF0000" Text="*"></asp:Label>
                </span></span></strong></td>
        </tr>
        <tr>
            <td class="style4">
                SAP/UserName</td>
            <td>
                <asp:TextBox ID="txtUniqueID" runat="server" Width="187px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Password</td>
            <td>
                <asp:TextBox ID="txtPassword" runat="server" Width="186px" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:CheckBox ID="chkBoxRememberMe" runat="server" Text="Remeber Me" />
                &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Font-Bold="True" Font-Size="Large" 
                    style="background-color: #99CCFF" Text="Login" Width="121px" 
                    onclick="Button1_Click" />
            &nbsp;&nbsp;
                <asp:LinkButton ID="LinkButton2" runat="server" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Red" onclick="LinkButton2_Click">New User, Register</asp:LinkButton>
            </td>
        </tr>
         <tr>
            <td class="style4">
                &nbsp;</td>
            <td>
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red" ></asp:Label>
                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

