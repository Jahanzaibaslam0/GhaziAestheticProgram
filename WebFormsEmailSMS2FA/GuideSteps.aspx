<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuideSteps.aspx.cs" Inherits="WebFormsEmailSMS2FA.GuideSteps" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .conReg
{
    border-bottom: 1px solid #337ab7;
    padding: 5px;
    font-weight: bold;
    letter-spacing: 1px;
}

.ssImg
{
    border: 1px solid #337ab7;
}

.steps
{
    font-size: 17px;
    padding: 12px;
}

.sstep
{
    font-weight: bold;
    text-decoration: underline;
}
    </style>


    <div class="container">
<div class="row">
    <div class="col-md-12">
        <h1 class="conReg text-center">Conference Registration in Following Steps</h1>
    </div>
</div>

<br>
<div class="row">
    <div class="col-md-12">
<p class="steps"><span class="sstep">Step 1:</span> Fill the Conference Registration Form, Email Us to get your copy <a href="RegistrationForm.aspx">Click Here to Get Registered</a></p>
<p class="steps">i- Conference Registration- This is Mandatory and with this you get access to lecture halls and exhibitor areas. All participants with BDS or MBBS qualification are eligible to apply <br>
    The base fee for conference is PKR 10,000/- <br>ii- Select Your Options   </p>
</div>
</div>

<div class="row">
    <div class="col-md-12">

        <img src="Images/ss1.PNG" class="img img-responsive ssImg"/>
</div>
</div>

<div class="row">
    <div class="col-md-12">
        <p class="steps"><span class="sstep">Step 2:</span>  Do your Total, and send us your form by email </p>
    
    
        <p class="steps"><span class="sstep">Step 3:</span> Your form would be validated </p>
        <p class="steps"><span class="sstep">Step 4:</span> Submit Your Fee By Online Deposit, Pay order or Bank Draft
            </p>
   
                <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-7">
                            <img src="Images/ss2.PNG" class="img img-responsive ssImg" />
                </div>
                <div class="col-md-2"></div>
            </div>
         
             <p class="steps"><span class="sstep">Step 5:</span> Email to us copy and courier the original in case of Pay Order or Bank Draft  along with original filled and signed form 
        </p> 

        <div class="row">
                <!-- <div class="col-md-4"></div> -->
                <div class="col-md-12">
            <img src="Images/ss3.PNG" class="img img-responsive ssImg" />
        </div>
        <!-- <div class="col-md-4"></div> -->
    </div>

        <p class="steps">      
               <span class="sstep">Step 6:</span>  Payment Confirmation 
            </p> 
            <p class="steps"><span class="sstep">Step 7:</span> Registration Complete 
                
        </p>

    </div>
</div>

</div>

</asp:Content>
