<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_Account/Admin_Master.master" AutoEventWireup="true" CodeFile="Modify_Audio.aspx.cs" Inherits="Admin_Account_Modify_Audio" %>

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
                    <strong><span class="style3"><span class="style13">&nbsp;Modify Audio Details</span>&nbsp;</span></strong></td>
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
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBCS %>" DeleteCommand="DELETE FROM [tblUploadVideo] WHERE [ID] = @ID" InsertCommand="INSERT INTO [tblUploadVideo] ([VNumber], [VName], [OwnedBy], [AuthorName], [DateOfIssue], [Category], [Topic], [Nationality], [Keywords]) VALUES (@VNumber, @VName, @OwnedBy, @AuthorName, @DateOfIssue, @Category, @Topic, @Nationality, @Keywords)" SelectCommand="SELECT [ID], [VNumber], [VName], [OwnedBy], [AuthorName], [DateOfIssue], [Category], [Topic], [Nationality], [Keywords] FROM [tblUploadVideo] WHERE ([VName] LIKE '%' + @VName + '%')" UpdateCommand="UPDATE [tblUploadVideo] SET [VNumber] = @VNumber, [VName] = @VName, [OwnedBy] = @OwnedBy, [AuthorName] = @AuthorName, [DateOfIssue] = @DateOfIssue, [Category] = @Category, [Topic] = @Topic, [Nationality] = @Nationality, [Keywords] = @Keywords WHERE [ID] = @ID">
        
             <SelectParameters>
                 <asp:ControlParameter ControlID="txtSearch" Name="VName" PropertyName="Text" Type="String" />
             </SelectParameters>
             <UpdateParameters>
                 <asp:Parameter Name="VNumber" Type="String" />
                 <asp:Parameter Name="VName" Type="String" />
                 <asp:Parameter Name="OwnedBy" Type="String" />
                 <asp:Parameter Name="AuthorName" Type="String" />
                 <asp:Parameter Name="DateOfIssue" Type="DateTime" />
                 <asp:Parameter Name="Category" Type="String" />
                 <asp:Parameter Name="Topic" Type="String" />
                 <asp:Parameter Name="Nationality" Type="String" />
                 <asp:Parameter Name="Keywords" Type="String" />
                 <asp:Parameter Name="ID" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource1">
             <Columns>
                 <asp:CommandField ShowEditButton="True" />
                 <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
                 <asp:BoundField DataField="VNumber" HeaderText="Audio No" SortExpression="VNumber" />
                 <asp:BoundField DataField="VName" HeaderText="Audio Name" SortExpression="VName" />
                 <asp:BoundField DataField="OwnedBy" HeaderText="Owned By" SortExpression="OwnedBy" />
                 <asp:BoundField DataField="AuthorName" HeaderText="Author Name" SortExpression="AuthorName" />
                 <asp:BoundField DataField="DateOfIssue" HeaderText="Date Of Issue" SortExpression="DateOfIssue" />
                 <asp:BoundField DataField="Category" HeaderText="Category" SortExpression="Category" />
                 <asp:BoundField DataField="Topic" HeaderText="Topic" SortExpression="Topic" />
                 <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
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

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>

