﻿<%@ Page Title="EVENTS" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Events.aspx.cs" Inherits="WebFormsEmailSMS2FA.Events" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <style>

        .vidCol
{
    padding: 10px;
}
        .heading
{
    color: #005caa;
}

.txtTitle
{
    font-weight: bold;
}

.para1
{
    font-size: 17px;
}

@media only screen and (max-width: 600px) {
  
   .heading
   {
       font-size: 20px;
   }
   .para1
    {
    font-size: 12px !important;
    }
   .pageStart
   {
       margin-top:-15% !important;
   }
  }

.vidTeg
{
    width:100%;
}

.pageStart
{
    margin-top:-4%;
}
    </style>


    <!-- Main Content -->

    <div class="row pageStart">
        <div class="col-md-12 col-xs-12 col-sm-12">
            <div id="carousel-id" class="carousel slide mySlider" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                    <li data-target="#carousel-id" data-slide-to="2" class=""></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="GAPImage/01_GAP.png" class="img img-responsive slides"/>

                    </div>
                    <div class="item">
                        <img alt="Second slide" src="GAPImage/02_YVOIRE.png" class="img img-responsive slides">
                    </div>
                    <div class="item">
                        <img src="GAPImage/03_HealthCare.png" alt="Third Slide" class="img img-responsive slides">
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="row">
                <div class="col-md-12">
                        <h1 class="heading">G.A.P™ – EVENTS</h1>
       
                    <p class="para1"><span class="txtTitle">The events shall comprise of: seminars, workshop and trainings. This would provide the participant to interact with:</span><br>
                      </p>
                    <ul>
                        <li style="font-size: medium">G.A.P™ – Advisory Board Members</li>
                        <li style="font-size: medium">Key Opinion Leaders</li>
                        <li style="font-size: medium">International Trainers and Speakers</li>
                     
                        
                           
                    </ul>
                             </div>

            <%--<div class="col-md-6 vidCol">
                <!-- video -->
                <video src="Video/ShahidJamil.mp4" controls="controls" class="img img-responsive vidTeg"/>
            </div>--%>
        </div>
    </div>
</asp:Content>
