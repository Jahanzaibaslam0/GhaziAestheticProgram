<%@ Page Title="PAADS DASHBOARD" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="WebFormsEmailSMS2FA.Dashboard" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>

    .about
{
    font-weight: bold;
    border-bottom: 2px solid #337ab7;
    font-size: 40px;
}

    .borders
{
    border: 1px solid #337ab7;
    border-radius: 40px;
    padding: 10px;
}

    </style>
    <div class="container">
        <div class="borders">
            <h2 class="about text-center"><%: Title %>.</h2>
            <br />
    <iframe width="1080" height="541.25" src="https://app.powerbi.com/reportEmbed?reportId=1a1dbc47-4662-473c-ba59-72a8783aefc2&autoAuth=true&ctid=04750de1-de12-4659-81b4-72c5cd539856" frameborder="0" allowFullScreen="true"></iframe>
    </div>
        </div>
</asp:Content>
