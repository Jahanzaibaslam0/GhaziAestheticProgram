﻿<%@ Page Title="About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebFormsEmailSMS2FA.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
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
    <h2 class="about text-center"><%: Title %>.</h2>
    <br />
    <p>Ghazi Aesthetics Program (G.A.P™) is an initiative of Ghazi healthcare, a Ghazi Group Company, with the focus to strive for humanity's quest for Healthier, Happier and beautiful life through innovation in the field of Healthcare.
<br />
        <br />
        We aim to spread awareness and offer one of the most comprehensive product portfolios having scientific legacy  and high quality, across the country 

</p>
            </div>
        </div>
</asp:Content>
