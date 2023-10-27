<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="WebFormsEmailSMS2FA.home" %>

<!DOCTYPE html>

<html><head><script src="/static/111213/js/perf/stub.js" type="text/javascript"></script><script src="/faces/a4j/g/3_3_3.Finalorg.ajax4jsf.javascript.AjaxScript?rel=1563481396000" type="text/javascript"></script><script src="/static/111213/js/functions.js" type="text/javascript"></script><script src="/jslibrary/1553625784220/sfdc/main.js" type="text/javascript"></script><script src="/jslibrary/jslabels/1563482710000/en_US.js" type="text/javascript"></script><script src="/static/111213/desktop/desktopAjax.js" type="text/javascript"></script><script src="/static/111213/js/picklist4.js" type="text/javascript"></script><script src="/resource/1536978496000/AGN_AMI_Portal_Lib/lib/jquery-3.2.1.js" type="text/javascript"></script><script src="/resource/1536978496000/AGN_AMI_Portal_Lib/lib/jquery-3.2.1.min.js" type="text/javascript"></script><script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" type="text/javascript"></script><script src="/resource/1561781669000/AGN_AMI_Portal_Scripts/script/landing-page.js" type="text/javascript"></script><script src="/resource/1561781669000/AGN_AMI_Portal_Scripts/script/common.js" type="text/javascript"></script><script src="/jslibrary/1553583056220/sfdc/VFState.js" type="text/javascript"></script><link class="user" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css" /><link class="user" href="/resource/1536978496000/AGN_AMI_Portal_Fonts/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" /><link class="user" href="/resource/1536978496000/AGN_AMI_Portal_Fonts/fonts/proximanovalight/font.css" rel="stylesheet" type="text/css" /><link class="user" href="/resource/1536978496000/AGN_AMI_Portal_Fonts/fonts/ProximaNovaRegular/font.css" rel="stylesheet" type="text/css" /><link class="user" href="/resource/1561781669000/AGN_AMI_Portal_Scripts/css/landing-page.css" rel="stylesheet" type="text/css" /><link class="user" href="/resource/1561781669000/AGN_AMI_Portal_Scripts/css/common.css" rel="stylesheet" type="text/css" /><script>(function(UITheme) {
    UITheme.getUITheme = function() { 
        return UserContext.uiTheme;
    };
}(window.UITheme = window.UITheme || {}));</script></head><body><span id="j_id0:j_id1">
    <head>
