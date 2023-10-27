<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default12.aspx.cs" Inherits="WebFormsEmailSMS2FA.WebForm2" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=12.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>


<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - PAADS REGISTRATION FORM</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>


<%--<asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

</head>--%>
<body>
    <form runat="server">
        <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see http://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="respond" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>

        <div class="navbar navbar-default navbar-fixed-top" style="background-color: #f6a1dd !important;">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" style="color: white" runat="server" href="~/">PAADS REGISTRATION</a>
                </div>
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a runat="server" style="color: white" href="~/">Home</a></li>
                        <li><a runat="server" style="color: white" href="~/About">About</a></li>
                        <li><a runat="server" style="color: white" href="~/Contact">Contact</a></li>
                        <li><a runat="server" style="color: white" href="~/PaymentDetails">Payment Details</a></li>
                        <li><a runat="server" style="color: white" href="~/Registration">Payment Details</a></li>
                    </ul>
                    <asp:LoginView runat="server" ViewStateMode="Disabled">
                        <AnonymousTemplate>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a runat="server" href="~/Account/Register">Register</a></li>
                                <li><a runat="server" href="~/Account/Login">Log in</a></li>
                            </ul>
                        </AnonymousTemplate>
                        <LoggedInTemplate>
                            <ul class="nav navbar-nav navbar-right">
                                <li><a runat="server" href="~/Account/Manage" title="Manage your account">Hello, <%: Context.User.Identity.GetUserName()  %> !</a></li>
                                <li>
                                    <%--<asp:LoginStatus runat="server" LogoutAction="Redirect" LogoutText="Log off" LogoutPageUrl="~/" OnLoggingOut="Unnamed_LoggingOut" />--%>
                                </li>
                            </ul>
                        </LoggedInTemplate>
                    </asp:LoginView>
                </div>
            </div>
        </div>
        <%--<div class="container body-content">--%>
            <div class="container" style="width: 75%; height: 25%;">
                <h2>Carousel Example</h2>
                <div id="myCarousel" class="carousel slide" data-ride="carousel" style="width: 100%; height: 10%;">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">

                        <div class="item active">
                            <img src="Images/Slider.jpg" alt="Sebamed" style="width: 100%; height: 50%;">
                            <div class="carousel-caption">
                                <h3>Sebamed</h3>
                                <p>Sebamed Product Range</p>
                            </div>
                        </div>

                        <div class="item">
                            <img src="Images/Yvoire.png" alt="Yvoire" style="width: 100%; height: 50%;">
                            <div class="carousel-caption">
                                <h3>Yvoire</h3>
                                <p>Yvoire Product Range</p>
                            </div>
                        </div>

                        <div class="item">
                            <img src="Images/GHC.png" alt="Ghazi Health Care" style="width: 100%; height: 50%;">
                            <div class="carousel-caption">
                                <h3>Ghazi Health Care</h3>
                                <%--<p>Ghazi Health Care</p>--%>
                            </div>
                        </div>



                    </div>

                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        <%--</div>--%>
        <div class="row">
            <div class="col-md-4">
                <h2>2nd PAADS Aesthetic Conference 2019</h2>
                <p>
                    Laser Course by European Society for Cosmetic and Aesthtic Dermatology-ESCAD.<br />
                    Held in July 12 to July 14 2019.Register your self as soon as possible Registration till 5th July due to limited seats.
                </p>
                <p>
                    <%--<a class="btn btn-default" href="RegistrationForm.aspx">Registration</a>--%>
                    <asp:Button ID="btnRegistration1"  Width="150px"  Text="Registration" runat="server"  PostBackUrl="~/RegistrationForm.aspx" />

                    <asp:Button ID="btnRegistrationUpdate1" CssClass="login100-form-btn" Width="150px"   Text="Update Registration" runat="server" PostBackUrl="~/UpdateRegistrationForm.aspx" />
                    <%--<asp:LinkButton ID="lbtnRegistration" runat="server" PostBackUrl="~/RegistrationForm.aspx" >Registration</asp:LinkButton>
                    <asp:LinkButton ID="lbtnRegistrationUpdate" runat="server" PostBackUrl="~/UpdateRegistrationForm.aspx">RegistrationUpdate</asp:LinkButton>--%>
                    <br />
                    <asp:Label ID="lblText" runat="server" Text="Label"></asp:Label>
                </p>
            </div>

        </div>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="356px" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="1299px">
            <LocalReport ReportPath="Report\Report3.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="SqlDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WorkshopRegistrationConnectionString %>" SelectCommand="SELECT [FirstName], [LastName], [Speciality], [Qualification], [City], [PMDC], [CNIC], [VisitorType], [Email], [Status] FROM [UserRegistrationDetail]"></asp:SqlDataSource>

        <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> - Business Solution</p>
        </footer>

    </form>
</body>
</html>




<%--<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Carousel Example</h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="Images/Sebamed.png" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
          <h3>Los Angeles</h3>
          <p>LA is always so much fun!</p>
        </div>
      </div>

      <div class="item">
        <img src="Images/Yvoire.png" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
          <h3>Chicago</h3>
          <p>Thank you, Chicago!</p>
        </div>
      </div>
    
      <div class="item">
        <img src="Images/GHC.png" alt="New York" style="width:100%;">
        <div class="carousel-caption">
          <h3>New York</h3>
          <p>We love the Big Apple!</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div class="row">
        <div class="col-md-4">
            <h2>2nd PAADS Aesthetic Conference 2019</h2>
            <p>
                Laser Course by European Society for Cosmetic and Aesthtic Dermatology-ESCAD.<br />
                Held in July 12 to July 14 2019.Register your self as soon as possible Registration till 5th July due to limited seats.
            </p>
            <p>
                <a class="btn btn-default" href="RegistrationForm.aspx">Registration</a>
            </p>
        </div>
    


</body>
</html>--%>
