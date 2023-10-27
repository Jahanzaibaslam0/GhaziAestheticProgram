<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WebFormsEmailSMS2FA.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>

    .contact
{
    font-weight: bold;
    border-bottom: 2px solid #337ab7;
    font-size: 40px;
}

        .borders
{
    border: 1px solid #337ab7;
    border-radius: 40px;
    padding: 20px;
}



    </style>
    <br />

    <div class="container">
        <div id="carousel-id" class="carousel slide slider" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-id" data-slide-to="1" class=""></li>
            <li data-target="#carousel-id" data-slide-to="2" class=""></li>
            <li data-target="#carousel-id" data-slide-to="3" class=""></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="Images/GAP.png" />
            </div>
            <div class="item">
                <img src="Images/Yvoire.png" />
            </div>
            <div class="item">
                <img src="Images/03 Health Care.png" />
            </div>
            <div class="item">
                <img src="Images/Faculty.png" />
            </div>
            
        </div>
        <a class="left carousel-control slideArrow" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control slideArrow" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
        <br />
        <br />
        <div class="borders">
    <h2 class="contact text-center"><%: Title %>.</h2>
   
    <address>
        GHAZI AESTHETIC PROGRAM<br />
        GHAZI HOUSE, B-35, AL-HILAL SOCIETY K.D.A SCHEME NO.7, UNIVERSITY ROAD<br />
        <abbr title="Cell">Tel:</abbr>
        +9221-34853004-6

    </address>

    <address>
        <%--<strong>Registration:</strong>   <a href="mailto:paads2019@gmail.com">gap@ghazihealthcare.com</a><br />--%>
        <strong>Help Desk:</strong> <a href="gap@ghazihealthcare.com">gap@ghazihealthcare.com</a>
    </address>
            </div>
        </div>
</asp:Content>
