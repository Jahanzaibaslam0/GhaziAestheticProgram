<%@ Page Title="" Language="C#" MasterPageFile="~/Site4.Master" AutoEventWireup="true" CodeBehind="Default3.aspx.cs" Inherits="WebFormsEmailSMS2FA.Default3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
 
    
    <%--<style>

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
    height: 20%;
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

    </style>--%>

        <style>

        
.features
{
    font-size: 35px;
    text-align: left;
}

.desc
{
    font-size: 20px;
    text-align: left;
}

.details
{
    font-size: 22px;
    text-align: left;
}

.carousel-caption {
    color: white;
    width: 35%;
    margin-left: -6%;
    top: 25%;
    color: black;
    padding:10px;
    height:100%; 
}

.btn
{
    float: left;
    width: 40%;
}

@media only screen and (max-width: 600px) {
    .carousel-caption {
      width: 100%;
    }
    .details
    {
        font-size: 10px;
    }
    .features
    {
        font-size: 10px;
    }
    .desc
    {
     font-size: 10px;
    }
    .btn
    {
        width: 50%;
        float: left;
    }
  }


.learn
{
    color: #4f5caa;
}

.text-bold
{
    font-weight: bold;
}    

.mySlides
{
    margin-top:-1%;
}


.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}

.price {
  color: grey;
  font-size: 22px;
}

.card button {
  border: none;
  outline: 0;
  padding: 12px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}

.card button:hover {
  opacity: 0.7;
}


@media (min-width: 1200px)
{
    body
    {
        margin:0;
        padding:0;
    }
    .slide
    {
        width:100%;
    }
    .carousel-caption h3
    {
        font-size:4vh;
    }
    .carousel-caption
    {
        margin-top:2%;
    }
    .carousel-caption p
    {
        font-size:3vh;
    }
    .btn
    {
        width:28vh !important;
    }
    .learn
    {
        font-size:4vh;
    }
    .text-size
    {
        font-size:2vh;
    }
}

    </style>
    
    <div id="myCarousel" class="carousel slide mySlides" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
          <video  autoplay="autoplay" loop="true" class="img img-responsive sVideo slide" id="slider-first-video" muted="muted" poster="poster.JPG">
                            <source src="Video/01 Key Features Slider.mp4" type="video/mp4">
                            </video>
                            <div class="container1">
                                    <div class="carousel-caption d-md-block">
                                        <h3 class="features" style="font-size: large; text-align:left">FEATURES</h3><br />
                                        <%--<p class="desc" style="font-size: medium; text-align:left">A calender Year Program
                                                Interaction with masters and Poineers
                                                Clinical Support Program
                                                Digital Social Environment</p>
                                                <p class="details" style="font-size: medium; text-align:left">Join our progressive, expert-led learning forum in medical aesthetics.</p>--%>
                                                    <ul>
                        <li class="features" style="font-size: medium;text-align:left">An expert-led learning forum in medical aesthetics.</li><br />
                        <li class="features" style="font-size: medium;text-align:left">Integral Clinical Support Program.</li>
                            </ul>
                 <asp:ImageButton ID="ImageButton3" runat="server"  Text="Register" CssClass="img img-responsive btn" OnClick="ImageButton1_Click" ImageUrl="~/GAPImage/Sign In.png" Width="200px" />
    <asp:ImageButton ID="ImageButton4" runat="server"   Text="Register" CssClass="img img-responsive btn" OnClick="ImageButton2_Click" ImageUrl="~/GAPImage/Registration.png" Width="200px" />

                                                        <%--<img src="./Image/Sign-In-Blue.png" alt="" class="img img-responsive btn">
                                                    
                                                        <img src="./Image/Registration-Blue.png" alt="" class="img img-responsive btn">--%>
    </div>
