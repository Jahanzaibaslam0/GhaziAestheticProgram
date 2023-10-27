<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm2.aspx.cs"  Inherits="WebFormsEmailSMS2FA.WebForm1" %>


<!DOCTYPE html >

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <script src="Bootstrap/bootstrap.js"></script>
    <link href="Bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="Css/Main.css" rel="stylesheet" />
    <script type ="text/javascript">
        function RefreshCaptcha() {
            var img = document.getElementById("imgCaptcha");
            img.src = "Captcha1.aspx"
        }
    </script>
    
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>
</head>
<body>
    <%--<form id="form1" runat="server">--%>

    
        <form runat="server">
            <div>
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
                        <%--<li><a runat="server" style="color: white" href="~/UserListPage">User Details</a></li>--%>
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

    
        <div class="container">

            
            <%--<div class="show">
        <div class="row">
            <div class="col-md-4">


                <h1 class="paads">2<sup class="supTag">nd</sup> PAADS</h1>
                <p class="conference">AESTHETIC CONFERENCE 2019</p>
                <p class="info">18/E, 2nd Lane, Zamzama Boulevard, <br/>4th Floor, Phase 5 DHA Karachi-75500, Pakistan.</p>
                <p class="info">registration.paads2019@yahoo.com</p>                
            </div>
            <div class="col-md-3">
                    <h3 class="reg">REGISTRATION FORM</h3>
            </div>
            <div class="col-md-2">
                <br/><br/><br/>
                <asp:Image ID="imgBarcode" CssClass="img img-responsive barcode" runat="server" />
            </div>
                                            
            <div class="col-md-3">
                <br/>
                
                <asp:Image ID="imgEmpPic" CssClass="img img-responsive pictureBox" runat="server" />
        </div>
        </div>
                </div>--%>
            

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

             <table class="table table-bordered table-hover table-condensed">
                 <tr>
                     <td class="borderRight">
                         <h1 class="paads">2<sup class="supTag">nd</sup> PAADS</h1>
                            <p class="conference">AESTHETIC CONFERENCE 2019</p>
                            <p class="info">18/E, 2nd Lane, Zamzama Boulevard, <br/>4th Floor, Phase 5 DHA Karachi-75500, Pakistan.</p>
                            <p class="info">registration.paads2019@yahoo.com</p>
                     </td>
                     <td class="borderLeft" colspan="4" >
                     <h3 class="reg">REGISTRATION FORM</h3>
                        
                     </td>
                     <td class="borderLeft" colspan="2">
                     
                                            <asp:Label ID="lblImage" CssClass="p-l-20" runat="server" AssociatedControlID="FileUpload1" Style="color: #4a7636;">Please Insert Image:
                                                </asp:Label>
                                            <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" />
                                        
                                    
                                    
                                        <asp:Image ID="Image1" runat="server" Height="160px" BorderStyle="Solid" BorderWidth="2px" ImageAlign="Middle" Width="160px" />
                                    
                        
                     </td>
                     
                 </tr>
            <tr>
                <td colspan="6" class="empInfo">
                    <asp:Label ID="lblInfo" CssClass="empInfo" runat="server" Text="Participant's Information"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="borderRight">
                    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="borderLeft" colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="name required" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />
                    <asp:TextBox ID="txtName" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>
                </td>
            
                <td class="borderRight">
                    <asp:Label ID="lblGuardian" runat="server" Text="S/O,D/O,W/O:"></asp:Label>
                </td>
                <td class="borderLeft" colspan="2">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtGuardian" Display="Dynamic" CssClass="field-validation-error  alert alert-danger" ErrorMessage="name required" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />
                    <asp:TextBox ID="txtGuardian" CssClass="form-control" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="borderRight">
                    <asp:Label ID="lblPmdcNo" runat="server" Text="PMDC #:"></asp:Label>
                </td>
                <td class="borderLeft" colspan="2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="p-l-20"  ErrorMessage="PMDC is not valid" ValidationGroup="quizvalidation" ControlToValidate="txtPmdcNo" max="7" ForeColor="Red" ValidationExpression="^\w{1}-[0-9+]{5}$" >
                                        </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtPmdcNo" CssClass="form-control" runat="server" placeholder="S-XXXXX" MaxLength="7" ></asp:TextBox>
                </td>
                <td class="borderRight">
                    <asp:Label ID="lblMobile" runat="server" Text="Mobile #:"></asp:Label>
                </td>
                <td class="borderLeft" colspan="2">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="p-l-20" ErrorMessage="Mobile Number is not valid" ValidationGroup="vgSubmit" ControlToValidate="txtMobileNo" max="13" ForeColor="Red" ValidationExpression="((\(\w{3}\) ?)|(\w{3}))?\d{3}\d{7}">
                                        </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtMobileNo" CssClass="form-control" placeholder="0923001234567"  TextMode="Number" ReadOnly="true" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td class="borderRight">
                    <asp:Label ID="lblEmailId" runat="server" Text="Email Address:"></asp:Label>
                </td>
                <td class="borderLeft" colspan="5">
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email ID" ValidationGroup="vgSubmit" ControlToValidate="txtEmailId" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                        </asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtEmailId" CssClass="form-control" TextMode="Email" runat="server" placeholder="example@yahoo.com" ReadOnly="true" ></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                    <td class="borderRight">
                        <asp:Label ID="lblResidentialAddress" runat="server" Text="Residential Address:"></asp:Label>
                    </td>
                    <td class="borderLeft" colspan="5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtResidentialAddress" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="Company/Farm Name required" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />
                        <asp:TextBox ID="txtResidentialAddress" CssClass="form-control" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td class="borderRight">
                    <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code:"></asp:Label>
                </td>
                <td class="borderLeft" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPostalCode" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="POSTAL CODE REQUIRED" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />
                                        
                    <asp:TextBox ID="txtPostalCode" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="borderRight">
                    <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
                </td>
                <td class="borderLeft" >
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCity" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="CITY NAME IS REQUIRED" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />

                    <asp:TextBox ID="txtCity" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
                <td class="borderRight">
                    <asp:Label ID="lblProvince" runat="server" Text="Province:"></asp:Label>
                </td>
                <td class="borderLeft" >
                    <asp:DropDownList CssClass="input100" ID="DropDownProvince" runat="server">
                                            <asp:ListItem>Sindh</asp:ListItem>
                                            <asp:ListItem>Balochistan</asp:ListItem>
                                            <asp:ListItem>Punjab</asp:ListItem>
                                            <asp:ListItem>KPK</asp:ListItem>
                                        </asp:DropDownList>

                </td>
            </tr>
                 <tr>
                <td class="borderRight">
                    <asp:Label ID="lblSpeciality" runat="server" Text="Speciality:"></asp:Label>
                </td>
                <td class="borderLeft" >
                    <asp:DropDownList ID="DropDownSpeciality" CssClass="input100" runat="server">
                                            <asp:ListItem>Dermatology</asp:ListItem>
                                            <asp:ListItem>Cosmetology</asp:ListItem>
                                            <asp:ListItem>Maxillofacial</asp:ListItem>
                                            <asp:ListItem>Plastic Surgery</asp:ListItem>
                                            <asp:ListItem>Gynaecology</asp:ListItem>
                                            <asp:ListItem>Pediatrics</asp:ListItem>
                                            <asp:ListItem>Others</asp:ListItem>
                                        </asp:DropDownList>

                </td>
                <td class="borderRight">
                    <asp:Label ID="lbl" runat="server" Text="Visitor Type:"></asp:Label>
                </td>
                <td class="borderLeft" >
                    <asp:DropDownList ID="DropDownVisitor" CssClass="input100" runat="server">
                                            <asp:ListItem>Exhibitor</asp:ListItem>
                                            <asp:ListItem>Participarts</asp:ListItem>
                                            <asp:ListItem>Organizer</asp:ListItem>
                                            <asp:ListItem>Speaker</asp:ListItem>
                                            <asp:ListItem>Contractor</asp:ListItem>
                                            <asp:ListItem>Others</asp:ListItem>
                                        </asp:DropDownList>
                </td>
                <td class="borderRight">
                    <asp:Label ID="lblQualification" runat="server" Text="Qualification:"></asp:Label>
                </td>
                <td class="borderLeft" >
                    
                    <asp:TextBox ID="txtQualification" CssClass="form-control" runat="server"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="borderRight">
                    <asp:Label ID="lblInsitute" runat="server" Text="Insitute Name:"></asp:Label>
                </td>
                <td class="borderLeft" colspan="2">
                    
                    <asp:TextBox ID="txtInsitute" CssClass="form-control" runat="server"></asp:TextBox>

                </td>
                <td class="borderRight">
                    <asp:Label ID="lblAffilatedBy" runat="server" Text="Affilated By:"></asp:Label>
                </td>
                <td class="borderLeft" colspan="2">
                    
                    <asp:TextBox ID="txtAffilatedBy" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="borderRight">
                    <asp:Label ID="lblClinicName" runat="server" Text="Private Clinic Name:"></asp:Label>
                </td>
                <td class="borderLeft" colspan="2">
                    
                    <asp:TextBox ID="txtClinicName" CssClass="form-control" runat="server"></asp:TextBox>

                </td>
                <td class="borderRight">
                    <asp:Label ID="lblClinicAddress" runat="server" Text="Clinic Address:"></asp:Label>
                </td>
                <td class="borderLeft" colspan="2">
                    
                    <asp:TextBox ID="txtClinicAddress" CssClass="form-control" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="borderRight">
                    <asp:Label ID="lblCNIC" runat="server" Text="CNIC:"></asp:Label>
                </td>
                <td class="borderLeft" >
                    <%--<input id="Text1" type="text" placeholder="4101-1234567-8" data-masked-input="99999-9999999-9" maxlength="15" runat="server" />--%>
                    <asp:TextBox ID="txtCNIC" CssClass="form-control" placeholder="4101-1234567-8" data-masked-input="99999-9999999-9" maxlength="15" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" CssClass="p-l-20" runat="server" ErrorMessage="CNIC is not valid" ValidationGroup="vgSubmit" ControlToValidate="txtCNIC" max="15" ForeColor="Red" ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$">
                                        </asp:RegularExpressionValidator>
                    
                    
                </td>
                <td class="borderRight">
                    <asp:Label ID="lblPassword" runat="server"  Text="Password:"></asp:Label>
                </td>
                <td class="borderLeft" >

                    <asp:TextBox ID="txtPassword"  CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                </td>
                <td class="borderRight">
                    <asp:Label ID="lblRePassword" runat="server" Text="Confirm Password:"></asp:Label>
                </td>
                <td class="borderLeft" >
                    
                    <asp:TextBox ID="txtRePassword"  CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtRePassword" ForeColor="Red" ErrorMessage="Password is mis-match">
                                        </asp:CompareValidator>

                </td>
            </tr>
        </table>


            
