<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Account/Admin_Master.master" AutoEventWireup="true" CodeFile="Full_Search.aspx.cs" Inherits="Admin_Account_Full_Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 6px;
        }
        .style3
        {
            font-size: x-large;
            background-color: #66FFFF;
        }
        .style4
        {
            height: 8px;
            text-align: left;
        }
        .style5
        {
            height: 23px;
        }
        .style6
        {
            width: 148px;
            text-align: left;
        }
        .style7
        {
            height: 23px;
            width: 148px;
            text-align: left;
        }
        .style8
        {
            height: 8px;
            width: 148px;
            text-align: left;
        }
        .style10
        {
            width: 148px;
            height: 23px;
        }
        .style11
        {
            width: 148px;
            text-align: left;
            height: 30px;
        }
        .style12
        {
            height: 30px;
            text-align: left;
        }
        .style13
        {
            text-decoration: underline;
            color: #FF33CC;
            background-color: #CCFFFF;
        }
        .style14
        {
            text-align: left;
        }
        .style15
        {
            height: 23px;
            text-align: left;
        }
        .style16
        {
            height: 6px;
            text-align: left;
        }
    </style>
    
     <div style="height: 396px">
    
        <table class="style1">
            <tr>
                <td class="style16" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                    <strong><span class="style3"><span class="style13">Search </span>&nbsp;</span></strong></td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Search Journal</asp:LinkButton>
                </td>
            </tr>
             <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Search Magazine</asp:LinkButton>
                </td>
            </tr>
             <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Search Audio/Video</asp:LinkButton>
                </td>
            </tr>
            </table>
            
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>

