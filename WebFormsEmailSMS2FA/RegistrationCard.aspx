<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationCard.aspx.cs" Inherits="WebFormsEmailSMS2FA.RegistrationCard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <style type="text/css">
    #backImg1
{
     background-image: url('images/a.jpg');
    background-repeat: no-repeat;
    background-size: cover;
    /* background-color: black; */
    width: 400px;
    height: 300px;
    margin-top:2%;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.658);
  transition: 0.3s;
  border-radius: 20px;
    /* border: 1pt solid black; */
}
    </style>
    <style type="text/css" media="print">
    @page 
    {
        size: auto;   /* auto is the initial value */
        margin: 0mm;  /* this affects the margin in the printer settings */
    }
    .card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
  border-radius: 5px;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

img {
  border-radius: 5px 5px 0 0;
}

.container {
  padding: 2px 16px;
}
body {
  margin:0px;
}
.id-card-wrapper {
  height: 100vh;
  width:100%;
  background-color: #122023;
  display: flex;
}
.id-card {
  flex-basis: 100%;
  max-width: 30em;
  border: 2px solid #0AE0DF;
  margin: auto;
  color: #fff;
  padding: 1em;
}

.profile-row {
  display: flex;
}
.profile-row .dp {
  flex-basis: 33.3%;
  position: relative;
  margin: 24px;
  align-self: center;
}
.profile-row .desc {
  flex-basis: 66.6%;
}

.profile-row .dp img {
  max-width: 100%;
  border-radius: 50%;
  display: block;
}
.profile-row .desc {
  padding: 1em;
}

.profile-row .dp .dp-arc-inner {
  position: absolute;
  width: 100%;
  height: 100%;
  border: 6px solid transparent;
  border-top-color: #0AE0DF;
  border-radius: 50%;
  top: -6px;
  left: -6px;

  animation-duration: 2s;
  animation-name: rotate-clock;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}
@keyframes rotate-clock {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(360deg);
  }
}
.profile-row .dp .dp-arc-outer {
  position: absolute;
  width: calc(100% + 12px);
  height: calc(100% + 12px);
  border: 6px solid transparent;
  border-bottom-color: #0AE0DF;
  border-radius: 50%;
  top: -12px;
  left: -12px;

  animation-duration: 2s;
  animation-name: rotate-anticlock;
  animation-iteration-count: infinite;
  animation-timing-function: linear;
}
@keyframes rotate-anticlock {
  from {
    transform: rotate(0deg);
  }
  to {
    transform: rotate(-360deg);
  }
}

.profile-row .desc {
  font-family: 'Orbitron', sans-serif;
  color: #a4f3f2;
}
.profile-row .desc h1 {
  margin: 0px;
}
</style>
    </head>
<body>
    <form id="form1" runat="server">
   <%-- <form id="form1" runat="server">--%>

        

<link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet"> 


        
      
      
        <br />
        <br />
        

        <div class="container">
                <div id="backImg1">
                    <div class="row">
                        <div class="col-md-4"></div>
                    <div class="col-md-7" style="margin-left: 7pt; border-radius: 0pt 0pt 35pt 35pt; background-color:darkolivegreen">
                    <div style="padding: 5pt; color: white; text-align: center; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif; font-size: 15pt; font-weight: 600" >
                        <asp:Label ID="lblVisitorType" runat="server" Text="VisitiorType:"></asp:Label></div>
                    </div>
                </div>
        <br />        
                <div class="row">
                    <div class="col-md-4">
                        <asp:Image ID="Image1" runat="server"  style="width: 150px; height:125px;  padding:0px 25px" />
                    </div>
                    <div class="col-md-8">
                        
                        ID: <asp:Label ID="lblID" runat="server" Text="Registration ID:"></asp:Label><br />
                        <b>Name:  <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label></b><br />
                        <%--<p><asp:Label ID="Label2" runat="server" Text="Status:"></asp:Label><asp:Label ID="lblStatus" runat="server" Text="Status:"></asp:Label></p> --%>
                        
                       Reg Date: <asp:Label ID="lblDate" runat="server" Text="Registration Date:"></asp:Label>
                    </div>
                </div>
                
                <div class="row">
                    <div class="col-md-8"></div>
                    <div class="col-md-1"  >
                        <asp:PlaceHolder id ="Qrcodeph" runat="server"  ></asp:PlaceHolder>
                    </div>
                </div>
                </div>
                </div> 
        


    <%--    </form>--%>
    </form>
</body>
</html> 


    <%--<asp:Label ID="Label1" runat="server" Text="Label" style="z-index: 1; left: 200px; top: 580px; position: absolute;"></asp:Label>
    <img alt="Certificate" src="/Images/MasterCertificate.jpg" style="width:700px;height:1000px;"/>--%>