</div>
        </div>
      <div class="item">
          <video  autoplay="autoplay" loop="true" class="img img-responsive sVideo slide" id="slider-first-video" muted="muted" poster="poster.JPG">
                            <source src="Video/02 Education Slider.mp4" type="video/mp4">
                            </video>
                            <div class="container1">
                                    <div class="carousel-caption d-md-block">
                                        <h3 class="features" style="font-size: large; text-align:left">EDUCATION</h3><br />
                                        <%--<p class="desc" style="font-size: medium; text-align:left">This shall be copyrighted resource material developed for the program by the Ghazi Aesthetics Program (G.A.P™) Advisory Board. The resource material may follow a modular approach for all techniques  and treatment options</p>
                                                <p class="details" style="font-size: medium; text-align:left">The resource material may include but not limited to:</p>--%>
                                                    <ul>
                        <li style="font-size: medium;text-align:left">Ghazi Aesthetics Program (G.A.P™)  follows a modular approach to all techniques.</li><br />
                        <li style="font-size: medium;text-align:left">Comprehensive Resource Material and Learning aids to support learning.</li>

                        
                           
                    </ul>
                 <asp:ImageButton ID="ImageButton1" runat="server"  Text="Register" CssClass="img img-responsive btn" OnClick="ImageButton1_Click" ImageUrl="~/GAPImage/Sign In.png" Width="200px" />
    <asp:ImageButton ID="ImageButton2" runat="server"   Text="Register" CssClass="img img-responsive btn" OnClick="ImageButton2_Click" ImageUrl="~/GAPImage/Registration.png" Width="200px" />

                                                    <%--    <img src="./Image/Sign-In-Blue.png" alt="" class="img img-responsive btn">
                                                    
                                                        <img src="./Image/Registration-Blue.png" alt="" class="img img-responsive btn">--%>
    </div>
</div>
        </div>
      <div class="item">
          <video  autoplay="autoplay" loop="true" class="img img-responsive sVideo slide" id="slider-first-video" muted="muted" poster="poster.JPG">
                            <source src="Video/03 Modular Approach Slider.mp4" type="video/mp4">
                            </video>
                            <div class="container1">
                                    <div class="carousel-caption d-md-block">
                                        <h3 class="features" style="font-size: large; text-align:left">THE FRAMEWORK</h3><br />
                                        <ul>
                        <li style="font-size: medium; text-align:left" >An program with balance of Theory and Practice.</li><br />
                        <li style="font-size: medium; text-align:left">Optimum Ratio of Delegates to Trainers.</li><br />
                        <li style="font-size: medium; text-align:left">Integral hands on approach.</li><br />
                        <li style="font-size: medium; text-align:left">Collaborative aestheticians and aspirants network.</li>
                        
                           
                    </ul>
                                                    
                 <asp:ImageButton ID="ImageButton5" runat="server"  Text="Register" CssClass="img img-responsive btn" OnClick="ImageButton1_Click" ImageUrl="~/GAPImage/Sign In.png" Width="200px" />
    <asp:ImageButton ID="ImageButton6" runat="server"   Text="Register" CssClass="img img-responsive btn" OnClick="ImageButton2_Click" ImageUrl="~/GAPImage/Registration.png" Width="200px" />

<%--                                                        <img src="./Image/Sign-In-Blue.png" alt="" class="img img-responsive btn">
                                                    
                                                        <img src="./Image/Registration-Blue.png" alt="" class="img img-responsive btn">--%>
    </div>
</div>
        </div>
      <%--<div class="item">
          <video  autoplay="autoplay" loop="true" class="img img-responsive sVideo slide" id="slider-first-video" muted="muted" poster="poster.JPG">
                            <source src="Video/03 Modular Approach Slider.mp4" type="video/mp4">
                            </video>
                            <div class="container1">
                                    <div class="carousel-caption d-md-block">
                                        <h3 class="features">FEATURES</h3>
                                        <p class="desc">A calender Year Program
                                                Interaction with masters and Poineers
                                                Clinical Support Program
                                                Digital Social Environment</p>
                                                <p class="details">Join our progressive, expert-led learning forum in medical aesthetics.</p>
                                                    
                 <asp:ImageButton ID="ImageButton7" runat="server"  Text="Register" CssClass="img img-responsive btn" OnClick="ImageButton1_Click" ImageUrl="~/GAPImage/Sign In.png" Width="200px" />
    <asp:ImageButton ID="ImageButton8" runat="server"   Text="Register" CssClass="img img-responsive btn" OnClick="ImageButton2_Click" ImageUrl="~/GAPImage/Registration.png" Width="200px" />

                                                        <img src="./Image/Sign-In-Blue.png" alt="" class="img img-responsive btn">
                                                    
                                                        <img src="./Image/Registration-Blue.png" alt="" class="img img-responsive btn">
    </div>