<table class="table table-bordered table-hover table-condensed">
    <tr>
        <td colspan="2" class="cReg">
             <asp:Label ID="lblCRegistraion" runat="server" Text="Conference Registration (Mandatory)"></asp:Label>
        </td>        
    </tr>
    <tr>
        <td class="borderRight">
            For Early birds <strong>(till 31st May) Fee: PKR 10,000/-</strong>
        </td>
        <td class="borderLeft">
            <%--<asp:CheckBox ID="chkBoxEarlyBird" runat="server" />--%>
            <asp:RadioButton ID="RbtnRegistrationEarlyBird" GroupName="SelectRegistration"  AutoPostBack="false" runat="server" OnCheckedChanged="RbtnRegistrationEarlyBird_CheckedChanged"   />
            </td>
    </tr>
    <tr>
            <td class="borderRight">
                   Normal Registration <strong>(From 1st June to 5th July) Fee: PKR 12,000/-</strong>
                </td>
                <td class="borderLeft">
                    <%--<asp:CheckBox ID="chkBoxNormalReg" runat="server" />--%>
                    <asp:RadioButton ID="RbtnRegistrationNormal" GroupName="SelectRegistration" AutoPostBack="false"  runat="server" OnCheckedChanged="RbtnRegistrationNormal_CheckedChanged"   />
                </td>
    </tr>
    <tr>
            <td class="borderRight">
                    On Site Registration <strong>Fee PKR 15,000/-</strong>
                </td>
                <td class="borderLeft">
                    <%--<asp:CheckBox ID="chkBoxSiteReg" runat="server" />--%>
                    <asp:RadioButton ID="RbtnRegistrationOnSide" GroupName="SelectRegistration" AutoPostBack="false"  runat="server" OnCheckedChanged="RbtnRegistrationOnSide_CheckedChanged"   />
                </td>
    </tr>
