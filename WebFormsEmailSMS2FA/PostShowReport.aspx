<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostShowReport.aspx.cs" Inherits="WebFormsEmailSMS2FA.PostShowReport" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>POST SHOW REPORT</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="GAPImage/main.css">
    <link href="Content/SiteMaster.css" rel="stylesheet" />

    <script>
            window.onload = function () {
            
            var chart = new CanvasJS.Chart("chartContainer", {
                title:{
                    horizontalAlign: "center",
                    text: "Attendace By Area"
                },
                data: [{
                    type: "doughnut",
                    startAngle: 90,
                    // innerRadius: 60+"vh",
                    indexLabelFontSize: 12,
                    indexLabel: "{label} - {y}%",
                    toolTipContent:"{label} : {y}%",
                    dataPoints: [
                        { y: 0.61, label: "Rahim Yar Khan" },
                        { y: 1.02, label: "Mirpur Khas" },
                        { y: 3.46, label: "Multan" },
                        { y: 3.67, label: "Rawalpindi"},
                        { y: 4.48, label: "Peshawar"},
                        { y: 8.15, label: "Islamabad"},
                        { y: 8.15, label: "Hyderabad"},
                        { y: 9.16, label: "Lahore"},
                        { y: 44.60, label: "Karachi"}
                    ]
                }]
            });
            chart.render();
            
            }
            </script>


</head>
<body>
    
    <div class="row">
        <div class="col-md-12">
            <img src="GAPImage/01_GAP.png" alt="" class="img img-responsive imgBanner">
        </div>
    </div>
    <br><br>
<div class="container">

    <div class="row">
        <div class="col-md-4 text-center">
            <span class="glyphicon glyphicon-calendar iconDesign"></span>
            <p class="txtColor">Held Since <br> 2018</p>
        </div>
        <div class="col-md-4 text-center">
            <span class="glyphicon glyphicon-map-marker iconDesign"></span>
            <p class="txtColor">In Pakistan <br> Karachi</p>
        </div>
        <div class="col-md-4 text-center">
            <span class="glyphicon glyphicon-globe iconDesign"></span>
            <p class="txtColor">21 International <br>
                Faculty Members Coming <br>
                From 11 Countries</p>
        </div>
    </div>
</div>
<div class="container">
<div class="row">
    
    <div class="col-md-12 text-center">
        <h1 class="heading">THE SCIENCE OF MEDICAL AESTHETICS & ANTI-AGING</h1>
    </div>
</div>
</div>


<div class="container">
<div class="row">
    <div class="col-md-6 text-center">

        <h1 class="heading2">AESTHETIC DERMATOLOGY <br>
                & SURGERY</h1>

    </div>
    <div class="col-md-6 text-center">
        
            <h1 class="heading2">REGENERATIVE, PREVENTIVE <br>
                & ANTI-AGING MEDICINE</h1>
    </div>
</div><hr class="hr">
</div>

<div class="container">
<div class="row">
    <div class="col-md-12 text-center">
            <h1 class="attend">
                    ATTENDANCE IN 2019 <br>
                    <span class="color"> 853 </span> <br>
                    FROM PAKISTAN
            </h1>
    </div>
</div>
</div>

<div class="container">
<div class="row">
    <div class="col-md-2">

    </div>
    <div class="col-md-8 text-center">
        <img src="GAPImage/Pakistan's Map.png" style="text-align:center" alt="" class="img img-responsive imgMap">
    </div>
    <div class="col-md-2">

    </div>
</div>
</div>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-6">
                <div id="chartContainer" style="height: 40vh; width: 100%;"></div>
        </div>
        <div class="col-md-6">

            <h3 class="attendHeading">ATTENDANCE BY SPECIALITY</h3>

            <table class="table table-stripped tblData">
                <tr>
                    <td class="lblName" style="border-top: none !important;">DERMATOLOGIST</td>
                    <td class="perc" style="border-top: none !important;">95.72%</td>
                </tr>
                <tr>
                    <td class="lblName">DENTIST</td>
                    <td class="perc" style="color: #7f6084 !important">0.61%</td>
                </tr>
                <tr>
                    <td class="lblName">PLASTIC SURGEON</td>
                    <td class="perc" style="color: #f79647 !important">0.61%</td>
                </tr>
                <tr>
                    <td class="lblName">AESTHETIC SURGEON</td>
                    <td class="perc" style="color: #4aacc5 !important">0.20%</td>
                </tr>
                <tr>
                    <td class="lblName">COSMETIC PHYSICIAN</td>
                    <td class="perc" style="color: #c0504e !important">0.20%</td>
                </tr>
                <tr>
                    <td class="lblName" style="border-bottom: 3px solid grey !important;">OTHER</td>
                    <td class="perc">2.64%</td>
                </tr>
            </table>



        </div>
    </div>
