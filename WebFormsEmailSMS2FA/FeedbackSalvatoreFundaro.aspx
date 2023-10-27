<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FeedbackSalvatoreFundaro.aspx.cs" Inherits="WebFormsEmailSMS2FA.FeedbackSalvatoreFundaro" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>GAP FEEDBACK FORM</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="./main.css">

<style>
.yvoire
{
    width: 30%;
    margin: auto;
    margin-top: 12%;
}

.logo
{
    margin: auto;
    margin-top: 4%;
    width: 30%;
}

.gapLogo
{
    text-align: center;
    font-weight: bold;
    font-size: 40px;
    margin-top: -2%;
    letter-spacing: 2px;
    color: #034ea2;
}

.colorChange
{
    color: #457abb;
}

.gapAbbr
{
    text-align: center;
    border-top: 1px solid #337ab7;
    border-bottom: 1px solid #337ab7;
    margin-top: -3%;
    letter-spacing: 2px;
}

.feedback
{
    font-weight: bold;
    letter-spacing: 1px;
    border-bottom: 1px solid black;
}

.pra
{
    letter-spacing: 0.5px;
}

.facial
{
    font-weight: bold;
}

.arrow
{
    margin-top: 3%;
    width: 550px;
    height: 10px;
}

.borderColor
{
    background-color: #0a72ba;
}

.bgColor1,.bgColor2,.bgColor3,.bgColor4,.bgColor5
{
    font-size: 12px;
    color: white;
}

.bgColor1
{
    background-color: #c2cfea;
    
}

.bgColor2
{
    background-color: #a2b8df;
}

.bgColor3
{
    background-color: #7a9cd1;
    
}

.bgColor4
{
    background-color: #5185c5;
    
}

.bgColor5
{
    background-color: #0a72ba;
}


.tableData tr td
{
    border: 1px solid #034ea2 !important;
}   

.question
{
    font-size: 16px;
    font-weight: bold;
}

.bordered
{
    border: 1px solid #034ea2;
    padding: 10px;
}

.pra2
{
    color: grey;
    font-size: 12px;
}


@media only screen and (max-width: 600px) {
    .yvoire
    {
        margin-top: -30px;
        
    }
  }

</style>
</head>
<body>
    <form runat="server">
        <div class="container">
        <div class="row">
            <div class="col-md-12">
                <img src="GAPImage/G.A.PT Feed Back-Fundaro-2.png" alt="Ghazi-Healthcare" class="img img-responsive"/>
               <%-- <img src="Images/Ghazi-Healthcare%20200%20x%20200%20px.png" alt="Ghazi-Healthcare" class="img img-responsive logo"/>--%>
            </div>
            <%--<div class="col-md-6">
                <img src="Images/Yvoire.png" alt="Yvoire" class="img img-responsive yvoire" />
            </div>
        </div>


    <div class="row">
        <div class="col-md-12">
          <h1 class="gapLogo">G.A.P WORKSHOP</h1>
          <div class="row">
              <div class="col-md-4"></div>
              <div class="col-md-4">
                    <p class="gapAbbr">GHAZI AESTHETICS PROGRAM</p>
              </div>
              <div class="col-md-4"></div>
          </div>
            
        </div>
    </div>--%>
<br>

    <div class="row">
        <div class="col-md-12">
            <h3 class="feedback"></h3>
            <p class="pra">Thank you for you participation in the workshop organised by Ghazi Healthcare under the Ghazi Aesthetics Program
(G.A.P&trade;). <br>We were glad to have you in our workshop. Your opinion would be valuable for us. <br><span class="colorChange">Thank you for giving your time.</span>
            </p>
        </div>
    </div>

<br>
<div class="row">
    <div class="col-md-6">
        <h4 class="facial">Facial Assessment</h4>
    </div>
    <div class="col-md-6">
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered table-condensed table-stripped">
            <tr class="text-center">
                <td class="borderColor" style="border:1px solid #034ea2"></td>
                <td class="bgColor1" style="width:10.5%;border:1px solid #034ea2">Very Poor</td>
                <td class="bgColor2" style="width:9.5%;border:1px solid #034ea2">Poor</td>
                <td class="bgColor3" style="width:9.5%;border:1px solid #034ea2">Fair</td>
                <td class="bgColor4" style="width:10.5%;border:1px solid #034ea2">Good</td>
                <td class="bgColor5" style="border:1px solid #034ea2">Excellent</td>
            </tr>
            <tr>
                
                <td   style="border:1px solid #034ea2">The contents were useful and practical</td>

                <th colspan="5" style="border-right:1px solid #034ea2;border-bottom:1px solid #034ea2">

                    <asp:RadioButtonList ID="FAContent" runat="server" CssClass="text-center" RepeatDirection="Horizontal" Width="100%" BorderStyle="None">

                        <asp:ListItem Text=""  Value="Very Poor"></asp:ListItem>
                        <asp:ListItem Text="" Value="Poor">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Fair">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Good">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </th>

            </tr>
            <tr>
                <td style="border:1px solid #034ea2"> The speaker delivered the lecture effectively</td>
                            <th colspan="5" style="border-right:1px solid #034ea2;border-bottom:1px solid #034ea2">

                    <asp:RadioButtonList ID="FASpeaker" runat="server" CssClass="text-center" RepeatDirection="Horizontal" Width="100%" BorderStyle="None" EnableViewState="True">

                        <asp:ListItem Text="" Value="Very Poor"  ></asp:ListItem>
                        <asp:ListItem Text="" Value="Poor">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Fair">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Good">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </th>

            </tr>
        </table>
    </div>
