<%@ Page Title="Log in" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebFormsEmailSMS2FA.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <style>
        .borders
{
    border: 1px solid #337ab7;
    border-radius: 40px;
    padding: 20px;
}


.text-Design
{
    font-size:16px !important;
}
    </style>
    
    <div class="container">
    <div id="carousel-id" class="carousel slide slider" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carousel-id" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-id" data-slide-to="1" class=""></li>
            <li data-target="#carousel-id" data-slide-to="2" class=""></li>
            <li data-target="#carousel-id" data-slide-to="3" class=""></li>
        </ol>
        <div class="carousel-inner">
            <div class="item active">
                <img src="Images/GAP.png" />
            </div>
            <div class="item">
                <img src="Images/Yvoire.png" />
            </div>
            <div class="item">
                <img src="Images/03 Health Care.png" />
            </div>
            <div class="item">
                <img src="Images/Faculty.png" />
            </div>
            
        </div>
        <a class="left carousel-control slideArrow" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
        <a class="right carousel-control slideArrow" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
    </div>
    <br />
    <div class="container">
    <div class="borders">
            <br />
    <div class="row">
        <div class="col-md-12">
            <h1 class="login hr">Sign In</h1>
        </div>
    </div>
<br>
         <%--<asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>--%>

<%--<div class="row">
    <div class="col-md-3"></div>
    <div class="col-md-6">
        <div class="form-group">
            <div class="text-Design">
                        <asp:Label runat="server" AssociatedControlID="Email">Email</asp:Label>
        </div>
         <asp:TextBox runat="server" ID="Email" CssClass="form-control txtEmailBox" TextMode="Email" />
         <asp:RequiredFieldValidator runat="server" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The email field is required." />
    </div>
    <div class="form-group">
        <div class="text-Design">
                     <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
            </div>
           <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control txtPassBox" />
           <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
        </div>
    <div class="text-center">
     <asp:CheckBox runat="server" ID="RememberMe" />
     <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
</div>    

<asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-primary btnLogin" />
                            &nbsp;&nbsp;
<asp:Button runat="server" ID="ResendConfirm"  OnClick="SendEmailConfirmationToken" Text="Resend confirmation" Visible="false" CssClass="btn btn-primary btnLogin" />

</div>
<div class="col-md-3">

      <div style="visibility:hidden">
     <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
      </div>

</div>
</div>
<hr class="hr">
<div class="row">
    <div class="col-md-12">
        <div class="text-center">
             
            <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
            <br />
            <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a New User</asp:HyperLink>
        </div>
    </div>
</div>
</div>--%>
    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="The email field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
                        <div class="col-md-5">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <div class="checkbox">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label runat="server" AssociatedControlID="RememberMe">Remember me?</asp:Label>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10">
                            <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/Sign-In-Blue.png" runat="server" OnClick="LogIn" Width="120px" />
                            <%--<asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />--%>
                            &nbsp;&nbsp;
                            <asp:Button runat="server" ID="ResendConfirm"  OnClick="SendEmailConfirmationToken" Text="Resend confirmation" Visible="false" CssClass="btn btn-default" />
                        </div>
                    </div>
                </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Register as a new user</asp:HyperLink>
                </p>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality --%>
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                </p>
            </section>
        </div>

        <div class="col-md-4">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
            </div>
        </div>
        </div>
    </div>
</asp:Content>