</div>
        </div>--%>
                        <%--<img src="GAPImage/01_GAP.png" class="img img-responsive slides"/>--%>
                        <%--<video class="videoBG" poster="poster.JPG" autoplay muted loop>
                        <source src="Video/GAPWebPage.mp4" type="video/mp4" style="width:80%; height:10%">
                        </video>--%>

                        <%--<video autoplay="true" class="img img-responsive slides slider-video" id="slider-first-video" muted="true" poster="poster.JPG">
                        <source src="Video/GAPWebPage.mp4" type="video/mp4">
                        </video>
<div class="img img-responsive slides banner-content-text">
<p class="img img-responsive slides">PROFESSIONAL DEVELOPMENT <br> 
<span class="img img-responsive slides landing_ptag">Developed in partnership with the most eminent specialists in their field, our curriculum encompasses the latest scientific, clinical and practice development education.
</span> 
</p>
<h3 class="img img-responsive slides">Join our progressive, expert-led learning forum in medical aesthetics.
</h3>
<%--<button runat="server" class="img img-responsive slides log-in-button" data-position="bottom">
<img src="Images/Sign-In-Gray.png" class="img img-responsive slides login-button-img">LOG IN</button>
 <button class="img img-responsive slides register-button"   data-position="bottom">
 <img src="Images/Registration-Blue.png" alt="regster" class="img img-responsive slides register-button-img">REGISTER</button>
    <asp:ImageButton ID="ImageButton1" runat="server" Text="Register" ImageUrl="~/Images/Sign-In-Blue.png" Width="120px" />
    <asp:ImageButton ID="ImageButton2" runat="server" Text="Register" ImageUrl="~/Images/Registration-Blue.png" Width="120px" />

</div>

                    </div>--%>

      <%--<div class="item">
       <img src="Images/GAP.png" class="img img-responsive slide" />
    </div>

    <div class="item">
      <img src="Images/YVOIRE.png" class="img img-responsive slide" />
    </div>--%>
  

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
      </div></div>


        
    <%--  <div id="carouselId" class="carousel slide mySlides" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselId" data-slide-to="0" class="active"></li>
            <li data-target="#carouselId" data-slide-to="1"></li>
            <li data-target="#carouselId" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="carousel-item active">
                    <video autoplay="true" class="img img-responsive sVideo" id="slider-first-video" muted="true" poster="poster.JPG">
                            <source src="Video/GAPWebPage.mp4" type="video/mp4">
                            </video>
                            <div class="container">
                                    <div class="carousel-caption d-md-block">
                                        <h3 class="features">FEATURES</h3>
                                        <p class="desc">A calender Year Program
                                                Interaction with masters and Poineers
                                                Clinical Support Program
                                                Digital Social Environment</p>
                                                <p class="details">Join our progressive, expert-led learning forum in medical aesthetics.</p>
                                                    
                 <asp:ImageButton ID="ImageButton1" runat="server"  Text="Register" CssClass="img img-fluid btn" ImageUrl="~/Images/Sign-In-Blue.png" Width="120px" />
    <asp:ImageButton ID="ImageButton2" runat="server"  Text="Register" CssClass="img img-fluid btn" ImageUrl="~/Images/Registration-Blue.png" Width="120px" />

                                                        <img src="./Image/Sign-In-Blue.png" alt="" class="img img-responsive btn">
                                                    
                                                        <img src="./Image/Registration-Blue.png" alt="" class="img img-responsive btn">
                                                </div>
                                    </div>
            </div>
            <div class="carousel-item">
                <img src="Pictures/01_GAP.png" class="img img-fluid" />
            </div>
            <div class="carousel-item">
                <img src="Pictures/02_YVOIRE.png" class="img img-responsive" />
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselId" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselId" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>--%>


       <p><br>