</div>
<div class="container">
<div class="row">
    <div class="col-md-3">
        <div class="box1 text-center">

            <h1 class="count">491</h1>
            <p class="countNames">DELEGATES</p>

        </div>
    </div>
    <div class="col-md-3">
            <div class="box2 text-center">

                    <h1 class="count">292</h1>
                    <p class="countNames">EXHIBITOR</p>
        
                </div>
    </div>
    <div class="col-md-3">
            <div class="box3 text-center">

                    <h1 class="count">31</h1>
                    <p class="countNames">SPEAKERS</p>
        
                </div>
    </div>
    <div class="col-md-3">
            <div class="box4 text-center">

                    <h1 class="count">45</h1>
                    <p class="countNames">SPONSOR</p>
        
                </div>
    </div>
</div>
</div>
<br>

<div class="container">

    <div class="row">
        <div class="col-md-12">
            <h1 class="courseHeading">3 PRE-CONGRESS COURSES AND WORKSHOPS</h1>
        </div>
    </div>

    <div class="row">
        <div class="col-md-4">
                <h2 class="courses" style="color: #3f6f7d;border-bottom: 1px solid #3f6f7d">Basic Workshop</h2>
                <p class="courceCount">227</p>
                <p class="courceCount fontSize">PARTICIPANTS</p>
        </div>
        <div class="col-md-4">
                        <h2 class="courses" style="color: #702283;border-bottom:1px solid #702283">Advance Workshop</h2>
                        <p class="courceCount2">144</p>
                        <p class="courceCount2 fontSize">PARTICIPANTS</p>
                    
        </div>
        <div class="col-md-4">

                        <h2 class="courses" style="color: #d94c04;border-bottom: 1px solid #d94c04">Laser Course</h2>
                        <p class="courceCount3">193</p>
                        <p class="courceCount3 fontSize">PARTICIPANTS</p>
        </div>
    </div>

</div>
<div class="container">
    <hr class="hr">
</div>
<div class="container">
    <div class="row">
        


        <div class="col-md-3">
            <h3 class="speakerCount">31</h3>
            <p class="speakerHeading">SPEAKERS</p>

           

            <h3 class="internCount">20</h3>
            <p class="internHeading">INTERNATIONAL</p> 

            <h3 class="nationCount">11</h3>
            <p class="nationHeading">NATIONAL</p> 
        </div>

         
        <div class="col-md-9 marginTop">
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user interIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>
            <span class="glyphicon glyphicon-user nationIcon"></span>


            <h3 class="topSpeakers">SPEAKERS BY COUNTRIES</h3>

            <p class="countryList"><b>1.</b> AUSTRALIA &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp; <b>2.</b> CANADA &nbsp;&nbsp;&nbsp; • &nbsp;&nbsp;&nbsp;
                <b>3.</b> FRANCE &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp;<b>4.</b> GERMANY &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp;
                <b>5.</b> IRELAND &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp;<b>6.</b> ITALY &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp;
                <b>7.</b> KOREA &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp;<b>8.</b> KSA &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp;
                <b>9.</b> SPAIN &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp;<b>10.</b> UAE &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp;
                <b>11.</b> UK &nbsp;&nbsp;&nbsp;  • &nbsp;&nbsp;&nbsp;<b>12.</b> PAKISTAN
            
            </p>


        </div>
    </div>
</div>

<%--<div class="container">
        <div class="row">
            <div class="col-md-12">
                <h1 class="sponsHeading">SPONSORED | NON-SPONSORED</h1>
            </div>
        </div>
        
<br>
<div class="row no-padding">
    <div class="col-md-1"></div>
    <div class="col-md-6 col-xs-7 col-xs-7">
        <p class="spons">Sponsor</p>
        <p class="sponsPerc">83.06%</p> 
    </div>
    <div class="col-md-4 col-xs-5 col-sm-5">
            <p class="nonSpons">Non-Sponsor</p>
       <p class="nonSponsPerc">16.94%</p> 
    </div>
    <div class="col-md-1"></div>
</div>

    </div>--%>


    <!-- Footer -->
    <div class="bgColor">
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <img src="GAPImage/GAPLogo.png"  class="img img-responsive fLogo" />
                <div class="row">
                    <div class="col-md-3">
                  <a href="https://www.facebook.com/Ghazihealthcare.Official/" target="blank"> 
                      <img src="GAPImage/facebook.png" alt="" class="img img-responsive social"/>
                  </a>     
                    </div>
                    <div class="col-md-3">
                            <a href="https://www.instagram.com/GHAZIHEALTHCAREPAKISTAN/" target="blank">
                                <img src="GAPImage/instagram.png" alt="" class="img img-responsive social" />
                            </a> 
                    </div>
                    <div class="col-md-6"></div>
                </div>
                </div>
                <div class="col-md-2">
                    <ul class="fLinks">
                        <li><a href="Contact">Contact us</a></li>
                        <li><a href="About">About</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                        <ul class="fLinks">
                                <li><a href="#">Privacy Policy</a></li>
                                <li><a href="#">Terms and Condition</a></li>
                        </ul>
                </div>
                <%--<div class="col-md-4">
                    <p class="fPara">Adverse events should be reported. Reporting forms and information can be found at <span class="RLink">http://ghazihealthcare.com/</span> Adverse events should also be reported to Ghazi Brothers. <span class="RLink">http://ghazihealthcare.com/ </span>or +92-300-864299.</p>
                </div>--%>
            </div>
        </div>
    </div>


    <!-- Footer -->



</body>
</html>
