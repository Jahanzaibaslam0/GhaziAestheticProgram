<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationConfirmation.aspx.cs" Inherits="WebFormsEmailSMS2FA.RegistrationConfirmation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>


    </title>
    <link href="Css/bootstrap.css" rel="stylesheet" />
 
</head>


<body>

    <form id="form1" runat="server">
    
   <style>
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
    width: 20%;
    margin: auto;
    margin-top: 5%;
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
    </style>


    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <img src="Images/banner.png" class="img img-responsive banner"/>
                
            </div>
        </div>
    
    <div class="row">
        <div class="col-md-4">
            <%-- Image Tag For BARCode --%>
            <asp:Image ID="Image1" runat="server" />
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <asp:Image ID="imgBRcode" class="img img-responsive" runat="server" />

        </div>
        <div class="col-md-4"></div>
        <div class="col-md-4">
            <p class="headerText"> 
                <asp:Label runat="server" ID="lblTitle"></asp:Label>
                <asp:Label runat="server" ID="lblFName"></asp:Label>
                <asp:Label runat="server" ID="lblLName"></asp:Label>
                <%--[First Name] [Last Name]--%>
                <br>Karachi, Pakistan
                <br>5<sup>th</sup> July 2019
            </p>
        </div>
    </div>


    <div class="row">
        <div class="col-md-9">
            <h2 class="regConfirm">REGISTRATION CONFIRMATION</h2><br>
            <p class="points"><span class="imp">IMPORTANT : </span> Please bring this letter with you to the conference</p>
            <p class="points"><span class="imp">YOUR REGISTRATION : </span> We are pleased to confirm your participation to the
             <span class="lightColor"> PAADS 2019 </span>  – <span class="lightColor">2nd Aesthetic Conference </span>  12th to 14th July 2019</p>
             <p class="points"><span class="imp">NOTE : </span>  Each confirmation is for one PASS only and shall be retrieved by the concerned person on
                presentation of <span class="lightColor">valid photo ID</span></p>
            
        </div>
        <div class="col-md-3">
            <%-- Image Tag For QRCode --%>
            <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
           <asp:Image ID="imgQRcode" class="img img-responsive" runat="server" />
        </div>
    </div>

<div class="row">
    <div class="col-md-12 col-sm-12">
        <div class="tableBorder">
            <p class="imp text-center workshop2">Workshop's</p>
<br>
            <div class="row innerBorder">
                
                    <div class="col-md-2"><p class="imp option tableBorder">Hands On - Basic</p>  </div>
                    <div class="col-md-2"><p class="title tableBorder text-center">Fillers
                        <asp:Image ID="imgBasicFillersStatus" class="img img-responsive width imgCenter"  runat="server"  />
                    </p></div>
                    <div class="col-md-2"><p class="title tableBorder text-center">Toxin
                        <asp:Image ID="imgbasictoxinStatus" class="img img-responsive width imgCenter" runat="server" />
                                          </p></div>
                    <div class="col-md-3"><p class="title tableBorder text-center option">Threads Lifting
                        <asp:Image ID="imgBasicLiftingStatus" class="img img-responsive width2 imgCenter" runat="server" />
                                          </p></div>
                    <div class="col-md-3"><p class="title tableBorder text-center option">Threads Rejevenuation
                        <asp:Image ID="imgBasicThreadStatus" class="img img-responsive width2 imgCenter" runat="server" />

                                          </p></div>
                </div>
<br>
                <div class="row innerBorder">
                
                        <div class="col-md-2"><p class="imp option tableBorder">Hands On - Advance</p>  </div>
                        <div class="col-md-2"><p class="title tableBorder text-center">Fillers
                            <asp:Image ID="imgAdvanceFillerStatus" class="img img-responsive width imgCenter" runat="server" />
                        </p></div>
                        <div class="col-md-2"><p class="title tableBorder text-center">Toxin
                            <asp:Image ID="imgAdvanceToxinStatus" class="img img-responsive width imgCenter" runat="server" />
                                              </p></div>
                        <div class="col-md-3"></div>
                        <div class="col-md-3"></div>
                    </div>
    

        </div>
    </div>
</div>
<br>


<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered borderColor">
            <tr>
                <td colspan="3" class="text-center Workshop imp">Laser Course</td>
            </tr>
            <tr>
                <td class="lightColor title">Laser Course by ESCAD </td>
                <td class="text-center">
                    <asp:Image ID="imglaserStatus1" class="img img-responsive width imgBorder imgCenter" runat="server" />Yes
                </td>
                <td class="text-center">
                    <asp:Image ID="imglaserStatus2" class="img img-responsive width imgBorder imgCenter" runat="server" />No
                </td>
            </tr>
        </table>
    </div>
</div>


    <div class="row">
        <div class="col-md-12">
            <p class="venue"><span class="imp borderRight">Conference Venue</span> Movenpick Hotel, Karachi</p>
        </div>
    </div>


    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered table-condensed borderColor">
                <tr>
                    <td colspan="4" class="text-center imp Workshop">PAADS 2019 OPENING HOURS</td>
                </tr>
                <tr>
                    <td colspan="4" class="text-center title">Conference</td>
                </tr>

                <tr class="option">
                    <td></td>
                    <td class="text-center text-bold fontSize">12th July</td>
                    <td class="text-center text-bold fontSize">13th July</td>
                    <td class="text-center text-bold fontSize">14th July</td>
                </tr>

                <tr>
                        <td class="lightColor title option">Registration and badge pick-up</td>
                        <td class="text-center fontSize">7:00 am</td>
                        <td class="text-center fontSize">7:00 am</td>
                        <td class="text-center fontSize">8:00 am</td>
                    </tr>

                    <tr>
                            <td class="lightColor title option">Conference opening hours</td>
                            <td class="text-center fontSize">9:00 am</td>
                            <td class="text-center fontSize">9:00 am</td>
                            <td class="text-center fontSize">8:30 am</td>
                        </tr>
                        <tr>
                                <td class="lightColor title option">Exhibition opening hours</td>
                                <td class="text-center fontSize">9:00 am</td>
                                <td class="text-center fontSize">9:00 am</td>
                                <td class="text-center fontSize">9:00 am</td>
                            </tr>

            </table>
        </div>
    </div>


<div class="row">
    <div class="col-md-12">
        <p class="imp points">BADGE RETRIEVAL</p>
        <p class="points">You will be able to <span class="lightColor">REGISTER & PRINT</span> your badge by included on this letter, at the Registration Desk</p>
    </div>
</div>

<div class="row">
    <div class="col-md-7"><p class="infoReg">INFORMATION AND REGISTRATION CONDITIONS</p></div>
    <div class="col-md-5"></div>
</div>

<div class="row">
    <div class="col-md-12">
        <p class="points"><span class="imp">Registration Contact: </span> Email: paads2019@gmail.com or registration.paads2019@yahoo.com <br>
            Mobile: 0300-864299 Address: 18/E, 2nd Lane, Zamzama Boulevard, Fourth Floor, Phase 5, DHA, Karachi</p>


            <div class="border">
                <p>
                        This personal confirmation is valid for single use and for one person only. <br>
                        Any lost badge will have to be reprinted it at the <span class="lightColor text-bold">"HELP DESK"</span> and will be charged <span class="lightColor text-bold">PKR 1,000/-</span>  penalty fees. <br>
                        Looking forward to welcoming you in Karachi
                </p>
            </div>



    </div>
</div>

    </div>

















    </form>
</body>
</html>
