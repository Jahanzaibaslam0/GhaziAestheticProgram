<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaymentReceipt.aspx.cs" Inherits="WebFormsEmailSMS2FA.PaymentReceipt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Css/Form.css" rel="stylesheet" />
     
  <link rel="stylesheet" href='http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
<script type="text/javascript" src='http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link href="Css/index.css" rel="stylesheet" />
     <style>
        .myNav
        {
            background-image:none;
            background-color:#337ab7;
            padding:2px;  
        }
        .myMenu li a
        {
            color:white !important;
            font-size:14px;
            font-family:poppins;
        }
        .myMenu li a:hover
        {
            color:whitesmoke !important;
        }
        .myMenu
        {
            margin-top:10px;
        }
        .logo
        {
            width:35%;
        }
        @font-face {
            font-family: poppins;
            src: url('fonts/Poppins-Regular.otf');
        }
        .body-content
        {
            padding:0;
        }
        @media only screen and (max-width: 600px) {
         .navbar-brand,.logo
         {
             width:20% !important;
         }
        }

    </style>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <div class="container">

<div class="row">
    <div class="col-md-12">
        <h1 class="heading">PAYMENT RECEIPT</h1>
    </div>
</div>
<br/><br/>
<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            
            
            <asp:Label ID="lblPaymentID" runat="server" Text="Payment ID:"></asp:Label>
            <asp:Label ID="lblPaymentID1" runat="server" Text=""></asp:Label>
            
        
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            
            <asp:Label ID="lblPaydate" runat="server" Text="Payment Date:"></asp:Label>
            <asp:Label ID="lblPaymentDate" runat="server" Text=""></asp:Label>
            
        </div>
    </div>
</div>
            <div class="row">
    <div class="col-md-6">
        <div class="form-group">
            
            
            <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
            <asp:Label ID="lblName1" runat="server" Text=""></asp:Label>
            
        
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            
            <asp:Label ID="lblPmdc" runat="server" Text="PMDC #:"></asp:Label>
            <asp:Label ID="lblPmdcNo" runat="server" Text=""></asp:Label>
            
        </div>
    </div>
</div>
            <div class="row">
    <div class="col-md-6">
        <div class="form-group">
            
            
            <asp:Label ID="lblPaymentMode" runat="server" Text="PAYMENT MODE:"></asp:Label>
            <asp:Label ID="lblPaymentMode1" runat="server" Text=""></asp:Label>
            
        
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            
            <asp:Label ID="lblCity" runat="server" Text="CITY #:"></asp:Label>
            <asp:Label ID="lblCity1" runat="server" Text=""></asp:Label>
            
        </div>
    </div>
</div>



    </div>
    </form>
</body>
</html>
