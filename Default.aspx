<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>&nbsp; for Library Content Management System&nbsp;&nbsp;&nbsp; </h1>
            </hgroup>
            <p>
                <span lang="EN-US" style="font-size: 12.0pt; font-family: &quot;Times New Roman&quot;,&quot;serif&quot;; mso-fareast-font-family: &quot;Times New Roman&quot;; mso-ansi-language: EN-US; mso-fareast-language: EN-US; mso-bidi-language: AR-SA">Library Content Management Systems is a Web Content Management System which is&nbsp; is a bundled or stand-alone application to create, manage, store and deploy content on Web pages.</span></p>
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>Our Site contains the following Content:</h3>
    <ol class="round">
        <li class="one">
            <h5>Journals</h5>
            All the CSI, IEEE, Science etc&nbsp; jouranls are available.</li>
        <li class="two">
            <h5>Magazines</h5>
            All magazines like India Today, The Week etc magazines are available.</li>
        <li class="three">
            <h5>Videos and Audios</h5>
            Various e-Learing Videos and audios are available.</li>
    </ol>
</asp:Content>