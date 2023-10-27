<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebFormsEmailSMS2FA.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
 <style>

        .row
{
    margin: 0;
    padding: 0;
}

.col-md-12
{
    padding: 0;
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

.vidCol
{
    padding: 10px;
 
}
        @media only screen and (max-width: 600px) {
            .heading {
                font-size: 20px;
            }

            .para1 {
                font-size: 12px !important;
            }
        }

        @media (min-width: 1200px) { 
    
    .container
    {
        width: 90% !important;
    }
    .slides
    {
        width: 100%;
    }

    .facultyImg
    {
        width: 100%;
    }
   .heading
    {
        font-size: 5vh;
        font-size-adjust: none;
    }
    .para1
    {
        font-size: 2.5vh;
        font-size-adjust: none;
    }

    .videoBG {
    width:100%;
    height:10%;
}

.login-button-img {
    height: 10%;
    vertical-align: middle;
    width: 18%;
    margin-top: -0.2vw;
}

.landing_ptag {
    font-size: 1.4vw;
    line-height: 1.7vw;
    display: inline-block;
}

.register-button {
    /* min-width: 12vw; */
    /* height: 4vw; */
    cursor: pointer;
    background-color: #035dab;
    color: #fff;
    /* padding: 1.5%; */
    /* padding: 1% 0.5% 1% 0.5%; */
    /* margin-top: 1%; */
    border-radius: 35vw;
    /* border: 1px solid #005baa; */
    outline-style: none;
    font-size: 1.4vw;
    font-family: proximanovalight;
    /* margin-right: 30px; */
    /* white-space: nowrap; */
    width: auto;
    padding: 8px 15px 8px 15px;
}

.slider-video {
    width: 100%;
}

.banner-content-text {
    width: 38%;
    float: left;
    margin-top: 13%;
    margin-left: 13%;
    font-size: 3vw;
    color: #686a6b;
    position: fixed;
    top: 6%;
    font-family: ProximaNovaRegular;
    font-weight: bold;
    z-index: 70;
}

.sliderRow
{
    margin-top:-5%;
}




/*@media (min-aspect-ratio: 16/9) {
    .videoBG {
        width:100%;
        height: auto;
    }
}
@media (max-aspect-ratio: 16/9) {
    .videoBG { 
        width:auto;
        height: 100%;
    }
}
@media (max-width: 767px) {
    .videoBG {
        display: none;
    }
    body {
        background: url('poster.jpg');
        background-size: cover;
    }
}*/

 }   

    </style>
    
    <div class="row sliderRow">
        <div class="col-md-12 col-xs-12 col-sm-12 col-lg-12 slider">
            <div id="carousel-id" class="carousel slide mySlider" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                    <li data-target="#carousel-id" data-slide-to="2" class=""></li>
                </ol>
                <div class="carousel-inner">
                <div class="item active">
                        <%--<img src="GAPImage/01_GAP.png" class="img img-responsive slides"/>--%>
                        <%--<video class="videoBG" poster="poster.JPG" autoplay muted loop>
                        <source src="Video/GAPWebPage.mp4" type="video/mp4" style="width:80%; height:10%">
                        </video>--%>

                        <video autoplay="true" class="img img-responsive slides slider-video" id="slider-first-video" muted="true" poster="poster.JPG">
                        <source src="Video/GAPWebPage.mp4" type="video/mp4">
                        </video>
<div class="img img-responsive  banner-content-text">
<p class="img img-responsive ">FEATURES <br> 
<span class="img img-responsive  landing_ptag">
    A calender Year Program<br>
    Interaction with masters and Poineers<br>
    Clinical Support Program<br>
    Digital Social Environment<br>

</span> 
</p>
<h3 class="img img-responsive ">Join our progressive, expert-led learning forum in medical aesthetics.
</h3>
<%--<button runat="server" class="img img-responsive slides log-in-button" data-position="bottom">
<img src="Images/Sign-In-Gray.png" class="img img-responsive slides login-button-img">LOG IN</button>
 <button class="img img-responsive slides register-button"   data-position="bottom">
 <img src="Images/Registration-Blue.png" alt="regster" class="img img-responsive slides register-button-img">REGISTER</button>--%>

    <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" Text="Register" ImageUrl="~/Images/Sign-In-Blue.png" Width="120px" />
    <asp:ImageButton ID="ImageButton2" runat="server" OnClick="ImageButton2_Click" Text="Register" ImageUrl="~/Images/Registration-Blue.png" Width="120px" />

</div>

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
        <div class="col-md-6 vidCol">
            <!-- video -->
            <video src="Video/Fundaro.mp4" controls="controls"  class="img img-responsive "/>
        </div>
        <div class="col-md-6">
            <h1 class="heading">Learn more about the GAP</h1>
            <p class="para1"><span class="txtTitle">Educational partners today. Helping change lives tomorrow.</span><br>
                Ghazi Aesthetics Program (G.A.P™) is an initiative of Ghazi healthcare, a Ghazi Group Company, with the focus to strive for humanity's quest for Healthier, Happier and beautiful life through innovation in the field of Healthcare.</p>
            <p class="para1"> 
                We aim to spread awareness and offer one of the most comprehensive product portfolios having scientific legacy  and high quality, across the country 

            </p>
        </div>
    </div>
</div>

<br>
<div class="row">
    <div class="col-md-12">
        <img src="GAPImage/Faculty.png" alt="" class="img img-responsive"/>
    </div>
</div>


<div class="container">
        <div class="row">
                <div class="col-md-6">
                        <h1 class="heading">Medical Education, 24/7</h1>
                        <p class="para1"><span class="txtTitle">Your personalised medical education journey, anytime, anywhere. </span><br>
                            This shall be copyrighted resource material developed for the program by the Ghazi Aesthetics Program (G.A.P™) Advisory Board. The resource material may follow a modular approach for all techniques  and treatment options</p>
                    <p class="para1">
                        Ghazi Aesthetics Program (G.A.P™) is dedicated to the advancement of technology to detect, prevent, and treat aging related disease and to promote research into methods to retard and optimize the human aging process.
                        </p>
                        <p class="para1">
                            G.A.P™ is also dedicated to educating physicians, scientists, and members of the public on anti-aging issues
                             </div>
            <div class="col-md-6 vidCol">
                <!-- video -->
                <video src="Video/ShahidJamil.mp4" controls="controls" class="img img-responsive vidTeg"/>
            </div>
        </div>
    </div>

</asp:Content>
