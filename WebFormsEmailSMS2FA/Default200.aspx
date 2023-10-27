<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default200.aspx.cs" Inherits="WebFormsEmailSMS2FA._Default" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <style> 
        .borderBox
{
    border: 2px solid #337ab7;
    border-radius: 5px;
    padding: 5px;
    background-color: grey;
}

.activeColor
{
    background-color:lightskyblue !important;
        /*aqua !important;*/
         /*rgb(71, 202, 71) !important;*/
}

.relatePic
{
    width: 14%;
    margin-top: -2%;
    margin-left: -8%;
}

.FormSubmit
{
    font-weight: bold;
    font-size: 15px;
}

@media only screen and (max-width: 600px) {
    .relatePic {
      margin-left: -6%;
      width: 14%;
      margin-top: -2.2%;
    }
  }


.form-arrow
{
    margin-left: 45%;
}
    </style>    


    <div id="myModal" class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-body">
                            <img src="Images/Facebook%20Event%20Post%20Opt%2002.png" class="img img-responsive" />
                        </div>
                        <div class="modal-footer">
                                <button type="button" class="btn btn-primary btn-block btnClose" data-dismiss="modal">Close</button>
                            </div>
                    </div>
                </div>
            </div>
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
    <br>
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="panel panel-primary">
                    <div class="panel-heading heading" >Ghazi Aesthetic Program</div>
                        <div class="panel-body"><p class="desc"> Laser Course by European Society for Cosmetic and Aesthetic Dermatology-ESCAD.<br />
                            Held in July 12 to July 14 2019.Register yourself as soon as possible Registration till 5th July due to limited seats.</p></div>
                              <asp:Button ID="btnRegister" CssClass="btn btn-primary btn-block" runat="server" Text="Register Now" PostBackUrl= "~/RegistrationForm.aspx" />
                                <asp:Button ID="btnUpdateRegister" CssClass="btn btn-primary btn-block" runat="server" Text="Download Registration Form" PostBackUrl= "~/UpdateRegistrationForm2.aspx" />
                      </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-4">



            <div id="submitborder" class="borderBox" runat="server">
            <img id="submitImage" runat="server" src="Images/submit.png" alt="" class="img img-responsive relatePic" align="left">
            <p id="submitPara" runat="server" class="FormSubmit text-center"><img id="PercentageImg25" runat="server" src="Images/25.jpg" alt="" class="img img-responsive relatePic" align="right">Form Submitted</p>
                
          </div>
          <img src="Images/download.png" alt="" class="img img-responsive form-arrow">


          <div id="formvalidateborder" runat="server" class="borderBox">
            
            <img id="formvalidateimage" runat="server" src="Images/checked.png" alt="" class="img img-responsive relatePic" align="left">
            <p id="formvalidatepara" runat="server" class="FormSubmit text-center"><img id="PercentageImg50" runat="server" src="Images/50.jpg" alt="" class="img img-responsive relatePic" align="right">Form Validation</p>
          </div>
          <img src="Images/download.png" runat="server" alt="" class="img img-responsive form-arrow">

          <div id="paymentborder" runat="server" class="borderBox">
            
            <img id="paymentImage" runat="server" src="Images/credit-card.png" alt="" class="img img-responsive relatePic" align="left">
            <p id="paymentpara" runat="server" class="FormSubmit text-center"><img id="PercentageImg75" runat="server" src="Images/75.jpg" alt="" class="img img-responsive relatePic" align="right">Payment Submitted & Confirmation</p>
          </div>
          <img src="Images/download.png" alt="" class="img img-responsive form-arrow">

          <div id="completeborder" runat="server" class="borderBox">
            
            <img id="completeimage" runat="server" src="Images/complete.png" alt="" class="img img-responsive relatePic" align="left">
            <p id="completepara" runat="server" class="FormSubmit text-center"><img id="PercentageImg100" runat="server" src="Images/100.jpg" alt="" class="img img-responsive relatePic" align="right">Registration Complete</p>
          </div>





        </div>
        <%--<div class="col-md-1"></div>--%>
        </div>

        
    
</div>

</asp:Content>
