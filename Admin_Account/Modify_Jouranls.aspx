<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Account/Admin_Master.master" AutoEventWireup="true" CodeFile="Modify_Jouranls.aspx.cs" Inherits="Admin_Account_Modify_Jouranls" %>

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
                    <strong><span class="style3"><span class="style13">&nbsp;Modify Content</span>&nbsp;</span></strong></td>
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

                    <asp:ImageButton ID="ImageButton1" runat="server" Height="57px" ImageUrl="~/Images/SearchIcon.jpg"  Width="68px" />

                </td>
                
            </tr>

         </table>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" SelectCommand="SELECT [ID], [JName], [IssueNo], [DateOfIssue], [PName], [Category], [Department], [PSchedule], [PType], [Keywords] FROM [tblUploadJournal] WHERE ([JName] LIKE '%' + @JName + '%')" DeleteCommand="DELETE FROM [tblUploadJournal] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblUploadJournal] ([JName], [IssueNo], [DateOfIssue], [PName], [Category], [Department], [PSchedule], [PType], [Keywords]) VALUES (@JName, @IssueNo, @DateOfIssue, @PName, @Category, @Department, @PSchedule, @PType, @Keywords)" UpdateCommand="UPDATE [tblUploadJournal] SET [JName] = @JName, [IssueNo] = @IssueNo, [DateOfIssue] = @DateOfIssue, [PName] = @PName, [Category] = @Category, [Department] = @Department, [PSchedule] = @PSchedule, [PType] = @PType, [Keywords] = @Keywords WHERE [ID] = @ID">
             
             <DeleteParameters>
                 <asp:Parameter Name="ID" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="JName" Type="String" />
                 <asp:Parameter Name="IssueNo" Type="String" />
                 <asp:Parameter Name="DateOfIssue" Type="DateTime" />
                 <asp:Parameter Name="PName" Type="String" />
                 <asp:Parameter Name="Category" Type="String" />
                 <asp:Parameter Name="Department" Type="String" />
                 <asp:Parameter Name="PSchedule" Type="String" />
                 <asp:Parameter Name="PType" Type="String" />
                 <asp:Parameter Name="Keywords" Type="String" />
             </InsertParameters>
             <SelectParameters>
                 <asp:ControlParameter ControlID="txtSearch" Name="JName" PropertyName="Text" Type="String" />
             </SelectParameters>
             
             <UpdateParameters>
                 <asp:Parameter Name="JName" Type="String" />
                 <asp:Parameter Name="IssueNo" Type="String" />
                 <asp:Parameter Name="DateOfIssue" Type="DateTime" />
                 <asp:Parameter Name="PName" Type="String" />
                 <asp:Parameter Name="Category" Type="String" />
                 <asp:Parameter Name="Department" Type="String" />
                 <asp:Parameter Name="PSchedule" Type="String" />
                 <asp:Parameter Name="PType" Type="String" />
                 <asp:Parameter Name="Keywords" Type="String" />
                 <asp:Parameter Name="ID" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <br />
         <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False"  DataKeyNames="ID" DataSourceID="SqlDataSource1" >
             <Columns>
                 <asp:CommandField ShowEditButton="True" />
                 <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                 <asp:BoundField DataField="JName" HeaderText="JName" SortExpression="JName" />
                 <asp:BoundField DataField="IssueNo" HeaderText="IssueNo" SortExpression="IssueNo" />
                 <asp:BoundField DataField="DateOfIssue" HeaderText="DateOfIssue" SortExpression="DateOfIssue" />
                 <asp:BoundField DataField="PName" HeaderText="PName" SortExpression="PName" />
                 <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                 <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                 <asp:BoundField DataField="PSchedule" HeaderText="PSchedule" SortExpression="PSchedule" />
                 <asp:BoundField DataField="PType" HeaderText="PType" SortExpression="PType" />
                 <asp:BoundField DataField="Keywords" HeaderText="Keywords" SortExpression="Keywords" />
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


         <br />
         <br />
         <br />
         <br />
         <br />


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>