</table>


            <table class="table table-bordered table-condensed">
                <tr>
                    <td class="borderRight">
                        <asp:Label ID="lblTraining" CssClass="training" runat="server" Text="Hands on Training *"></asp:Label><br />
                        <asp:Label ID="lblTrainingDetail" runat="server" Text="Please Tick appropriate region (Fee PKR 10,000/- each)"></asp:Label>
                        
                    </td>
                    <td class="borderLeft">
                    <asp:CheckBox ID="chkHandsOnTraning" CssClass="chk1" runat="server" />
                        </td>
                </tr>
            </table>


            <div class="row">
    <div class="col-md-3">
        <table class="table table-bordered table-condensed">
            <tr>
                <td class="text-center empInfo"><br/>
                    <asp:Label ID="lblChkBox1" runat="server" CssClass="text-center" Text="Basic FIllers Hands on Workshop"></asp:Label>
                    
                </td>
            </tr>
            <tr>
               <td>
               <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-3">
                    <%--<asp:CheckBox ID="chkBasicYes" Text="Yes" runat="server" CssClass="margin" />--%>
                        <asp:RadioButton ID="RbtnBasicFillerYes" GroupName="BasicFiller" AutoPostBack="false" Text="Yes" runat="server" OnCheckedChanged="RbtnBasicFillerYes_CheckedChanged"   />
                        </div> 

                    <div class="col-md-2"></div> 
                                        <div class="col-md-3"> 
                    <%--<asp:CheckBox ID="chkBasicNo" CssClass="alignCheck" Text="No" runat="server" />--%>
                    <asp:RadioButton ID="RbtnBasicFillerNo" GroupName="BasicFiller" AutoPostBack="false" Text="No" runat="server" OnCheckedChanged="RbtnBasicFillerNo_CheckedChanged"   />
                                            </div>
                        </div>
               </td>
            </tr>
        </table>
    </div>
    <div class="col-md-3">
            <table class="table table-bordered table-condensed">
                    <tr>
                        <td class="text-center empInfo">
                            <asp:Label ID="lblChkBox2" runat="server" CssClass="text-center" Text="Basic Botullinum Toxin A Hand on Workshop"></asp:Label>
                        </td>
                    </tr>
                <tr>
               <td> 
                   <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-3">
                    <%--<asp:CheckBox ID="chkBotullnumYes" Text="Yes" runat="server" CssClass="margin" />--%>
                        <asp:RadioButton ID="RbtnBasicbotullinumYes" GroupName="BasicBotulinum" AutoPostBack="false" Text="Yes" runat="server" OnCheckedChanged="RbtnBasicbotullinumYes_CheckedChanged"   />
                        </div> 

                    <div class="col-md-2"></div> 
                                        <div class="col-md-3"> 
                    <%--<asp:CheckBox ID="chkBotullnumNo" CssClass="alignCheck" Text="No" runat="server" />--%>
                    <asp:RadioButton ID="RbtnBasicbotullinumNo" GroupName="BasicBotulinum" AutoPostBack="false" Text="No" runat="server" OnCheckedChanged="RbtnBasicbotullinumNo_CheckedChanged"   />
                                            </div>
                        </div>

                   </td>
            </tr>
                </table>
    </div>
    <div class="col-md-3">
            <table class="table table-bordered table-condensed">
                    <tr>
                        <td class="text-center empInfo">
                            <asp:Label ID="lblChkBox3" runat="server" CssClass="text-center" Text="Threads Hand on Workshop PDO/PLA/PCLA for Face Lift"></asp:Label>
                        </td>
                    </tr>
                <tr>
                <td>
                    <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-3">
                    <%--<asp:CheckBox ID="chkBoxThreadsYes" Text="Yes" runat="server" CssClass="margin" />--%>
                        <asp:RadioButton ID="RbtnThreadsonWorkshopYes" GroupName="ThreadsWorkshop" AutoPostBack="false" Text="Yes" runat="server" OnCheckedChanged="RbtnThreadsonWorkshopYes_CheckedChanged"   />
                        </div> 

                    <div class="col-md-2"></div> 
                                        <div class="col-md-3"> 
                    <%--<asp:CheckBox ID="chkBoxThreadsNo" CssClass="alignCheck" Text="No" runat="server" />--%>
                    <asp:RadioButton ID="RbtnThreadsonWorkshopNo" GroupName="ThreadsWorkshop" AutoPostBack="false" Text="No" runat="server" OnCheckedChanged="RbtnThreadsonWorkshopNo_CheckedChanged"   />
                                            </div>
                        </div>
                    </td>
            </tr>
                </table>
    </div>
    <div class="col-md-3">
            <table class="table table-bordered table-condensed">
                    <tr>
                        <td class="text-center empInfo">
                            <asp:Label ID="lblChkBox4" runat="server" CssClass="text-center" Text="Mono Threads for Face and Neck Rejuvenation"></asp:Label>
                        </td>
                    </tr>
                <tr>
                <td>
                    <div class="row">
                    <div class="col-md-1"></div> 
                    <div class="col-md-3">
                    <%--<asp:CheckBox ID="chkBoxMonoYes" Text="Yes" runat="server" CssClass="margin" />--%>
                        <asp:RadioButton ID="RbtnMonoThreadsWorkshopYes" GroupName="MonoThreads" AutoPostBack="false" Text="Yes" runat="server" OnCheckedChanged="RbtnMonoThreadsWorkshopYes_CheckedChanged"   />
                        </div> 

                    <div class="col-md-2"></div> 
                                        <div class="col-md-3"> 
                    <%--<asp:CheckBox ID="chkBoxMonoNo" CssClass="alignCheck" Text="No" runat="server" />--%>
                        <asp:RadioButton ID="RbtnMonoThreadsWorkshopNo" GroupName="MonoThreads" AutoPostBack="false" Text="No" runat="server" OnCheckedChanged="RbtnMonoThreadsWorkshopNo_CheckedChanged"   />
                                            </div>
                        </div>
                   </td>
            </tr>
                </table>
    </div>
