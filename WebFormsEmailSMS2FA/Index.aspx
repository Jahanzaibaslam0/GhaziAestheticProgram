<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebFormsEmailSMS2FA.Index" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="Content/Main.css">
<script>
$(function () {
  $(document).scroll(function () {
    var $nav = $(".navbar-fixed-top");
    $nav.toggleClass('scrolled', $(this).scrollTop() > $nav.height());
  });
});

</script>
</head>
<body>
    

    <div class="container">
    <nav class="navbar navbar-default navbar-fixed-top myNav" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <div class="container">
            <a class="navbar-brand" href="#"><img src="GAPImage/GAPLogo.png"  alt="" class="img img-responsive logo"></a>
        </div>
        </div>
    </nav>
</div>

    <div class="row">
        <div class="col-md-12 col-xs-12 col-sm-12">
            <div id="carousel-id" class="carousel slide mySlider" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                    <li data-target="#carousel-id" data-slide-to="2" class=""></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img alt="First slide" src="GAPImage/01_GAP.png" class="img img-responsive slides">
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
            <video src="./Video/Fundaro.mp4" controls class="img img-responsive"></video>
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
        <img src="GAPImage/Faculty.png" alt="" class="img img-responsive">
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
                    </p>
                    </div>
            <div class="col-md-6 vidCol">
                <!-- video -->
                <video src="./Video/ShahidJamil.mp4" controls class="img img-responsive"></video>
            </div>
        </div>
    </div>


    <div class="bgColor">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <img src="GAPImage/GAPLogo.png" alt="" class="img img-responsive fLogo">
                <div class="row">
                    <div class="col-md-3">
                  <a href="https://www.facebook.com/Ghazihealthcare.Official/" target="blank"> <img src="GAPImage/facebook.png" alt="" class="img img-responsive"></a>     
                    </div>
                    <div class="col-md-3">
                            <a href="https://www.instagram.com/GHAZIHEALTHCAREPAKISTAN/" target="blank"><img src="GAPImage/instagram.png" alt="" class="img img-responsive"></a> 
                    </div>
                    <div class="col-md-6"></div>
                </div>
                </div>
                <div class="col-md-2">
                    <ul class="fLinks">
                        <li><a href="#">Contact us</a></li>
                        <li><a href="#">About</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                        <ul class="fLinks">
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Terms and Condition</a></li>
                        </ul>
                </div>
                <div class="col-md-4">
                    <p class="fPara">Adverse events should be reported. Reporting forms and information can be found at <span class="RLink">http://ghazihealthcare.com/</span> Adverse events should also be reported to Ghazi Brothers. <span class="RLink">http://ghazihealthcare.com/ </span>or +92-300-864299.</p>
                </div>
            </div>
        </div>
    </div>
























</body>
</html>