<%--<div class="container1">
    
    <div class="row">
        <div class="col-lg-12 col-md-12 ">
        <div class="card">
 <img src="GAPImage/Yvoire-Registration-Form-Header.png" alt="Event" style="width:100%">
  <p class="price"> <b>GHAZI AESTHETICS PROGRAM (G.A.P ™)
WEBINAR REGISTRTAION FORM </b>      
 </p>
  <%--<p class="price">Date:Tuesday 23rd June 2020</p>
  <p>Limited Seats are Available.</br>Please apply now to reserve your seats.
</p>
  <p>    
  <asp:ImageButton ID="ImageButton8" runat="server"  Text="Register"  OnClick="ImageButton8_Click" ImageUrl="~/Images/RegisterNowButton.png" Width="200px" />      
  </p>
            <%--<p><button onclick="window.location.href='https:www.w3school.com';">Register</button></p>
</div>
            </div>
        <%--<div class="col-lg-12 col-md-12 ">
    <div class="card">
  <img src="Images/RegistrationFormHeader.png" alt="Event" style="width:100%">
  <p class="price"><b>GHAZI AESTHETICS PROGRAM (G.A.P ™)
EXPERT MEETING – HYDERABAD      </b>
</p>
  <p class="price">Date:Monday 23rd March 2020</p>
  <p>Limited Seats are Available.</br> Please apply now to reserve your seats.
</p>   
  <asp:ImageButton ID="ImageButton7" runat="server"  Text="Register"  OnClick="ImageButton7_Click" ImageUrl="~/Images/RegisterNowButton.png" Width="200px" />      
  </p><%--<p><button onclick="window.location.href = 'https://w3docs.com';" >Register</button></p>
</div></div>--%>
        
        </div>
    
    <div class="row">
        <%--<div class="col-lg-6 col-md-6 ">
            <video src="Video/Fundaro.mp4" class="img img-responsive" controls />              
        </div>--%>
        <div class="col-lg-6 col-md-6">
            <h3 class="learn">Learn more about the Ghazi Aesthetics Program (G.A.P™)</h3>
            <p class="text-bold text-size">Educational partners today. Helping change lives tomorrow.</p>
            <p class="text-size">Ghazi Aesthetics Program (G.A.P™) is an initiative of Ghazi healthcare, a Ghazi Group Company, with the focus to strive for humanity's quest for Healthier, Happier and beautiful life through innovation in the field of Healthcare. 
<br>
                    We aim to spread awareness and offer one of the most comprehensive product portfolios having scientific legacy and high quality, across Pakistan.</p>
        </div>
                <div class="col-lg-6 col-md-6">
                    <h3 class="learn">Learn more about the Ghazi Aesthetics Program (G.A.P™),  24/7</h3>
                    <p class="text-bold text-size">Your personalised medical education journey, anytime, anywhere.</p>
                    <p class="text-size">
                            Ghazi Aesthetics Program (G.A.P™) is dedicated to the advancement of technology to detect, prevent, and treat aging related disease and to promote research into methods to retard and optimize the human aging process. 
                            <br>
                            The modular approach for all techniques and treatment options that is dedicated to educating physicians, scientists, and members of the public on anti-aging issues 
                            
                    </p>
                </div>
            <%--<div class="col-lg-6 col-md-6">
                <video src="Video/ShahidJamil.mp4" class="img img-responsive" controls />
            </div>--%>
            
        </div>
</div>
                    <%--<div class="item">
                        <img alt="Second slide" src="GAPImage/02_YVOIRE.png" class="img img-responsive slides">
                    </div>
                    <div class="item">
                        <img src="GAPImage/03_HealthCare.png" alt="Third Slide" class="img img-responsive slides">
                    </div>
                </div>
                <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
                <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
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
    </div>--%>

</asp:Content>