<meta HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE" />
<meta HTTP-EQUIV="Expires" content="Mon, 01 Jan 1990 12:00:00 GMT" />

        <title>Allergan Medical Institute</title>
        <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
        <meta content="width=device-width, initial-scale=1" name="viewport" />
        <script type="text/javascript">
        
        function updateError()
        {
            if($("#login_err").length>0)
                $(".global-error-msg").show();
            if($("#reg_error").length>0)
                $(".duplicate-error-msg").show();
            
        }
        
        function loginValidation(ele){
            var $form = $(ele).parents('form');
            var email = $('.email-log').val();
            var pwd = $('.pwd-log').val();            
            //var emailReg = /^([[:word:]-\.]+@([[:word:]-]+\.)+[[:word:]-]{2,4})?$/;
            var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
            var inputValid = true;
            $form.find('.global-err-true').removeClass('global-err-true');
            $form.find('.form-err-msg-log').hide();
            if( email=="" ){
                $(".form-err-msg-log").show();
                $(".email-error-msg-log").hide();
                inputValid = false;
            } else if (!emailReg.test( email ) ){
                $(".form-err-msg-log").hide();
                $(".email-error-msg-log").show();
                inputValid = false;                 
            } else {
                $(".form-err-msg-log").hide();
                $(".email-error-msg-log").hide();
            }
            if( pwd == "" ){
                $(".form-err-msg-pwd-log").show();
                $(".global-error-msg").hide();
                inputValid = false;
            } else {
                $(".form-err-msg-pwd-log").hide();
                $(".global-error-msg").hide();
            }
            if( !inputValid ){
                console.log('Here');
                return false;
            } else{
                console.log('Here 1');
                localStorage.setItem('success', 'true');
                
                
                CallActionFunctionForLogin();
                
                return true;
            }
            
            
        }
        function registerValidation(ele){
            
            var $form = $(ele).parents('form');
            var regFirstName =  $('.firstname').val();
            var regSurName = $('.surname').val();
            var regEmail =  $('.email').val();
            //var regProfRegNo = $('.prn').val();
            // var emailReg = /^([a-zA-Z참여를 원하시면 등록을 클릭하세]+@([a-zA-Z참여를 원하시면 등록을 클릭하세]+\.)+[a-zA-Z참여를 원하시면 등록을 클릭하세]{2,4})?$/;
            var emailReg = /^([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?$/;
            var inputValid = true;
            $form.find('.form-err-msg').hide();
            if( regFirstName == "" ){
                $(".form-err-msg-fname").show();
                inputValid = false;
            } else {
                $(".form-err-msg-fname").hide();
            }
            if( regSurName == "" ){
                $(".form-err-msg-sname").show();
                inputValid = false;
            } else {
                $(".form-err-msg-sname").hide();
            }
            if( regEmail == "" ){
                
                $(".form-err-msg-email").show();
                $(".email-error-msg-reg").hide();
                inputValid = false;
            } else if (!emailReg.test( regEmail ) ){
                $(".form-err-msg-email").hide();
                $(".email-error-msg-reg").show();
                $(".duplicate-error-msg").hide();
                inputValid = false;                 
            } else {
                $(".form-err-msg-email").hide();
                $(".email-error-msg-reg").hide();
                $(".duplicate-error-msg").hide();
                
            }
            
            if( !inputValid ) {
                return false;
            } else{
                
                CallActionFunctionForRegister();
                
                return true;
            }            
        }
        /*function success(){
                var a=false;
                console.log('-- '+a);
                if(false){
                    debugger;
                    $(".global-error-msg").show();
                    $(".log-form-fieldset input:first + label").css({"top":"-20px","font-size": "10pt"});
                    $(".log-in-button").click(); 
                    $(".log-button").on("click",function(e){
                        $(".global-error-msg").hide();
                    });
                    $(".login-close").on("click",function(e){
                        $(".global-error-msg").hide();
                    });
                    window.history.replaceState(null, null, "?country=GB&lang=en_GB");
                }
                
                var b=false;
                console.log('-- '+b);
                if(false){
                    $(".duplicate-error-msg").show();
                    //$(".registration-form-fieldset input:first + label").css({"top":"-12px"});
                    $(".register-button").click(); 
                    $(".register-button-form").on("click",function(e){
                        $(".duplicate-error-msg").hide();
                    });
                    $(".registration-close").on("click",function(e){
                        $(".duplicate-error-msg").hide();
                    });
                    window.history.replaceState(null, null, "?country=GB&lang=en_GB");
                }
        } */   
        
        function isNumberKey(evt){
            
            var charCode = (evt.which) ? evt.which : evt.keyCode;
            if (charCode != 46 && charCode > 31 && (charCode==9 ||charCode < 48 || charCode > 57)){
                return false;
            }
            else {
                if($('.prn').val().length < 12){
                    return true;
                }
            }
            return false;
        }
        
        
        </script>
    </head>
    <body>
    <form id="form1" runat="server">
    <div>
    <div class="wrapper">
            
            <div class="banner">
                <div class="banner-wrapper">
                    <div class="carousel slide" data-ride="carousel" id="myCarousel">
                        
                        <ol class="carousel-indicators">
                            <li class="active" data-slide-to="0" data-target="#myCarousel"></li>
                            <li data-slide-to="1" data-target="#myCarousel"></li>
                            <li data-slide-to="2" data-target="#myCarousel"></li>
                        </ol>
                        
                        <div class="carousel-inner">
                            <div class="item active">
                                <video autoplay="true" class="slider-video" id="slider-first-video" muted="true" poster="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/Landing+Page+Images/3xanimation_loops_Page_1.jpg">
                                    <source src="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/LandingPageVideos/Website_loop_combined_UK-0389-2018_sept.mp4" type="video/mp4"></source> 
                                    Your browser does not support the video tag.</video>
                                <div class="banner-content-text">
                                    
                                    <p>PROFESSIONAL DEVELOPMENT <br /> <span class="landing_ptag">Developed in partnership with the most eminent specialists in their field, our curriculum encompasses the latest scientific, clinical and practice development education.</span> </p>
                                    
                                    
                                    <h3>Join our progressive, expert-led learning forum in medical aesthetics.</h3>
                                    <button class="log-in-button" data-position="bottom">
                                        <span><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/login_icon.png" class="login-button-img" />
                                        </span>
                                        LOG IN
                                    </button>
                                        <button class="register-button" data-position="bottom"><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/arrow_register.png" alt="regster" class="register-button-img" />REGISTER</button>
                                </div> 
                            </div>
                            
                            <div class="item">
                                <video autoplay="true" class="slider-video" id="slider-second-video" muted="true" poster="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/Landing+Page+Images/3xanimation_loops_Page_2.jpg">
                                    <source src="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/LandingPageVideos/AMI+DW_loop2_partnerships.mp4" type="video/mp4"></source> 
                                    Your browser does not support the video tag.</video>
                                <div class="banner-content-text">
                                    
                                    <p>PARTNERSHIP <br /> <span class="landing_ptag">Built on a foundation of working with healthcare professionals, the AMI is committed to continued engagement and long-term collaboration.</span> </p>
                                    
                                    <h3>Join our progressive, expert-led learning forum in medical aesthetics.</h3>
                                    <button class="log-in-button" data-position="bottom">
                                        <span><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/login_icon.png" class="login-button-img" />
                                        </span>
                                        LOG IN
                                    </button>
                                        <button class="register-button" data-position="bottom"><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/arrow_register.png" alt="regster" class="register-button-img" />REGISTER</button>
                                </div> 
                            </div>
                            
                            <div class="item">
                                <video autoplay="true" class="slider-video" id="slider-third-video" muted="true" poster="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/Landing+Page+Images/3xanimation_loops_Page_3.jpg">
                                    <source src="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/LandingPageVideos/AMI+DW_loop3_continued+innovation.mp4" type="video/mp4"></source>
                                    Your browser does not support the video tag.</video>
                                <div class="banner-content-text">
                                    
                                    <p>CONTINUED INNOVATION <br /> <span class="landing_ptag">Constantly innovating through services, content and programmes to deliver personalised learning formats, designed to advance knowledge and skills.</span> </p>
                                    
                                    <h3>Join our progressive, expert-led learning forum in medical aesthetics.</h3>
                                    <button class="log-in-button" data-position="bottom">
                                        <span><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/login_icon.png" class="login-button-img" />
                                        </span>
                                        LOG IN
                                    </button>
                                        <button class="register-button" data-position="bottom"><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/arrow_register.png" alt="regster" class="register-button-img" />REGISTER</button>
                                </div> 
                            </div>
                        </div>
                        
                    </div>
                    <div class="banner-header" id="sticky-header">
                        <div class="header-logo"><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/alergan-logo_old.png" alt="logo image" />
                        </div>
                        <div class="header-menus">
                            <ul class="nav-menu">
                                <li class="main-menu closed language-dropdown">
                                    <a class="main-menu-items">English</a>
                                    <ul class="sub-menu language-menu">
                                    </ul>
                                </li>
                                
                            </ul>
                        </div>
                    </div>
                    <div class="banner-content">
                        
                    </div>
                </div>
            </div>
            <div class="content-wrapper"><span id="j_id0:j_id1:j_id2:j_id41">
                    <div class="banner-learn-block">
                        <div class="banner-content-learn-block">
                            
                            
                            <div class="learn-more" style="padding-right: 30px">
                                
                                <video class="learn_more_video" controls="true" poster="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/Landing+Page+Images/UK/learn_more.png">
                                    <source src="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/LandingPageVideos/UK-0390-2018+AMI+DW+talking+head+v3.mp4" type="video/mp4"></source> 
                                    Your browser does not support the video tag.
                                </video> 
                                
                            </div>
                            <div class="virtual_tour">
                                <h3>Learn more about the AMI </h3>
                                
                                <p><b>Educational partners today. Helping change lives tomorrow.</b> <br />
                                    The Allergan Medical Institute&reg; (AMI) aims to improve patient outcomes and is founded on three key pillars: professional development, partnership and continued innovation. The AMI Digital World provides access to evidence-based, expert-led, on-demand medical education to healthcare practitioners around the world. Hear what some of our expert faculty have to say about the digital resources and training materials that the AMI provides and the value it brings to their clinical practice.
                                </p>
                                
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div></span><span id="j_id0:j_id1:j_id2:j_id43">
                    <div class="second-banner-content">
                        <div class="content-banner" style="background-image:url(/resource/1549862781000/AGN_AMI_Portal_Image/images/content-image.png)">
                        </div>
                    </div>
                    
                    <div class="banner-block">
                        <div class="banner-content-block">
                            <div class="virtual-link">
                                
                                <video class="virtual_video" controls="true" poster="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/Landing+Page+Images/UK/video-placeholder.png"> 
                                    <source src="https://s3-eu-west-1.amazonaws.com/allergan-ami-digital-assets/AMIDIGHUB/LandingPageVideos/UK-0391-2018+AMI+DW+promo+v3.mp4" type="video/mp4"></source> 
                                     Your browser does not support the video tag.
                                </video>
                                 
                            </div>
                            <div class="learn-more-link">
                                
                                <h3>Medical Education, 24/7 </h3>
                                
                                <p><b>Your personalised medical education journey, anytime, anywhere.</b> <br/> The AMI provides world-class medical education, aiming to accelerate scientific knowledge and technical skills in the field of medical aesthetics. We are dedicated to promoting excellence in clinical practice and improving patient outcomes. Explore the vast array of educational resources available to you as part of the AMI.   
                                </p>
                                
                            </div>
                            
                        </div>
                        <div class="clear"></div>
                    </div></span>
            </div>
        </div><span id="j_id0:j_id1:j_id2:j_id48">
     <script>
    
    $( document ).ready(function() {
        
        ///////////////For France About Link///////////////////
        $(".About_link").on("click",function(){
            //alert('clicked on about link internal fr...');
            var confirmationText='You will be redirected to the site www.allergan.fr';            
            //alert(confirmationText);
            var confirmation= confirm(confirmationText);
            
            if (confirmation === true) {
                window.location ='http://www.allergan.co.uk';
            } else {
                
            }
        });
        /////////////End For France About Link/////////////////////////////

        $(".Uk_link").on("click",function(){
            console.log('clicked on mhra link landing...');
            // var confirmationText='You are about to leave the Allergan site, Allergan takes no responsibility or liability for third party controlled sites.';
            var confirmationText='You are about to leave the Allergan site, Allergan takes no responsibility or liability for third party controlled sites.';
            //var confirmationText='You are about to leave the Allergan site, Allergan takes no responsibility or liability for third party controlled sites..';
            //alert('confirmationText'+confirmationText);
            var confirmation= confirm(confirmationText);
            
                if (confirmation === true) {
                window.location ='https://yellowcard.mhra.gov.uk';
            } else {
           
            }
            });
        
    });// End Document Ready
    </script>
   
        <div class="landing-page-footer" style="background-image:url(/resource/1549862781000/AGN_AMI_Portal_Image/images/footer-background.png);                                                  background-repeat: repeat-x; overflow: visible; ">
            <div class="footer-content">
                <div class="landing-page-footer-logo">
                    
                    <img alt="Footer Logo" class="footer-logo-image" src="/resource/1549862781000/AGN_AMI_Portal_Image/images/Allergan_digital_world_WO.png" />
                </div>
                <div class="landing-page-footer-links">
                    <div class="footer-links_left">
                        <ul><span id="j_id0:j_id1:j_id2:j_id48:j_id49:j_id54">
                                <li>
                                    <a href="http://allergancommunityeu.force.com/AMI/AGN_AMI_Contact_Us_Page?country=GB&amp;lang=en_GB">Contact us</a>
                                </li></span><span id="j_id0:j_id1:j_id2:j_id48:j_id49:j_id56">
                            
                                <li><span id="j_id0:j_id1:j_id2:j_id48:j_id49:j_id58">
                                            <a href="http://www.allergan.co.uk">About</a></span>
                                </li>
                                                       
                                <li>
                                </li></span>
                        </ul>
                    </div>   
                    <div class="footer-links_middle">
                        <ul><span id="j_id0:j_id1:j_id2:j_id48:j_id49:j_id73">
                                <li>
                                    <a href="http://allergancommunityeu.force.com/AMI/AGN_AMI_Privacy_Policy_Page?country=GB&amp;lang=en_GB">Privacy Policy</a>
                                </li></span><span id="j_id0:j_id1:j_id2:j_id48:j_id49:j_id75">
                                <li>
                                    <a href="http://allergancommunityeu.force.com/AMI/AGN_AMI_TnC_Page?country=GB&amp;lang=en_GB">Terms &amp; Conditions</a>
                                </li></span>
                        </ul>
                    </div>
                    <div class="footer-links_right">
                        <ul><span id="j_id0:j_id1:j_id2:j_id48:j_id49:j_id82">
                            <li class="report">Adverse events should be reported. Reporting forms and information can be found at 
<span class="AE_link Uk_link ">https://yellowcard.mhra.gov.uk</span> Adverse events should also be reported to Allergan Ltd. 
<a class="AE_link" style="text-decoration: underline !important; color: yellow; cursor: pointer;" href="mailto: UK_Medinfo@allergan.com">UK_Medinfo@allergan.com</a> or 01628 494 026.
                            </li></span>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="page-zinc-number internal-zinc-number">UK/0403/2018 Date of preparation January 2019</div>
            <div class="zinc-number internal-zinc-number external-zinc-number" style="padding-left: 2vw;padding-top: -50%;">UK/0403/2018d Date of preparation January 2019</div>
        </div></span>
        <div class="full-container">
            <div class="login-form-wrapper">
                <div class="top-arrow"><span></span></div>
                <div class="login-close"><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/icon-close-popup-white.png" /></div>
<form id="j_id0:j_id1:j_id2:j_id94" name="j_id0:j_id1:j_id2:j_id94" method="post" action="/AGN_AMI_Landing_Page" class="login-form" enctype="application/x-www-form-urlencoded">
<input type="hidden" name="j_id0:j_id1:j_id2:j_id94" value="j_id0:j_id1:j_id2:j_id94" />
<span id="j_id0:j_id1:j_id2:j_id94:LoginForm">
                        <h2 class="login-head">Continue my learning</h2>
                        <div class="log-form-fieldset">
                            <div class="fieldset-log"><input id="j_id0:j_id1:j_id2:j_id94:e-mail-login" type="text" name="j_id0:j_id1:j_id2:j_id94:e-mail-login" value="" class="email-log" placeholder="Email" />
                                <span class="form-err-msg-log">This field is mandatory</span>
                                <span class="email-error-msg-log">Invalid mail id</span>
                            </div>
                            <div class="fieldset-log"><input id="j_id0:j_id1:j_id2:j_id94:password-login" type="password" name="j_id0:j_id1:j_id2:j_id94:password-login" value="" class="pwd-log" placeholder="Password" />
                                <span class="form-err-msg-pwd-log">This field is mandatory</span>
                            </div>
                        </div>
<script type="text/javascript" language="Javascript">function dpf(f) {var adp = f.adp;if (adp != null) {for (var i = 0;i < adp.length;i++) {adp[i].parentNode.removeChild(adp[i]);}}};function apf(f, pvp) {var adp = new Array();f.adp = adp;var ps = pvp.split(',');for (var i = 0,ii = 0;i < ps.length;i++,ii++) {var p = document.createElement("input");p.type = "hidden";p.name = ps[i];p.value = ps[i + 1];f.appendChild(p);adp[ii] = p;i += 1;}};function jsfcljs(f, pvp, t) {apf(f, pvp);var ft = f.target;if (t) {f.target = t;}f.submit();f.target = ft;dpf(f);};</script>
<a href="#" onclick="var a=function(){loginValidation(this); return false;if(window != window.top){var f = document.getElementById('j_id0:j_id1:j_id2:j_id94');f.action += (f.action.indexOf('?') == -1 ? '?' : '&amp;');};};var b=function(){if(typeof jsfcljs == 'function'){jsfcljs(document.getElementById('j_id0:j_id1:j_id2:j_id94'),'j_id0:j_id1:j_id2:j_id94:j_id98,j_id0:j_id1:j_id2:j_id94:j_id98','');}return false};return (a()==false) ? false : b();" class="log-button">LOG IN
                            <span><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/arrow.png" class="login-form-button-img" /></span></a><script id="j_id0:j_id1:j_id2:j_id94:j_id102" type="text/javascript">CallActionFunctionForLogin=function(){A4J.AJAX.Submit('j_id0:j_id1:j_id2:j_id94',null,{'similarityGroupingId':'j_id0:j_id1:j_id2:j_id94:j_id102','oncomplete':function(request,event,data){updateError();},'parameters':{'j_id0:j_id1:j_id2:j_id94:j_id102':'j_id0:j_id1:j_id2:j_id94:j_id102'} } )};
</script>
                        <span class="global-error-msg" style="display:none;">Invalid Credentials</span><span id="j_id0:j_id1:j_id2:j_id94:errorMsg"></span>
                        <p class="trouble-loging"><a href="#" style="text-decoration: none" onclick="if(typeof jsfcljs == 'function'){jsfcljs(document.getElementById('j_id0:j_id1:j_id2:j_id94'),'j_id0:j_id1:j_id2:j_id94:j_id107,j_id0:j_id1:j_id2:j_id94:j_id107','');}return false">
                                Trouble signing in?</a></p></span><div id="j_id0:j_id1:j_id2:j_id94:j_id136"></div>
</form><span id="ajax-view-state-page-container" style="display: none"><span id="ajax-view-state" style="display: none"><input type="hidden"  id="com.salesforce.visualforce.ViewState" name="com.salesforce.visualforce.ViewState" value="i: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" /><input type="hidden"  id="com.salesforce.visualforce.ViewStateVersion" name="com.salesforce.visualforce.ViewStateVersion" value="201907182023160050" /><input type="hidden"  id="com.salesforce.visualforce.ViewStateMAC" name="com.salesforce.visualforce.ViewStateMAC" value="AGV5SnViMjVqWlNJNkluSTVkV0p5WkROdk0wOTNVRU5xZGs4Mk5tRkVkVEZZTkUweFZXZENiMnAxWjNGTFNWYzFRamhaVUVWY2RUQXdNMlFpTENKMGVYQWlPaUpLVjFRaUxDSmhiR2NpT2lKSVV6STFOaUlzSW10cFpDSTZJbnRjSW5SY0lqcGNJakF3UkRJME1EQXdNREF3Y0hZM1pWd2lMRndpZGx3aU9sd2lNREpITVc4d01EQXdNREEwYkRNeVhDSXNYQ0poWENJNlhDSjJabk5wWjI1cGJtZHJaWGxjSWl4Y0luVmNJanBjSWpBd05URnZNREF3TURBNWVtbzFSRndpZlNJc0ltTnlhWFFpT2xzaWFXRjBJbDBzSW1saGRDSTZNVFUyTXpVek16WTNNemszT0N3aVpYaHdJam93ZlE9PS4ucHIzYllwNGl5QkhmWHhFb19kRTl1V2RZcXNsZmF6emstdWRfTHBuTU5HST0=" /></span></span>
            </div>
            
            <div class="registration-form-wrapper">
                <div class="registration-close"><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/icon-close-popup-white.png" /></div>
<form id="j_id0:j_id1:j_id2:j_id113" name="j_id0:j_id1:j_id2:j_id113" method="post" action="/AGN_AMI_Landing_Page" class="registration-form" enctype="application/x-www-form-urlencoded">
<input type="hidden" name="j_id0:j_id1:j_id2:j_id113" value="j_id0:j_id1:j_id2:j_id113" />

                    <p>Register to unlock exclusive access to the full spectrum of AMI&reg; <br /> educational resources</p><span id="j_id0:j_id1:j_id2:j_id113:RegisterForm">
                        <div class="registration-form-fieldset">
                            <div class="fieldset-reg"><script> if(!window.sfdcPage) { window.sfdcPage = new ApexDetailPage(); }UserContext.initialize({"ampm":["AM","PM"],"isAccessibleMode":false,"salesforceURL":"https://eu.allerganmedicalinstitute.com?refURL=http%3A%2F%2Feu.allerganmedicalinstitute.com%2FAGN_AMI_Landing_Page","dateFormat":"M/d/yyyy","language":"en_US","locale":"en_US","dateTimeFormat":"M/d/yyyy h:mm a","isGlobalEventBusPilotEnabled":false,"labelLastModified":"1563482710000","today":"7/19/2019 10:54 AM","userPreferences":[{"index":112,"name":"HideInlineEditSplash","value":false},{"index":114,"name":"OverrideTaskSendNotification","value":false},{"index":115,"name":"DefaultTaskSendNotification","value":false},{"index":119,"name":"HideUserLayoutStdFieldInfo","value":false},{"index":116,"name":"HideRPPWarning","value":false},{"index":87,"name":"HideInlineSchedulingSplash","value":false},{"index":88,"name":"HideCRUCNotification","value":false},{"index":89,"name":"HideNewPLESplash","value":false},{"index":90,"name":"HideNewPLEWarnIE6","value":false},{"index":122,"name":"HideOverrideSharingMessage","value":false},{"index":91,"name":"HideProfileILEWarn","value":false},{"index":93,"name":"HideProfileElvVideo","value":false},{"index":97,"name":"ShowPicklistEditSplash","value":false},{"index":92,"name":"HideDataCategorySplash","value":false},{"index":128,"name":"ShowDealView","value":false},{"index":129,"name":"HideDealViewGuidedTour","value":false},{"index":132,"name":"HideKnowledgeFirstTimeSetupMsg","value":false},{"index":104,"name":"DefaultOffEntityPermsMsg","value":false},{"index":135,"name":"HideNewCsnSplash","value":false},{"index":101,"name":"HideBrowserWarning","value":false},{"index":139,"name":"HideDashboardBuilderGuidedTour","value":false},{"index":140,"name":"HideSchedulingGuidedTour","value":false},{"index":180,"name":"HideReportBuilderGuidedTour","value":false},{"index":183,"name":"HideAssociationQueueCallout","value":false},{"index":194,"name":"HideQTEBanner","value":false},{"index":270,"name":"HideIDEGuidedTour","value":false},{"index":282,"name":"HideQueryToolGuidedTour","value":false},{"index":196,"name":"HideCSIGuidedTour","value":false},{"index":271,"name":"HideFewmetGuidedTour","value":false},{"index":272,"name":"HideEditorGuidedTour","value":false},{"index":205,"name":"HideApexTestGuidedTour","value":false},{"index":206,"name":"HideSetupProfileHeaderTour","value":false},{"index":207,"name":"HideSetupProfileObjectsAndTabsTour","value":false},{"index":213,"name":"DefaultOffArticleTypeEntityPermMsg","value":false},{"index":214,"name":"HideSelfInfluenceGetStarted","value":false},{"index":215,"name":"HideOtherInfluenceGetStarted","value":false},{"index":216,"name":"HideFeedToggleGuidedTour","value":false},{"index":268,"name":"ShowChatterTab178GuidedTour","value":false},{"index":275,"name":"HidePeopleTabDeprecationMsg","value":false},{"index":276,"name":"HideGroupTabDeprecationMsg","value":false},{"index":224,"name":"HideUnifiedSearchGuidedTour","value":false},{"index":226,"name":"ShowDevContextMenu","value":false},{"index":227,"name":"HideWhatRecommenderForActivityQueues","value":false},{"index":228,"name":"HideLiveAgentFirstTimeSetupMsg","value":false},{"index":232,"name":"HideGroupAllowsGuestsMsgOnMemberWidget","value":false},{"index":233,"name":"HideGroupAllowsGuestsMsg","value":false},{"index":234,"name":"HideWhatAreGuestsMsg","value":false},{"index":235,"name":"HideNowAllowGuestsMsg","value":false},{"index":236,"name":"HideSocialAccountsAndContactsGuidedTour","value":false},{"index":237,"name":"HideAnalyticsHomeGuidedTour","value":false},{"index":238,"name":"ShowQuickCreateGuidedTour","value":false},{"index":245,"name":"HideFilePageGuidedTour","value":false},{"index":250,"name":"HideForecastingGuidedTour","value":false},{"index":251,"name":"HideBucketFieldGuide","value":false},{"index":263,"name":"HideSmartSearchCallOut","value":false},{"index":273,"name":"ShowForecastingQuotaAttainment","value":false},{"index":280,"name":"HideForecastingQuotaColumn","value":false},{"index":301,"name":"HideManyWhoGuidedTour","value":false},{"index":298,"name":"HideFileSyncBannerMsg","value":false},{"index":299,"name":"HideTestConsoleGuidedTour","value":false},{"index":302,"name":"HideManyWhoInlineEditTip","value":false},{"index":303,"name":"HideSetupV2WelcomeMessage","value":false},{"index":312,"name":"ForecastingShowQuantity","value":false},{"index":313,"name":"HideDataImporterIntroMsg","value":false},{"index":314,"name":"HideEnvironmentHubLightbox","value":false},{"index":316,"name":"HideSetupV2GuidedTour","value":false},{"index":317,"name":"HideFileSyncMobileDownloadDialog","value":false},{"index":322,"name":"HideEnhancedProfileHelpBubble","value":false},{"index":328,"name":"ForecastingHideZeroRows","value":false},{"index":330,"name":"HideEmbeddedComponentsFeatureCallout","value":false},{"index":341,"name":"HideDedupeMatchResultCallout","value":false},{"index":340,"name":"HideS1BrowserUI","value":true},{"index":346,"name":"HideS1Banner","value":false},{"index":358,"name":"HideEmailVerificationAlert","value":false},{"index":354,"name":"HideLearningPathModal","value":false},{"index":359,"name":"HideAtMentionsHelpBubble","value":false},{"index":368,"name":"LightningExperiencePreferred","value":false},{"index":373,"name":"PreviewLightning","value":false}],"networkId":"0DB1o000000848n","uiTheme":"Theme3","uiSkin":"Theme3","userName":"allergan_medical_institute_ami@allergancommunityeu.force.com","userId":"0051o000009zj5D","isCurrentlySysAdminSU":false,"renderMode":"RETRO","startOfWeek":"1","vfDomainPattern":"allerganemea--(?:[^.]+).eu14.visual.force.com","auraDomain":"allerganemea.lightning.force.com","orgPreferences":[{"index":257,"name":"TabOrganizer","value":true},{"index":113,"name":"GroupTasks","value":true}],"isDefaultNetwork":false,"timeFormat":"h:mm a"});
</script><input  class="firstname" id="j_id0:j_id1:j_id2:j_id113:first-name" maxlength="40" name="j_id0:j_id1:j_id2:j_id113:first-name" placeholder="First name" size="20" type="text" />
                                <span class="form-err-msg-fname">This field is mandatory</span>
                            </div>
                            
                            <div class="fieldset-reg"><input  class="surname" id="j_id0:j_id1:j_id2:j_id113:j_id117" maxlength="40" name="j_id0:j_id1:j_id2:j_id113:j_id117" placeholder="Surname" size="20" type="text" />
                                <span class="form-err-msg-sname">This field is mandatory</span>
                            </div>
                            <div class="fieldset-reg"><input  class="email" id="j_id0:j_id1:j_id2:j_id113:j_id119" maxlength="80" name="j_id0:j_id1:j_id2:j_id113:j_id119" placeholder="Email" size="20" type="text" />
                                <span class="form-err-msg-email">This field is mandatory</span>
                                <span class="email-error-msg-reg">Invalid mail id</span>
                                <span class="duplicate-error-msg" style="display:none;">Duplicate Email</span><span id="j_id0:j_id1:j_id2:j_id113:errorMsgReg"></span>
                            </div>
                        </div>
                        <div class="country-lang"><select name="j_id0:j_id1:j_id2:j_id113:j_id124" class="country-name" size="1">	<option value="a3L240000000UTHEA2" selected="selected">United Kingdom</option>
</select><select name="j_id0:j_id1:j_id2:j_id113:j_id126" class="lang" size="1">	<option value="en_US">English</option>
</select>  
                        </div><a href="#" onclick="var a=function(){registerValidation(this); return false;if(window != window.top){var f = document.getElementById('j_id0:j_id1:j_id2:j_id113');f.action += (f.action.indexOf('?') == -1 ? '?' : '&amp;');};};var b=function(){if(typeof jsfcljs == 'function'){jsfcljs(document.getElementById('j_id0:j_id1:j_id2:j_id113'),'j_id0:j_id1:j_id2:j_id113:j_id129,j_id0:j_id1:j_id2:j_id113:j_id129','');}return false};return (a()==false) ? false : b();" class="register-button-form">REGISTER
                            <span><img src="/resource/1549862781000/AGN_AMI_Portal_Image/images/register_img_desktop.png" class="register-form-button-img" /></span></a><script id="j_id0:j_id1:j_id2:j_id113:j_id133" type="text/javascript">CallActionFunctionForRegister=function(){A4J.AJAX.Submit('j_id0:j_id1:j_id2:j_id113',null,{'similarityGroupingId':'j_id0:j_id1:j_id2:j_id113:j_id133','oncomplete':function(request,event,data){updateError();},'parameters':{'j_id0:j_id1:j_id2:j_id113:j_id133':'j_id0:j_id1:j_id2:j_id113:j_id133'} } )};
</script></span><div id="j_id0:j_id1:j_id2:j_id113:j_id137"></div>
</form>
                <div class="bottom-arrow"><span></span></div>
            </div>  
            
        </div>
        
    </body></span>
    <div class="container" style="width: 95%; position: relative; margin: 0px auto;">
        <div class="popup_login" style="background: #035dab; z-index: 102; position: fixed; width: 100%; margin: 0px auto; left: 0px; bottom: 0px; padding: 15px 15px; display: inline-flex; color: white;">
            <div class="popup_text" style="text-align: left; position: relative; font-size: 16px;">
                By clicking "OK" I authorise Allergan, or any contracted third parties acting on its behalf, to install cookies on my browser to remember the information that I input, track how I use sections of websites, enable Allergan to remember my user custom preferences, and to tailor my access to the website per my preferences. <b class="readmore_land" style="cursor:pointer">Read more</b>
               <p></p>
               <p class="landing_readmore">
                Allergan&#8217;s websites may ask your browser to store cookies, a small piece of data, on your computer or mobile device. A cookie can be used to enable a site to remember information that you previously input. It also helps deliver content-specific information to you and tracks how sections of websites are used.
                We may also use cookies to understand your preferences and tailor your access to your preferences. Your consent is required for Allergan to remember your user details and preferences over time. If you consent, click &#8220;OK.&#8221; You can withdraw your consent by changing your browser settings to erase cookies from your computer&#8217;s hard drive, block all cookies, or receive a warning before a cookie is stored. Please check your Internet browser&#8217;s instructions to learn more about these functions. Your consent is voluntary; however, if you do not consent to cookies being installed on your browser, Allergan may not be able to provide you full access to, or all the functionality of, our websites. <b class="readless_land" style="cursor:pointer">Read less</b>                  
                </p> 
            </div>            
            <div class="popup_btn" style="text-align: center; float: left; cursor: default;">
                <div class="popup_btn_login" onclick="popupLogin();" style="border: 1px solid #f5f5f5; width: 80px; float: left; margin: auto; line-height: 27px; color: white;">
                     OK
                </div>
            </div>
        </div>
    </div>
    <script>
        function popupLogin(){
            $(".popup_login").css('display','none');
            $(".popup_login").css('z-index','-100');
            document.cookie="cookieAckg=true;";
        }
                
    //    var allcookies = document.cookie;        
    //   cookiearray = allcookies.split(';');
    //   var cookieList = [];
    //   var cookieValueList = [];
    //   for(var i=0; i<cookiearray.length; i++){
    //        cookieList[i] = cookiearray[i].split('=')[0].trim();
    //       cookieValueList[i] = cookiearray[i].split('=')[1].trim();
    //    }
    // console.log(cookieList);
    // console.log(cookieValueList);
    //   if(cookieList.indexOf("cookieAckg")>-1)
    //   {
    //     if(cookieValueList[cookieList.indexOf("cookieAckg")] == 'true' )
                //     {
    //         console.log('Cookie Present');
    //         $(".popup_login").css('display','none');
    //      $(".popup_login").css('z-index','-100');
    //     }
    //      else
    //          console.log('Cookie Absent');
    //  }
    //   else
    //   {
    //       console.log('Cookie Absent');               
    //  }
    </script><script type="text/javascript">Sfdc.onReady(function(){
	SfdcApp && SfdcApp.Visualforce && SfdcApp.Visualforce.VSManager && SfdcApp.Visualforce.VSManager.vfPrepareForms(["j_id0:j_id1:j_id2:j_id113","j_id0:j_id1:j_id2:j_id94"]);

});
    </div>
    </form>
</body>
</html>