</div>


<div class="row">
        <div class="col-md-6">
            <h4 class="facial">Anatomy of Face</h4>
        </div>
        <div class="col-md-6">
        </div>
    </div>
    
    <div class="row">
    <div class="col-md-12">
        <table class="table table-bordered table-condensed table-stripped">
            <tr class="text-center">
                <td class="borderColor" style="border:1px solid #034ea2"></td>
                <td class="bgColor1" style="width:10.5%;border:1px solid #034ea2">Very Poor</td>
                <td class="bgColor2" style="width:9.5%;border:1px solid #034ea2">Poor</td>
                <td class="bgColor3" style="width:9.5%;border:1px solid #034ea2">Fair</td>
                <td class="bgColor4" style="width:10.5%;border:1px solid #034ea2">Good</td>
                <td class="bgColor5" style="border:1px solid #034ea2">Excellent</td>
            </tr>
            <tr>
                
                <td   style="border:1px solid #034ea2">The contents were useful and practical</td>

                <th colspan="5" style="border-right:1px solid #034ea2;border-bottom:1px solid #034ea2">

                    <asp:RadioButtonList ID="AOFContent" runat="server" CssClass="text-center" RepeatDirection="Horizontal" Width="100%" BorderStyle="None">

                        <asp:ListItem Text="" Value="Very Poor"></asp:ListItem>
                        <asp:ListItem Text="" Value="Poor">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Fair">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Good">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </th>

            </tr>
            <tr>
                <td style="border:1px solid #034ea2"> The speaker delivered the lecture effectively</td>
                            <th colspan="5" style="border-right:1px solid #034ea2;border-bottom:1px solid #034ea2">

                    <asp:RadioButtonList ID="AOFSpeaker" runat="server" CssClass="text-center" RepeatDirection="Horizontal" Width="100%" BorderStyle="None">

                        <asp:ListItem Text="" Value="Very Poor"></asp:ListItem>
                        <asp:ListItem Text="" Value="Poor">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Fair">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Good">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </th>

            </tr>
        </table>
    </div>
</div>

    <div class="row">
            <div class="col-md-6">
                <h4 class="facial">Treatment Planning</h4>
            </div>
            <div class="col-md-6">
            </div>
        </div>
        
    <div class="row">
    <div class="col-md-12">
        <table class="table table-bordered table-condensed table-stripped">
            <tr class="text-center">
                <td class="borderColor" style="border:1px solid #034ea2"></td>
                <td class="bgColor1" style="width:10.5%;border:1px solid #034ea2">Very Poor</td>
                <td class="bgColor2" style="width:9.5%;border:1px solid #034ea2">Poor</td>
                <td class="bgColor3" style="width:9.5%;border:1px solid #034ea2">Fair</td>
                <td class="bgColor4" style="width:10.5%;border:1px solid #034ea2">Good</td>
                <td class="bgColor5" style="border:1px solid #034ea2">Excellent</td>
            </tr>
            <tr>
                
                <td   style="border:1px solid #034ea2">The contents were useful and practical</td>

                <th colspan="5" style="border-right:1px solid #034ea2;border-bottom:1px solid #034ea2">

                    <asp:RadioButtonList ID="TPContent" runat="server" CssClass="text-center" RepeatDirection="Horizontal" Width="100%" BorderStyle="None">

                        <asp:ListItem Text="" Value="Very Poor"></asp:ListItem>
                        <asp:ListItem Text="" Value="Poor">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Fair">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Good">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </th>

            </tr>
            <tr>
                <td style="border:1px solid #034ea2"> The speaker delivered the lecture effectively</td>
                            <th colspan="5" style="border-right:1px solid #034ea2;border-bottom:1px solid #034ea2">

                    <asp:RadioButtonList ID="TPSpeaker" runat="server" CssClass="text-center" RepeatDirection="Horizontal" Width="100%" BorderStyle="None">

                        <asp:ListItem Text=""  Value="Very Poor"></asp:ListItem>
                        <asp:ListItem Text="" Value="Poor">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Fair">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Good">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </th>

            </tr>
        </table>
    </div>
