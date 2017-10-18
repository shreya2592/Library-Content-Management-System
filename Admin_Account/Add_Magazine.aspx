<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Account/Admin_Master.master" AutoEventWireup="true" CodeFile="Add_Magazine.aspx.cs" Inherits="Admin_Account_Add_Magazine" %>

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
     <table class="style1">
            <tr>
                <td class="style16" colspan="2">
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong><span class="style3"><span class="style13">Upload a Magazine</span>&nbsp;</span></strong></td>
            </tr>
          <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
         <tr>
         <td align="right" class="style6">
                    <strong>Magazine's Name: </strong></td>
         <td>
              <asp:TextBox ID="txtMagazineName" runat="server" Width="195px" ></asp:TextBox>
         </td>
         </tr>
          <tr>
         <td align="right" class="style6">
                    <strong>Publisher's Name </strong></td>
         <td>
              <asp:TextBox ID="txtPublisherName" runat="server" Width="195px" ></asp:TextBox>
         </td>
         </tr>
         <tr>
         <td align="right" class="style6">
                    <strong>Issue No: </strong></td>
         <td>
              <asp:TextBox ID="txtIssueNo" runat="server" Width="195px" ></asp:TextBox>
         </td>
         </tr>
          <tr>
         <td align="right" class="style6">
                    <strong>Date of Issue </strong></td>
         <td>
              <asp:TextBox ID="txtDateOfIssue" runat="server" Width="195px" Height="20px" ></asp:TextBox>
              <asp:ImageButton ID="ImageButton1" runat="server" Height="20px" ImageUrl="~/Images/calendar_icon.png" OnClick="ImageButton1_Click" Width="20px" />
              <br />
              <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Width="220px">
                  <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                  <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                  <OtherMonthDayStyle ForeColor="#CC9966" />
                  <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                  <SelectorStyle BackColor="#FFCC66" />
                  <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                  <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
              </asp:Calendar>
         </td>
         </tr>
          <tr>
         <td align="right" class="style6">
                    <strong>Category </strong></td>
         <td>
             
             <asp:DropDownList ID="ddlCategory" runat="server" Width="195px">
                 <asp:ListItem>India Today</asp:ListItem>
                 <asp:ListItem>Business World</asp:ListItem>
                 <asp:ListItem>Fortune</asp:ListItem>
                 <asp:ListItem>Reader Digest</asp:ListItem>
                 <asp:ListItem>Linux for you</asp:ListItem>
                 <asp:ListItem>Intelligent Computing chip </asp:ListItem>
                 <asp:ListItem>Human Capital</asp:ListItem>
                 <asp:ListItem>Cricket Today </asp:ListItem>
                 <asp:ListItem>The Economist</asp:ListItem>
                 <asp:ListItem>Sport star</asp:ListItem>
             </asp:DropDownList>
             
         </td>
         </tr>
         <tr>
         <td align="right" class="style6">
                    <strong>Publication Schedule: </strong></td>
         <td>
              
             <asp:DropDownList ID="ddlPublication" runat="server" Width="195px">
                 <asp:ListItem>Weekly</asp:ListItem>
                 <asp:ListItem>Monthly</asp:ListItem>
                 <asp:ListItem>Quaterly</asp:ListItem>
                 <asp:ListItem>Half-yearly</asp:ListItem>
                 <asp:ListItem>Yearly</asp:ListItem>
             </asp:DropDownList>
              
         </td>
         </tr>
          
          <tr>
         <td align="right" class="style6">
                    <strong>Publication Type </strong></td>
         <td>
             <asp:DropDownList ID="ddlPublicationType" runat="server" Width="195px">
                 <asp:ListItem>National</asp:ListItem>
                 <asp:ListItem>International </asp:ListItem>
             </asp:DropDownList>
         </td>
         </tr>
          <tr>
         <td align="right" class="style6">
                    <strong>Keywords </strong></td>
         <td>
              <asp:TextBox ID="txtKeywords" runat="server" Width="195px" Height="50px" TextMode="MultiLine" ></asp:TextBox>
         </td>
         </tr>
          <tr>
         <td align="right" class="style6">
                    <strong>Upload Magazine </strong></td>
              <td>
              <br />
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    
              </td>
              </tr>
         <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                  <asp:Button ID="BtnUpload" runat="server" Text="Upload File" Font-Bold="True" Font-Size="Large" 
                        style="background-color: #99CCFF"  Width="121px"  OnClick="BtnUpload_Click" />
    <br />
    <br />
    <asp:Label ID="LblMessage" runat="server" Font-Bold="true"></asp:Label>
    <br />
                </td>
            </tr>


    </table>

    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>

