<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaadsFeedBack.aspx.cs" Inherits="WebFormsEmailSMS2FA.PaadsFeedBack" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <style>
        .question {
            font-size: 18px;
            font-weight: bold;
        }

        .heading {
            text-align: center;
            font-weight: bold;
            color: rgb(47, 84, 150);
            font-size: 22px;
        }

        .hr {
            border: 1px solid rgb(47, 84, 150);
        }

        .lblThead {
            text-align: center !important;
            font-size: 14px;
            background-color: rgb(79, 115, 179);
            color: white;
            font-weight: bold;
        }

        .tableBorder tr td {
            border: 1px solid rgb(27, 71, 148) !important;
            height: inherit;
        }

        .tq {
            color: rgb(47, 84, 150);
            font-weight: bold;
            text-align: center;
            padding: 5px;
            border-top: 1px solid rgb(79, 115, 179);
            border-bottom: 1px solid rgb(79, 115, 179);
        }

        .row {
            padding: 0;
            margin: 0;
        }

        .gapLogo, ghaziLogo {
            margin: auto;
        }

        .ghaziLogo {
            width: 45%;
        }

        .gapLogo {
            margin-top: 14%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">




        <div class="container">

            <div class="row">
                <div class="col-md-4 col-sm-6">
                    <img src="GAPImage/gapLogo1.JPG" alt="Gap" class="img img-responsive gapLogo" />
                </div>
                <div class="col-md-4"></div>
                <div class="col-md-4 col-sm-6">
                    <img src="Images/Ghazi-Healthcare 200 x 200 px.png" alt="Gap" class="img img-responsive ghaziLogo" />
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h1 class="heading">FEEBACK FORM - QUALITY OF G.A.P FACULTY at PAADS 2019</h1>
                    <hr class="hr" />
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h1 class="question">Q1 - HOW USEFUL FOR YOUR PROFESSIONAL ACTIVITY DID YOU FIND THIS G.A.P EVENT?</h1>
                    <table class="table table-bordered table-condensed table-stripped tableBorder">
                        <tr>
                            <td class="lblThead">SELECT OPTION</td>
                            <td class="lblThead">DR. SHAHID JAMIL</td>
                            <td class="lblThead">DR. SALVATORE FUNDARO</td>
                            <td class="lblThead">DR. REDKA SWOBODA WOLFGANG</td>
                            <td class="lblThead">DR. FIRAS AL-NIAIMI</td>
                        </tr>

                        <tr>

                            <td>EXTREMELY USEFUL</td>

                            <td rowspan="4" class="text-center">
                                <asp:RadioButtonList ID="Q1ShahidJamil" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="120px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL">     </asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">               </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">        </asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">               </asp:ListItem>
                                    
                                    </asp:RadioButtonList>
                            </td>
                            <td rowspan="4" class="text-center">
                                <asp:RadioButtonList ID="Q1Fundaro" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="120px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">           </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">    </asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">           </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="4" class="text-center">
                                <asp:RadioButtonList ID="Q1Redka" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="120px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">           </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">    </asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">           </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="4" class="text-center">
                                <asp:RadioButtonList ID="Q1Firas" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="120px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">           </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">    </asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">           </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>

                        <tr>
                            <td>USEFUL</td>
                        </tr>
                        <tr>
                            <td>FAIRLY USEFUL</td>

                        </tr>
                        <tr>
                            <td>NOT USEFUL</td>
                        </tr>
                    </table>
                </div>
            </div>


            <div class="row">
                <div class="col-md-12">
                    <h1 class="question">Q2 - WHAT WAS OVERALL IMPRESSION Of G.A.P FACULTY AT PAADS 2019 PROGRAM?</h1>

                    <table class="table table-bordered table-condensed table-stripped tableBorder">
                        <tr>
                            <td class="lblThead">SELECT OPTION</td>
                            <td class="lblThead">DR. SHAHID JAMIL</td>
                            <td class="lblThead">DR. SALVATORE FUNDARO</td>
                            <td class="lblThead">DR. REDKA SWOBODA WOLFGANG</td>
                            <td class="lblThead">DR. FIRAS AL-NIAIMI</td>
                        </tr>
                        <tr>
                            <td>EXCELLENT</td>
                            <td rowspan="3" class="text-center">
                                <asp:RadioButtonList ID="Q2ShahidJamil" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="90px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">          </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">   </asp:ListItem>
                                                        

                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="3" class="text-center">
                                <asp:RadioButtonList ID="Q2Fundaro" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="90px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">          </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">   </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="3" class="text-center">
                                <asp:RadioButtonList ID="Q2Redka" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="90px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">          </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">   </asp:ListItem>

                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="3" class="text-center">
                                <asp:RadioButtonList ID="Q2Firas" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="90px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">          </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">   </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>GOOD</td>

                        </tr>
                        <tr>
                            <td>FAIRLY GOOD</td>
                        </tr>
                    </table>
                </div>
            </div>


            <div class="row">
                <div class="col-md-12">
                    <h1 class="question">Q3 - WHAT WAS OVERALL IMPRESSION Of G.A.P FACULTY AT PAADS 2019 ORGANIZATION?</h1>

                    <table class="table table-bordered table-condensed table-stripped tableBorder">
                        <tr>
                            <td class="lblThead">SELECT OPTION</td>
                            <td class="lblThead">DR. SHAHID JAMIL</td>
                            <td class="lblThead">DR. SALVATORE FUNDARO</td>
                            <td class="lblThead">DR. REDKA SWOBODA WOLFGANG</td>
                            <td class="lblThead">DR. FIRAS AL-NIAIMI</td>
                        </tr>
                        <tr>
                            <td>EXCELLENT</td>
                            <td rowspan="3" class="text-center">
                                <asp:RadioButtonList ID="Q3ShahidJamil" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="90px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">          </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">   </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="3" class="text-center">
                                <asp:RadioButtonList ID="Q3Fundaro" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="90px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">          </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">   </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="3" class="text-center">
                                <asp:RadioButtonList ID="Q3Redka" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="90px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">          </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">   </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="3" class="text-center">
                                <asp:RadioButtonList ID="Q3Firas" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="90px">
                                    <asp:ListItem Text="" Value="EXTREMELY USEFUL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="USEFUL">          </asp:ListItem>
                                    <asp:ListItem Text="" Value="FAIRLY USEFUL">   </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>GOOD</td>
                        </tr>
                        <tr>
                            <td>FAIRLY GOOD</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h1 class="question">Q4 - SUITABILITY OF FORMATS USED DURING THE G.A.P EVENT</h1>
                    <p class="queDesc">WAS THERE ADEQUATE TIME AVAILABLE FOR DISCUSSIONS, QUESTIONS & ANSWERS AND LEARNER ENGAGEMENT?</p>


                    <table class="table table-bordered table-condensed table-stripped tableBorder">
                        <tr>
                            <td class="lblThead">SELECT OPTION</td>
                            <td class="lblThead">DR. SHAHID JAMIL</td>
                            <td class="lblThead">DR. SALVATORE FUNDARO</td>
                            <td class="lblThead">DR. REDKA SWOBODA WOLFGANG</td>
                            <td class="lblThead">DR. FIRAS AL-NIAIMI</td>
                        </tr>
                        <tr>
                            <td>YES SOMETIMES</td>
                            <td rowspan="4" class="text-center">
                                <asp:RadioButtonList ID="Q4ShahidJamil" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="120px">
                                    <asp:ListItem Text="" Value="YES SOMETIMES">       </asp:ListItem>
                                    <asp:ListItem Text="" Value="ONLY RARELY">         </asp:ListItem>
                                    <asp:ListItem Text="" Value="NEVER">               </asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED">           </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="4" class="text-center">
                                <asp:RadioButtonList ID="Q4Fundaro" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="120px">
                                    <asp:ListItem Text="" Value="YES SOMETIMES">       </asp:ListItem>
                                    <asp:ListItem Text="" Value="ONLY RARELY">         </asp:ListItem>
                                    <asp:ListItem Text="" Value="NEVER">               </asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED">           </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="4" class="text-center">
                                <asp:RadioButtonList ID="Q4Redka" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="120px">
                                    <asp:ListItem Text="" Value="YES SOMETIMES">       </asp:ListItem>
                                    <asp:ListItem Text="" Value="ONLY RARELY">         </asp:ListItem>
                                    <asp:ListItem Text="" Value="NEVER">               </asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED">           </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="4" class="text-center">
                                <asp:RadioButtonList ID="Q4Firas" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="120px">
                                    <asp:ListItem Text="" Value="YES SOMETIMES">       </asp:ListItem>
                                    <asp:ListItem Text="" Value="ONLY RARELY">         </asp:ListItem>
                                    <asp:ListItem Text="" Value="NEVER">               </asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED">           </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>ONLY RARELY</td>
                        </tr>
                        <tr>
                            <td>NEVER</td>
                        </tr>
                        <tr>
                            <td>UNDECIDED</td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h1 class="question">Q5 - WAYS IN WHICH THE G.A.P EVENT AFFECTS CLINICAL PRACTICE</h1>
                    <p class="queDesc">WILL THE INFORMATION YOU LEARNT BE IMPLEMENTED IN YOUR PRACTICE?</p>

                    <table class="table table-bordered table-condensed table-stripped tableBorder">
                        <tr>
                            <td class="lblThead">SELECT OPTION</td>
                            <td class="lblThead">DR. SHAHID JAMIL</td>
                            <td class="lblThead">DR. SALVATORE FUNDARO</td>
                            <td class="lblThead">DR. REDKA SWOBODA WOLFGANG</td>
                            <td class="lblThead">DR. FIRAS AL-NIAIMI</td>
                        </tr>
                        <tr>
                            <td>VERY MUCH</td>
                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q5ShahidJamil" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q5Fundaro" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q5Redka" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q5Firas" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>SOMEWHAT</td>

                        </tr>
                        <tr>
                            <td>NOT MUCH</td>
                        </tr>
                        <tr>
                            <td>NOT AT ALL</td>
                        </tr>

                        <tr>
                            <td>UNDECIDED</td>
                        </tr>
                    </table>
                </div>
            </div>



            <div class="row">
                <div class="col-md-12">
                    <h1 class="question">Q6 - RELEVANCE OF G.A.P FACULTY AT PAADS 2019</h1>
                    <p class="queDesc">DID THE EVENT FULFIL YOUR EDUCATIONAL GOALS AND EXPECTED LEARNING OUTCOMES?</p>

                    <table class="table table-bordered table-condensed table-stripped tableBorder">
                        <tr>
                            <td class="lblThead">SELECT OPTION</td>
                            <td class="lblThead">DR. SHAHID JAMIL</td>
                            <td class="lblThead">DR. SALVATORE FUNDARO</td>
                            <td class="lblThead">DR. REDKA SWOBODA WOLFGANG</td>
                            <td class="lblThead">DR. FIRAS AL-NIAIMI</td>
                        </tr>
                        <tr>
                            <td>VERY MUCH</td>
                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q6ShahidJamil" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q6Fundaro" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q6Redka" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q6Firas" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                        </tr>
                        <tr>
                            <td>SOMEWHAT</td>
                        </tr>
                        <tr>
                            <td>NOT MUCH</td>
                        </tr>
                        <tr>
                            <td>NOT AT ALL</td>
                        </tr>

                        <tr>
                            <td>UNDECIDED</td>
                        </tr>
                    </table>
                </div>
            </div>




            <div class="row">
                <div class="col-md-12">
                    <h1 class="question">Q7 - WAS THE PRESENTED INFORMATION WELL BALANCED THE CONSISTENTLY SUPPORTED BY A VALID SCIENTIFIC EVIDENCE?</h1>
                    <br />


                    <table class="table table-bordered table-condensed table-stripped tableBorder">
                        <tr>
                            <td class="lblThead">SELECT OPTION</td>
                            <td class="lblThead">DR. SHAHID JAMIL</td>
                            <td class="lblThead">DR. SALVATORE FUNDARO</td>
                            <td class="lblThead">DR. REDKA SWOBODA WOLFGANG</td>
                            <td class="lblThead">DR. FIRAS AL-NIAIMI</td>
                        </tr>
                        <tr>
                            <td>VERY MUCH</td>
                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q7ShahidJamil" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>                              
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q7Fundaro" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q7Redka" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>

                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q7Firas" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>SOMEWHAT</td>

                        </tr>
                        <tr>
                            <td>NOT MUCH</td>

                        </tr>
                        <tr>
                            <td>NOT AT ALL</td>

                        </tr>

                        <tr>
                            <td>UNDECIDED</td>

                        </tr>
                    </table>
                </div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h1 class="question">Q8 - HOW USEFUL WERE THESE SESSIONS TO YOU?</h1>




                    <table class="table table-bordered table-condensed table-stripped tableBorder">
                        <tr>
                            <td class="lblThead">SELECT OPTION</td>
                            <td class="lblThead">DR. SHAHID JAMIL</td>
                            <td class="lblThead">DR. SALVATORE FUNDARO</td>
                            <td class="lblThead">DR. REDKA SWOBODA WOLFGANG</td>
                            <td class="lblThead">DR. FIRAS AL-NIAIMI</td>
                        </tr>
                        <tr>
                            <td>VERY MUCH</td>

                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q8ShahidJamil" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>


                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q8Fundaro" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>


                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q8Redka" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>


                            <td rowspan="5" class="text-center">
                                <asp:RadioButtonList ID="Q8Firas" CssClass="text-center" runat="server" BorderStyle="None" BorderColor="White" Width="100%" Height="150px">
                                    <asp:ListItem Text="" Value="VERY MUCH"> </asp:ListItem>      
                                    <asp:ListItem Text="" Value="SOMEWHAT">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT MUCH">  </asp:ListItem>
                                    <asp:ListItem Text="" Value="NOT AT ALL"></asp:ListItem>
                                    <asp:ListItem Text="" Value="UNDECIDED"> </asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>SOMEWHAT</td>
                        </tr>
                        <tr>
                            <td>NOT MUCH</td>
                        </tr>
                        <tr>
                            <td>NOT AT ALL</td>
                        </tr>

                        <tr>
                            <td>UNDECIDED</td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Button Text="Submit" CssClass="btn btn-primary btn-block" OnClick="Unnamed_Click" runat="server" />
                </div>
                <div class="col-md-4"></div>
            </div>

            <div class="row">
                <div class="col-md-12">
                    <h3 class="tq">THANK YOU FOR YOUR ANSWERS</h3>
                </div>
            </div>
        </div>









    </form>
</body>
</html>