</div>
            
            <div class="row">
                <div class="col-md-12">
                    <table class="table table-bordered table-condensed">
    <tr>
        <td class="borderRight">
            
            <asp:Label ID="lblAdvance" CssClass="textBold" runat="server" Text="Advance Hands on Training with Surface Antomy by Dr. Matt Stenfanelli: (Fee: PKR 25,000/-each)"></asp:Label>
            
             <br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:CheckBox ID="chkFillers" CssClass="alignCheck" Text="Fillers" runat="server" />--%>
            <asp:RadioButton ID="RbtnAdvanceFiller"  AutoPostBack="true" Text="Filler" runat="server" OnCheckedChanged="RbtnAdvanceFiller_CheckedChanged"   />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <%--<asp:CheckBox ID="chkBotulin" CssClass="alignCheck" Text="Botulin um Toxin-A" runat="server" />--%>
            <asp:RadioButton ID="RbtnAdvanceBotulinum"  AutoPostBack="false" Text="Botulinum Toxin-A" runat="server" OnCheckedChanged="RbtnAdvanceBotulinum_CheckedChanged"   />
        </td>
        <td class="borderLeft">
            <div class="row">
                    <div class="col-md-4">
                    <%--<asp:CheckBox ID="CheckBox1" Text="Yes" runat="server" CssClass="setMargin" />--%>
                        <asp:RadioButton ID="RbtnAdvanceHandsWorkshopYes" AutoPostBack="false" GroupName="AdvanceHandsWorkshop" Text="Yes" runat="server"   />
                    </div> 

                    <div class="col-md-1">

                    </div> 
                    <div class="col-md-4"> 
                    <%--<asp:CheckBox ID="CheckBox2" Text="No" CssClass="setMargin" runat="server" />--%>
                        <asp:RadioButton ID="RbtnAdvanceHandsWorkshopNo" AutoPostBack="false" GroupName="AdvanceHandsWorkshop" Text="No" runat="server"  />
                    </div>
                <fieldset >
                    
                    

                    

                    </fieldset>

                        </div>
                     </td>
                </tr>
                </table>

                </div>
            </div>


             <div class="row">
                <div class="col-md-12">
                    <table class="table table-bordered table-condensed">
    <tr>
        <td class="borderRight">
            
            <asp:Label ID="lblLaserCourse" CssClass="textBold" runat="server" Text="Laser Course by European Society for Cosmetic and Aesthetic Dermatology-ESCAD: (Fee : PKR 25,000/- each)"></asp:Label>
            
            <br />
            <asp:Label ID="lblLimitedReg" runat="server" Text="Registration till 5th July due to limited Seats"></asp:Label>
        </td>
        <td class="borderLeft">
            <div class="row">
                    <div class="col-md-4">
                    <%--<asp:CheckBox ID="CheckBox5" Text="Yes" runat="server" CssClass="setMargin" />--%>
                        <asp:RadioButton ID="RbtnLaserYes" AutoPostBack="true" GroupName="LaserCourse" Text="Yes" runat="server" OnCheckedChanged="RbtnLaserYes_CheckedChanged"   />
                        </div> 

                    <div class="col-md-1"></div> 
                    <div class="col-md-4"> 
                    <%--<asp:CheckBox ID="CheckBox6" Text="No" CssClass="setMargin" runat="server" />--%>
                        <asp:RadioButton ID="RbtnLaserNo" AutoPostBack="false"  GroupName="LaserCourse" Text="No" runat="server" OnCheckedChanged="RbtnLaserNo_CheckedChanged"   />
                                            </div>
                        </div>
                     </td>
                </tr>
                </table>
                    
                </div>
            </div>


            <div class="row">
    <div class="col-md-6">
        <div class="endRight">
        <h5><b>Bank Details</b></h5>

        <table>
            <tr>
                <td>
                    <asp:Label ID="lblPayingBill" runat="server" Text="Paying bank:"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblBankName" runat="server" Text="Bank Alfalah (Islamic banking) Clifton, Karachi."></asp:Label>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAccountTitle" runat="server" Text="Account Title:"></asp:Label>
                    </td>
                <td>
                    <asp:Label ID="lblAccountName" runat="server" Text="Pakistan Academy of Aesthetic Dermatologist and Surgeons Pvt. Ltd,"></asp:Label>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAccNo" runat="server" Text="Account No:"></asp:Label>
                    </td>
                <td>
                    <asp:Label ID="lblAccountNo" runat="server" Text="5561 5001001345"></asp:Label>
                     </td>
            </tr>
        </table>
