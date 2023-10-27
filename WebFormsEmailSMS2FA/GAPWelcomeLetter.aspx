<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GAPWelcomeLetter.aspx.cs" Inherits="WebFormsEmailSMS2FA.GAPWelcomeLetter" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GAP WELCOME LETTER</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>

        *
{
    color: black;
    text-align:justify;
}

.ghaziLogo
{
    width: 40%;
    float: right;
}

.pra
{
    font-size: 18px;
    letter-spacing: 1px;
    font-family:Calibri;
}

.name
{
    font-size: 20px;
}

.email
{
    font-size: 15px;
}

.password
{
    font-size: 15px;
}

.webAdd
{
    font-size: 20px;
}

.row
{
    margin: 0;
    padding: 0;
}

@media screen and (max-width:640px)
{
    .ghaziLogo
    {
        width: 40%;
    }
}

        .auto-style1 {
            width: 394px;
        }

    </style>
</head>
<body>


    <form id="form1" runat="server">
    <div>


        
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-6 col-xs-6">
                <img src="GAPImage/gapLogo1.JPG"  alt="" class="img img-responsive gapLogo"/>
            </div>
            <div class="col-md-4"></div>
            <div class="col-md-4 col-sm-6 col-xs-6">
                <img src="GAPImage/Ghazi-Healthcare.png" alt="" class="img img-responsive ghaziLogo"/>
            </div>
        </div>

<br/><br/><br/>

    <div class="row">
        <div class="col-md-12">
            <p class="pra">Dated: 26<sup>th</sup> July 2019</p>
        </div>
    </div>
    <br/>

<div class="row">
    <div class="col-md-12">
        <p class="name">To, </p> 
      <p class="name">  Dr.  <asp:Label ID="lblDrName" CssClass="name" runat="server"></asp:Label>    
          <br />     Karachi, Pakistan
        </p>

        <br/><br/>
           <asp:Label runat="server" CssClass="pra">Dear Dr.</asp:Label>  <asp:Label ID="lblName" Visible="true" CssClass="name" runat="server"></asp:Label>
        <br /><br />
        <p class="pra">Ghazi HealthCare has initiated an aesthetic academic training program known as Ghazi Aesthetics Program (G.A.P™) that aims to facilitate practitioners all over Pakistan to enroll and engage with some of the leading trainers from around the world, and enhance their skills and in turn establish a premier aesthetic practice.
        <br/><br/><br/>
        
       Ghazi Aesthetics Program (G.A.P™) is the brain child of Ghazi Healthcare, which is a modular academic program that offers comprehensive training, education and knowledge sharing platform for medical professionals in aspect of practice management relying on principles of learning centers, training aids and clinical support program.  Ghazi Aesthetics Program (G.A.P™) aims to facilitate its signed up customers to such international level academic trainings within the country.
             <br/><br/><br/>
       It is, henceforth, with immense pleasure that GhaziHealthCare, through the platform of Ghazi Aesthetics Program (G.A.P™), would like to extend its warm welcome to you,  you are now registered on Ghazi Aesthetics Program (G.A.P) . Please login with your Ghazi Aesthetic Program (G.A.P™) ID using below credentials to activate your account.  </p>
        <br /><br/><br/>
        
        <p class="webAdd">Web Address: <a href='http://gap.ghazihealthcare.com/Account/Login' target="blank">gap.ghazihealthcare.com</a></p>
        <table border="1" class="auto-style1">
            <tr>
                <td>
                  &nbsp;&nbsp;  Email:
                </td>
                <td>
                 &nbsp;&nbsp;   <asp:Label ID="lblEmail" CssClass="email" runat="server" /><br />
                </td>
            </tr>
            <tr>
                <td>
                  &nbsp;&nbsp;  Password:
                </td>
                <td>
                  &nbsp;&nbsp;  <asp:Label ID="lblPassword" CssClass="password" runat="server" /> 
                </td>
            </tr>
        </table>
         <%--Email: <asp:Label ID="lblEmail" CssClass="email" runat="server" /><br />
         Password: <asp:Label ID="lblPassword" CssClass="password" runat="server" /> --%>       
<br/><br/>
<p class="pra">We look forward to have a mutually beneficial relationship with you in future.</p>
<br/>
<p class="pra">Concluding in regards,</p>
<br/>
        
        <strong style="font-size:20px">Team Ghazi Aesthetics Program (G.A.P™)</strong>
        <br />
        <strong style="font-size:20px">Ghazi Healthcare.</strong>
    </div>
</div>
    </div>


<br/><br /><br />

<div class="row">
    <div class="col-md-12 text-center">
        <span class="glyphicon glyphicon-envelope" style="color: rgb(2, 77, 161);"> </span> <asp:Label runat="server" ForeColor="Black"> gap@ghazihealthcare.com </asp:Label> 
        |&nbsp; <span class="glyphicon glyphicon-globe" style="color: rgb(2, 77, 161);"> </span> <a href='http://gap.ghazihealthcare.com' style="color:black" target="_blank" > gap.ghazihealthcare.com </a> 
    </div>
</div>
        <br />
<div class="row">
    <div class="col-md-12 text-center" style="background-color: #024DA1">
        <br />
        
        </div>
    </div>


</div>
    </form>
</body>
</html>

