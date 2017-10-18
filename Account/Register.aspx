<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Default" Debug="true" %>
<%@ Register Assembly="MSCaptcha" Namespace="MSCaptcha" TagPrefix="rsv" %> 

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
            color: #6495ED;
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
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <strong><span class="style3"><span class="style13">Registration Page</span>&nbsp;</span></strong></td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    &nbsp;</td>
            </tr>
            <tr>
                 <td align="right" class="style6">
                    <strong>Role</strong></td>
                <td>
                       
                                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Role"  Text="User" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" />
                       
                                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Role" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Admin" AutoPostBack="True" />
&nbsp;<br />
                                    <br />
                                   
                                    
                </td>
            </tr>
            
                <td>
            <tr>
                <td>  <strong> <asp:Label ID="Labeladmin" runat="server" Text="Enter Unique ID" Visible="false"></asp:Label></strong>
                     <strong><asp:Label ID="Labeluser" runat="server" Text="Enter SAP ID: "  Visible="false"></asp:Label></strong>
&nbsp;&nbsp;&nbsp;
&nbsp;</td>
                <td><asp:TextBox ID="txtUniqueID" runat="server" Visible="false" Width="195px" ></asp:TextBox>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                                     
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                        ControlToValidate="txtUniqueID" ErrorMessage="ID cannot be Blank"
                                         Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                                     
                                    </td>
            </tr>
             <tr>
                 <td align="right" class="style6">
                    <strong>First Name </strong></td>
                  <td class="style14">
                    <asp:TextBox ID="txtFirstName" runat="server" Width="195px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtFirstName" ErrorMessage="First Name should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                 <td align="right" class="style6">
                    <strong>Last Name </strong></td>
                  <td class="style14">
                    <asp:TextBox ID="txtLastName" runat="server" Width="195px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtLastName" ErrorMessage="Last Name should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                 <td align="right" class="style6">
                    <strong>Course </strong></td>
                  <td class="style14">
                      <asp:DropDownList ID="ddlCourse" runat="server" Width="195px">
                          <asp:ListItem>B.Tech</asp:ListItem>
                          <asp:ListItem>MBA.Tech</asp:ListItem>
                      </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="ddlCourse" ErrorMessage="Course  should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                 <td align="right" class="style6">
                    <strong>Department </strong></td>
                  <td class="style14">
                      <asp:DropDownList ID="ddlDepartment" runat="server" Width="195px">
                          <asp:ListItem>Computer Science</asp:ListItem>
                          <asp:ListItem>Information Technology</asp:ListItem>
                          <asp:ListItem>EXTC</asp:ListItem>
                          <asp:ListItem>Mechanical</asp:ListItem>
                          <asp:ListItem>Civil</asp:ListItem>
                         
                      </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="ddlDepartment" ErrorMessage="Department  should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                 <td align="right" class="style6">
                    <strong>Year </strong></td>
                  <td class="style14">
                      <asp:DropDownList ID="ddlYear" runat="server" Width="195px">
                          <asp:ListItem>1st</asp:ListItem>
                          <asp:ListItem>2nd</asp:ListItem>
                          <asp:ListItem>3rd</asp:ListItem>
                          <asp:ListItem>4th</asp:ListItem>
                          <asp:ListItem></asp:ListItem>
                          
                      </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="ddlYear" ErrorMessage="Year  should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td align="right" class="style6">
                    <strong>Password</strong></td>
                <td class="style14">
                    <asp:TextBox ID="txtPassword" runat="server" Width="195px" TextMode="Password" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="password should not be Blank" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style7">
                    <strong>Confirm Password</strong></td>
                <td class="style15">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" Width="195px" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                        ErrorMessage="Enter correct password" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td align="right" class="style11">
                    <strong>MobileNumbe</strong>r</td>
                <td class="style12">
                    <asp:TextBox ID="txtMobNo" runat="server" MaxLength="10" Width="195px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="txtMobNo" ErrorMessage="Enter Valid Number" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                        ValidationExpression="[7-9][0-9]{9}$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtMobNo" ErrorMessage="Mobile Number can not be Blank" 
                        Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style8">
                    <strong>EmailId</strong></td>
                <td class="style4">
                    <asp:TextBox ID="txtEmail" runat="server" Width="195px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Enter valid Email Id" 
                        Font-Bold="True" Font-Size="Medium" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Email Field can not be Blank" 
                        Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style10">
                </td>
                <td class="style5">

                <rsv:CaptchaControl ID="captcha1" runat ="server" CaptchaLength="5" 
                CaptchaHeight ="60" CaptchaWidth="200" CaptchaLineNoise="None" 
                CaptchaMinTimeout="5" CaptchaMaxTimeout="240" ForeColor="#00FFCC" 
                BackColor="White" CaptchaChars="ABCDEFGHIJKLNPQRTUVXYZ12346789" 
                FontColor="Red" />

                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style6">
                    <strong>Enter Captcha Image</strong></td>
                <td class="style14">
                    <asp:TextBox ID="TextBox6" runat="server" Width="195px"></asp:TextBox>
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="*"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="Enter valid captcha" 
                        Font-Bold="True" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnRegister" runat="server" Font-Bold="True" Font-Size="Large" 
                        style="background-color: #99CCFF" Text="Register" Width="121px" 
                        onclick="btnRegister_Click" />
                </td>
            </tr>
        </table>
    
    
    </div>
    

</asp:Content>