<br/>
        <p><i>Kindly Send Deposit Slip/Pay Order/Draft on:</i>
        <br/>18/E, 2nd Lane, Zamzama Bouleverd, 4th Floor, Phases, DHA Karachi.</p>
        <p><b>Further Information contact:</b></p>

        <strong>Mrs. Noshin Shahzad</strong>
<br/>
        <p>Cell: 0300-8642997</p>
            <br />
            </div>
    </div>
                
    <div class="col-md-6">

        <p class="endReg"><b>*Registration Fee Can be made by</b></p>
        <asp:RadioButton ID="RbtnOnline" GroupName="PaymentMode" AutoPostBack="true" Text="Online Deposit" runat="server" OnCheckedChanged="RbtnOnline_CheckedChanged"   />
        <br />
    <%--  <asp:CheckBox ID="chkBoxOnline" Text="Online Deposite" runat="server" />--%>
        <asp:RadioButton ID="RbtnBankDraft" GroupName="PaymentMode" AutoPostBack="true" Text="Bank Draft/Pay Order" runat="server" OnCheckedChanged="RbtnBankDraft_CheckedChanged"   />
        <%--<asp:CheckBox ID="chkBoxBank" Text="Bank Draft/Pay Order" runat="server" />--%>
        <br />
        <asp:RadioButton ID="RbtnCash" GroupName="PaymentMode" AutoPostBack="true" Text="Cash (Only on Sites on Conference Day)" runat="server" OnCheckedChanged="RbtnCash_CheckedChanged"   />
        <%--<asp:CheckBox ID="chkBoxCash" Text="Cash (Only on Sites on Conference Day)" runat="server" />--%>
        <br />


        <p class="auth">I authorize PAADS to charge for my conference registration fees and hand-on training workshop(s) as requested in the total amount of:</p>
        <table class="table table-bordered">
            <tr>
                <td colspan="2" class="endRow">
                    <asp:Label ID="lblDiscount"  CssClass="endRow" runat="server" Text="Discount Amount is "></asp:Label>
                    <asp:TextBox ID="txtDiscount" width="100px" Font-Bold="true" runat="server"> </asp:TextBox><br />
                    <asp:Label ID="lblAmount"  CssClass="endRow" runat="server" Text="PKR (amount in words)"></asp:Label>
                    <asp:TextBox ID="txtinWords" width="300px" Font-Bold="true" runat="server"> </asp:TextBox>
                    
                    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblTotalAmount"  CssClass="endRow" runat="server" Text="Total Amount to be paid in PKR"></asp:Label>
                    <textarea name="" id="" cols="30" rows="2"></textarea>
                </td>
                <td class="endRow">
                    <asp:Label ID="lblSignature"  CssClass="endRow" runat="server" Text="Signature"></asp:Label>
                        
                        <textarea name="" id="" cols="30" rows="2"></textarea>
                </td>
            </tr>
        </table>


    </div>
