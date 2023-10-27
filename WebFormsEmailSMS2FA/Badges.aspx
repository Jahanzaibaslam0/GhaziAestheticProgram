<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Badges.aspx.cs" Inherits="WebFormsEmailSMS2FA.Badges" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <%--<link href="Css/Form.css" rel="stylesheet" />--%>
     
  <%--<link rel="stylesheet" href='http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
    media="screen" />
<script type="text/javascript" src='http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript" src='http://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
    <link href="Css/index.css" rel="stylesheet" />--%>
    
       <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
 
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image2.ClientID%>').prop('src', e.target.result)
                    .width(200)
                    .height(200);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
    <style>
.paadsImg
{
    margin: auto;
}

.date
{
    text-align: center;
    font-weight: bold;
    border-top: 1px solid #2e69b5;
    border-bottom: 1px solid #2e69b5;
    padding: 10px;
}

.userProfile
{
    border: 1px solid #2e69b5;
    height: 140px;
    width: 180px;
    margin: auto;
}

.name
{
    text-align: center;
    font-weight: bold;
}

.list
{
    list-style: none;
    font-weight: bold;
    font-size: 16px;
}

.barcode
{
    border: 1px solid #2e69b5 !important;
    height: 60px;
    width: 200px;
}

.qrCode
{
    border: 1px solid #2e69b5 !important;
    height: 100px;
    width: 220px;
    float: right;
}
.barcodefont1 
{
font-family: "IDAutomation2D", "IDAutomation2D N5", "IDAutomation2D XLS", "IDAutomationPDF417n3", "IDAutomationPDF417n5", "IDAutomation2D S";
font-size: 200%; 
}
@font-face 
{ 
        font-family:inherit; src: url('IDAutomationHC39M.TTF'); 
} 
h3 {
font-family:IDAutomationHC39M 
 }
        

</style>
</head>
<body>
    
    <div class="container">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5">
                <img src="Images/banner.png" alt="" class="img img-responsive paadsImg">
                <h2 class="date">Sunday 14<sup>th</sup> July, 2019</h2>

                <%--<img src="" alt="User Image" class="img img-responsive userProfile">--%>
                <asp:Image ID="Image2"  CssClass="img img-responsive userProfile"  runat="server" />
                <div class="text-center">
                    <asp:Label ID="lblCompany"  runat="server" Text="Label"></asp:Label>
                    <br />
                <asp:Label ID="lblFName"   runat="server" Text="Label"></asp:Label>
                <asp:Label ID="lblLName"  runat="server" Text="Label"></asp:Label>
                <br />
                <asp:Label ID="lblCity"  runat="server" Text="Label"></asp:Label>
                    </div>
                
                
                <br>
            <div class="row">
                <div class="col-md-8">
                    <ul class="list">
                        <li>Basic Workshop</li>
                        <li>Advance Workshop</li>
                    </ul>
                            <asp:Image ID="imgBRcode" class="img img-responsive" runat="server" />
                            <div class="h3">
                            <asp:PlaceHolder ID="PlaceHolder1"  runat="server"></asp:PlaceHolder>
                            </div>
                </div>
                <div class="col-md-4">
                    <%--<img src="" alt="QRCode" class="img img-responsive qrCode">--%>
                    <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                </div>
            </div>
                
            </div>
            <div class="col-md-3"></div>
        </div>
    </div>








</body>
</html>
<%--    <style>

.imgSet1
{
    border: 1px solid black !important;
    width: 200px !important;
    
}
.row1
{
    margin-right: -15px;
    margin-left: 250px;
    
}
.banner
{
    width: 100%;
}

.regConfirm
{
    text-align: center;
    padding: 10px;
    font-weight: bold;
    color: #ae226f;
    border-top: 3px solid #ae226f;
    border-bottom: 3px solid #ae226f;
}

.imp
{
    color: #ae226f;
    font-weight: bold;
}

.points
{
    font-size: 16px;
}

.lightColor
{
    color: #6f7cd0;
}

.imgCenter
{
    width: 50%;
    margin: auto;
    margin-top: 1%;
}

.imgCenter2
{
    width: 10%;
    margin: auto;
    margin-top: 2%;
}
.width
{
    width: 25%;
    
}

.borderColor tr td
{
    border: 3px solid #7c7f87 !important;
}

.option
{
    background-color: #d6e1f0;
    font-size: 16px;
}

.option2
{
    background-color: #d3d3d3;
}

.headings
{
    font-weight: bold;
    font-size: 15px;
}

.Workshop
{
    font-size: 20px;
}

.title
{
    font-size: 15px;
}

.fontSize
{
    font-size: 15px;
}


.borderRight
{
    border-right: 1px solid #ae226f;
    padding-right: 20px;
}

.venue
{
    font-size: 16px;
}

.text-bold
{
    font-weight: bold;
}

.infoReg
{
    padding: 10px;
    background-color: #316bb3;
    font-size: 22px;
    text-align: center;
    color: white;
}

.border
{
    border: 1px solid black;
    padding: 5px;
}

.crossWidth
{
    width: 5%;
    margin: auto;
    margin-top: 2%;
}

.width2
{
    width: 25px;
    
}

/* second table */

.tableBorder
{
    border: 3px solid #7c7f87;
    padding: 10px;
}

.workshop2
{
    font-size: 20px;
    border-bottom: 2px solid #7c7f87;
    padding: 5px;
}

.innerBorder
{
    border: 4px solid gainsboro;
    padding: 15px;
    padding-bottom: 2px;
    width: 98%;
    margin: auto
}

.imgBorder
{
    border: 1px solid black;
    padding: 5px;
    margin: auto;
}
        .auto-style1 {
            margin-bottom: 15px;
            margin-left: 400px;
        }
        .auto-style2 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 60%;
            left: 0px;
            top: 0px;
            margin-left: 360px;
            padding-left: 15px;
            padding-right: 15px;
        }

        .heading
{
    text-align: center;
    font-family: Arial;
    font-weight: bold;
    letter-spacing: 2px;
    font-size: 25px;        
    border-bottom: 1px solid #ddd;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    
    <div class="container">
        <div class="row1">
            <div class="col-md-12  imgCenter">
                <asp:Image ID="Image1"  Width="600px" ImageUrl="~/Images/banner.png" runat="server" />
               
                 <h1 class="heading">Sunday 14th July,2019</h1>

            </div>
        </div>
        
     
        <div class="row">
            <div class="col-md-12">
                <div class="form-group imgCenter2">
                <asp:Image ID="Image2"  CssClass="img img-responsive imgSet1"  runat="server" />
                    <br />
                    <br />
                    <asp:Label ID="lblFName" runat="server" Text="FirsName" ></asp:Label>
                    <asp:Label ID="lblLName" runat="server" Text="LastName"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblCompany"  runat="server" Text="GhaziBrothers" ></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="lblCity"   runat="server" Text="Karachi" ></asp:Label>
                    </div>
               
           </div>
        </div>
        
        <div class="row">
            <div class="col-md-12">
                <div class="auto-style1">
                        <ul>
                        <li style="font-size:small" >Basic Workshop</li>
                        <li style="font-size: small">Advance Workshop</li>
                       </ul>
                
                </div>
                </div>
            
           </div>
        <div class="row">
            <div class="auto-style2">
                <asp:Image ID="imgBRcode" class="img img-responsive" runat="server" />
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                </div>
            
           </div>
               
                    
                    

               
        </div>
    
    </form>
</body>
</html>--%>
