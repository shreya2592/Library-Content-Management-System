<%@ Page Title="" Language="C#" MasterPageFile="~/User_Account/UserMasterPage.master" AutoEventWireup="true" CodeFile="User_Feedback.aspx.cs" Inherits="User_Account_User_Feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <style type="text/css">
        .style1
        {
            width: 100%;
             height: 351px;
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
     <table class="style1" >
            <tr>
                <td class="style16" colspan="2">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong><span class="style3"><span class="style13">User FeedBack </span>&nbsp;</span></strong></td>
            </tr>
          <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
         <tr>
              <td align="right" class="style6">
                    <strong> Name (optional): </strong></td>
             <td>
                 <asp:TextBox ID="txtName" runat="server" Width="195px"></asp:TextBox>
             </td>

         </tr>
         <tr>
              <td align="right" class="style6">
                    <strong> SAP (optional): </strong></td>
             <td>
                 <asp:TextBox ID="txtSap" runat="server" Width="195px"></asp:TextBox>
             </td>

         </tr>
         <tr>
              <td align="right" class="style6">
                    <strong> FeedBack: </strong></td>
             <td >
             <asp:TextBox ID="txtFeedback" runat="server" Width="300px" Height="100px" Rows="5" TextMode="MultiLine"></asp:TextBox>
                </td>
         </tr>
         <tr>
               <td class="style6">
                    &nbsp;</td>
              <td>
                  <asp:Button ID="btnSubmitFeedback" runat="server" Text="Submit Feedback" Font-Bold="True" Font-Size="Large" 
                        style="background-color: #99CCFF"  Width="221px" OnClick="btnSubmitFeedback_Click"  />
    <br />
    <br />
     
    <asp:Label ID="LblMessage" runat="server" Font-Bold="true"></asp:Label>
    <br />
                  </td>
         </tr>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>