</div>
            <div>
        <asp:TextBox ID="txtimagecode" CssClass="form-control" Width="200px" runat="server"></asp:TextBox>
        <asp:Image id="image2" runat="server" ImageUrl="~/Captcha1.aspx" />
                <br />
        <asp:Button id="btnrefresh" runat ="server" Visible="false" Text="Refresh" OnClick="btnrefresh_Click" />
        
        <br />
        <asp:Label ID="lblmsg" runat="server"></asp:Label>
    </div>

           <%-- <div class="row">
                                    <div class="auto-style1">
                                        <div class="form-group">
                                            <asp:Label ID="lblImage" CssClass="p-l-20" runat="server" AssociatedControlID="FileUpload1" Style="color: #4a7636;">Please Insert Image:</asp:Label>
                                            <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <asp:Image ID="Image1" runat="server" Height="160px" BorderStyle="Solid" BorderWidth="2px" ImageAlign="Middle" Width="160px" />
                                    </div>
                                    <div class="col-md-3"></div>
                                    <div class="col-md-2">
                                        <br />
                                        <asp:Button CssClass="login100-form-btn" Width="150px" ValidationGroup="quizvalidation" Text="Submit" runat="server" OnClick="Unnamed_Click" />
                                          <asp:ImageButton CssClass="login100-form-btn" runat="server" OnClick="btnNext_Click1"  ValidationGroup="quizvalidation" />
                                        
                                    </div>
                                </div>--%>

            <div class="row">
                <div class="col-md-2">
                                        <br />
                                        <asp:Button CssClass="login100-form-btn" Width="150px" ValidationGroup="quizvalidation"  Text="Submit" runat="server" OnClick="Unnamed_Click" />
                                        <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click"/>
                                        
                                    </div>
            </div>

            <div class="row">
                <div class ="col-md-12">
                    <p class="p1">VERY IMPORTANT FOR ADMINISTRATIVE PURPOSE, BANK TRANSFER MUST BE MADE AT LEAST TEN (10) DAYS PRIOR TO THE CONFERENCE. PASSED THIS DATE, THE REGISTRANT MAY HAVE
                        TO PAY ON SITE HIS REGISTRATION AND WILL BE EVENTUALLY REFUNDED AFTER THE CONFERENCE ADMINISTRATIVE PROCESS MAY TAKE UP TO THIRTY (30) DAYS TO IDENTIFY THE TRANSFER AND PROCEED TO THE REFUND,
                        AFTER THE EVENT, OBLIGATORY: DO MENTION THE REGISTRANT'S NAME AND PAADS 2019 REFERENCE ON ALL THE BANK DOCUMENTS.
                        <br />
                        CANCELLATION POLICY: UNTIL THIRTY (30) DAYS BEFORE THE EVENT: 80% FEE IS REFUNDABLE ON THE TOTAL REGISTRATION BETWEEN THIRTY (30) TO FIFTEEN (15) DAYS BEFORE THE EVENT: 50% CANCELLATION FEES ON THE 
                        FEES ON THE AMOUNT PAID FROM FIFTEEN (15) DAYS NEFORE THE EVENT DATE OR NO SHOW, NO REFUND.
                    </p>
                </div>
            </div>





    </div>
    </div>
            <hr />
        <footer>
            <p>&copy; <%: DateTime.Now.Year %> - Business Solution</p>
        </footer>
    </form>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        function ImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#<%=Image1.ClientID%>').prop('src', e.target.result)
                        .width(200)
                        .height(200);
                };
                reader.readAsDataURL(input.files[0]);
                }
            }

    </script>
    <script type = "text/javascript">
            function UncheckOthers(objchkbox) {
                //Get the parent control of checkbox which is the checkbox list
                var objchkList = objchkbox.parentNode.parentNode.parentNode;
                //Get the checkbox controls in checkboxlist
                var chkboxControls = objchkList.getElementsByTagName("input");
                //Loop through each check box controls
                for (var i = 0; i < chkboxControls.length; i++) {
                    //Check the current checkbox is not the one user selected
                    if (chkboxControls[i] != objchkbox && objchkbox.checked) {
                        //Uncheck all other checkboxes
                        chkboxControls[i].checked = false;
                    }
                }
            }
</script>

</body>
</html>


