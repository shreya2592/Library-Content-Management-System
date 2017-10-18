<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Account/Admin_Master.master" AutoEventWireup="true" CodeFile="Search_Video.aspx.cs" Inherits="Admin_Account_Search_Video" %>
<%@ Register Assembly="Media-Player-ASP.NET-Control" Namespace="Media_Player_ASP.NET_Control" TagPrefix="cc1" %>

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
         .auto-style4 {
             width: 61px;
             text-align: left;
         }
         .auto-style5 {
             height: 54px;
         }
    </style>

     <div style="height: 396px">
    
        <table class="style1">
            <tr>
                <td class="style16" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong><span class="style3"><span class="style13">Search Content</span>&nbsp;</span></strong></td>
            </tr>
            <tr>
                <td class="auto-style5">

                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style4">

                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <asp:TextBox ID="txtSearch" runat="server" Width="336px" Height="53px"></asp:TextBox>
                </td>
                <td>

                    <asp:ImageButton ID="ImageButton1" runat="server" Height="57px" ImageUrl="~/Images/SearchIcon.jpg" OnClick="ImageButton1_Click" Width="68px" />

                </td>
                
            </tr>

         </table>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [ID], [VNumber], [VName], [OwnedBy], [AuthorName], [DateOfIssue], [Category], [Topic], [Nationality], [Path] FROM [tblUploadVideo]"></asp:SqlDataSource>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
             <Columns>
                 <asp:BoundField DataField="ID" HeaderText="ID" />
                 <asp:BoundField DataField="VNumber" HeaderText="Video Number" />
                 <asp:BoundField DataField="VName" HeaderText="Video Name" />
                 <asp:BoundField DataField="OwnedBy" HeaderText="Owned By" />
                 <asp:BoundField DataField="AuthorName" HeaderText="Author Name " />
                 <asp:BoundField DataField="DateOfIssue" HeaderText="Date Of Issue" />
                 <asp:BoundField DataField="Category" HeaderText="Category" />
                 <asp:BoundField DataField="Topic" HeaderText="Topic" />
                 <asp:BoundField DataField="Nationality" HeaderText="Nationality" />
                 <asp:TemplateField HeaderText=" File ">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Path") %>' CommandName="Open File" Text='<%# Eval("Path") %>'></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
                 
             </Columns>
         </asp:GridView>
      
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>

