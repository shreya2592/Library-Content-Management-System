<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Account/Admin_Master.master" AutoEventWireup="true" CodeFile="Search_Magazine.aspx.cs" Inherits="Admin_Account_Search_Magazine" %>

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

                    <asp:ImageButton ID="ImageButton1" runat="server" Height="57px" ImageUrl="~/Images/SearchIcon.jpg"  Width="68px" OnClick="ImageButton1_Click" />

                </td>
                
            </tr>

         </table>

         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [ID], [MName], [PName], [IssueNo], [DateOfIssue], [Category], [PSchedule], [Ptype], [Path] FROM [tblUploadMagazine]"></asp:SqlDataSource>
         <br />
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnRowCommand="GridView1_RowCommand">
             <Columns>
                 <asp:BoundField DataField="ID" HeaderText="ID" />
                 <asp:BoundField DataField="MName" HeaderText="Magazine Name" />
                 <asp:BoundField DataField="PName" HeaderText="Publisher's Name " />
                 <asp:BoundField DataField="IssueNo" HeaderText="Issue No" />
                 <asp:BoundField DataField="DateOfIssue" HeaderText="Date Of Issue" />
                 <asp:BoundField DataField="Category" HeaderText="Category" />
                 <asp:BoundField DataField="PSchedule" HeaderText="Publishing schedule" />
                 <asp:BoundField DataField="Ptype" HeaderText="Publishing Type" />
                 <asp:TemplateField HeaderText="Path">
                     <ItemTemplate>
                         <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Path") %>' CommandName="Open File" Text='<%# Eval("Path") %>'></asp:LinkButton>
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
             <FooterStyle BackColor="White" ForeColor="#000066" />
             <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
             <RowStyle ForeColor="#000066" />
             <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#007DBB" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#00547E" />
         </asp:GridView>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>