</div>
    
    
        <div class="row">
                <div class="col-md-6">
                    <h4 class="facial">Why Choose Yvoire</h4>
                </div>
                <div class="col-md-6">
                </div>
            </div>
            
       <div class="row">
    <div class="col-md-12">
        <table class="table table-bordered table-condensed table-stripped">
            <tr class="text-center">
                <td class="borderColor" style="border:1px solid #034ea2"></td>
                <td class="bgColor1" style="width:10.5%;border:1px solid #034ea2">Very Poor</td>
                <td class="bgColor2" style="width:9.5%;border:1px solid #034ea2">Poor</td>
                <td class="bgColor3" style="width:9.5%;border:1px solid #034ea2">Fair</td>
                <td class="bgColor4" style="width:10.5%;border:1px solid #034ea2">Good</td>
                <td class="bgColor5" style="border:1px solid #034ea2">Excellent</td>
            </tr>
            <tr>
                
                <td   style="border:1px solid #034ea2">The contents were useful and practical</td>

                <th colspan="5" style="border-right:1px solid #034ea2;border-bottom:1px solid #034ea2">

                    <asp:RadioButtonList ID="WhyChooseYvioreContent" runat="server" CssClass="text-center" RepeatDirection="Horizontal" Width="100%" BorderStyle="None">

                        <asp:ListItem Text="" Value="Very Poor"></asp:ListItem>
                        <asp:ListItem Text="" Value="Poor">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Fair">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Good">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </th>

            </tr>
            <tr>
                <td style="border:1px solid #034ea2"> The speaker delivered the lecture effectively</td>
                            <th colspan="5" style="border-right:1px solid #034ea2;border-bottom:1px solid #034ea2">

                    <asp:RadioButtonList ID="WhyChooseYvioreSpeaker" runat="server" CssClass="text-center" RepeatDirection="Horizontal" Width="100%" BorderStyle="None">

                        <asp:ListItem Text="" Value="Very Poor"></asp:ListItem>
                        <asp:ListItem Text="" Value="Poor">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Fair">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Good">     </asp:ListItem>
                        <asp:ListItem Text="" Value="Excellent"></asp:ListItem>
                    </asp:RadioButtonList>
                </th>

            </tr>
        </table>
    </div>
</div>



            <div class="row bordered">
                <div class="col-md-12">
                    <p class="question">Which part did you like the most in Ghazi Aesthetics Program (G.A.P™) Workshop?</p>
                    <asp:TextBox ID="txtQ1" Width="100%" runat="server"></asp:TextBox>
                </div>
            </div>
<br>

            <div class="row bordered">
                    <div class="col-md-12">
                        <p class="question">Which part of Workshop would you suggest for improvement?</p>
                        <asp:TextBox ID="txtQ2" Width="100%" runat="server"></asp:TextBox>
                    </div>
                </div>
    <br>
                <div class="row bordered">
                        <div class="col-md-12">
                            <p class="question">What are the topics you look forward to in Ghazi Aesthetics Program (G.A.P™) next coming workshop?</p>
                            <asp:TextBox ID="txtQ3" Width="100%" runat="server"></asp:TextBox>
                        </div>
                    </div>


<br>
            <div class="row">
                <div class="col-md-12">
                    <p class="pra2">Thank you for giving your time.<br/>
                            Please submit your feedback sheet to our stall. To whom submit the feedback sheet, certicate of attendance will be provided.</p>
                </div>
            </div>




        

       <%-- <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Mobile Number:</label>
                    <asp:TextBox ID="txtMobileNumber" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                    <div class="form-group">
                            <label>Email:</label>
                        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                        </div>
            </div>
            <div class="col-md-4">
                    <div class="form-group">
                            <label>City:</label>
                        <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
                        </div>
            </div>
        </div>--%>
        <div class="row ">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-6">
                <div class="form-group">
                <label>Doctor Name:</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtDoctorName" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="Doctor Name required" ValidationGroup="Feedback" Text=" *" SetFocusOnError="true" />
                <asp:TextBox ID="txtDoctorName" Width="100%" runat="server"></asp:TextBox>
            </div>
            </div>
            <div class="col-md-6">
                    
                            <div class="form-group">
                            <label>Clinic:</label>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtClinic" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="Clinic Name required" ValidationGroup="Feedback" Text=" *" SetFocusOnError="true" />
                            <asp:TextBox ID="txtClinic" Width="100%" runat="server"></asp:TextBox>
                        </div>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <label>Mobile Number:</label>
                    <asp:TextBox ID="txtMobileNumber" Width="100%" placeholder="0923001234567" TextMode="Number" MaxLength="13" runat="server"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                    <div class="form-group">
                            <label>Email:</label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email ID" ValidationGroup="Feedback" ControlToValidate="txtEmail" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                            <asp:TextBox ID="txtEmail" Width="100%" runat="server"></asp:TextBox>
                        </div>
            </div>
            <div class="col-md-4">
                    <div class="form-group">
                            <label>City:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCity" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="City Name is required" ValidationGroup="Feedback" Text=" *" SetFocusOnError="true" />
                
                            <asp:TextBox ID="txtCity" Width="100%" runat="server"></asp:TextBox>
                        </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-12">
                <div class="form-group">
                
                    <asp:Button ID="Button1" runat="server" ValidationGroup="Feedback" Text="Submit" OnClick="Button1_Click" />
                
            </div>
            </div>
            
        </div>
    </div>
</div>


    </div>
<br>

<div class="row">
    <div class="col-md-12">
        <p class="pra">For Further Details Please <b>Email at</b>: mail@ghazihealthcare.com</p>
    </div>
</div>
    
    </form>
</body>
</html>
