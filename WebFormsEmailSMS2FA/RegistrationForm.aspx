<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="WebFormsEmailSMS2FA.RegistrationForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript">
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

    <style>
        table, .row {
            width: 100%;
        }
    </style>

    <div class="container">
        <br>
        <div class="row headerRow">
            <div class="col-md-4">
                <h3 class="scndPaads text-center">2<sup>nd</sup> PAADS</h3>
                <br>
                <p class="text-center text-style">
                    AESTHETIC CONFERENCE 2019 18/E,<br>
                    2nd Lane, Zamzama Boulevard, 4th Floor,<br>
                    Phase 5 DHA Karachi-75500, Pakistan. 
                    <br>
                    <br>
                    registration.paads2019@yahoo.com 
                    Paads2019@gmail.com
                </p>
            </div>
            <div class="col-md-5">
                <h1 class="text-center text-bold reg">REGISTRATION FORM</h1>
            </div>
            <div class="col-md-3">
                <asp:Label ID="lblImage" CssClass="p-l-20" runat="server" AssociatedControlID="FileUpload1" Style="color: #4a7636;">Please Insert Image:</asp:Label>
                <asp:Image ID="Image1" CssClass="img img-responsive imgSet" runat="server" />
                <br>
                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" onchange="ImagePreview(this);" />
            </div>
        </div>


        <br>
        <div class="row">
            <div class="col-md-12">
                <asp:Label ID="lblInfo" CssClass="text-bold infoEmp" runat="server" Text="Participant's Information"></asp:Label>
                <hr class="hr2">
            </div>
        </div>

        <div class="row">
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" Text="Title:"></asp:Label>
                    <asp:DropDownList ID="DropDownTitle" CssClass="form-control" runat="server">
                        <asp:ListItem Text="Mr." Value="0"></asp:ListItem>
                        <asp:ListItem Text="Ms." Value="1"></asp:ListItem>
                        <asp:ListItem Text="Mrs." Value="2"></asp:ListItem>
                        <asp:ListItem Text="Dr." Value="3"></asp:ListItem>
                        <asp:ListItem Text="Assoc. Prof. Dr." Value="4"></asp:ListItem>
                        <asp:ListItem Text="Asst. Prof. Dr." Value="5"></asp:ListItem>
                        <asp:ListItem Text="Prof. Dr." Value="6"></asp:ListItem>
                        <asp:ListItem Text="Assoc. Prof." Value="7"></asp:ListItem>
                        <asp:ListItem Text="Asst. Prof." Value="8"></asp:ListItem>
                        <asp:ListItem Text="M D." Value="9"></asp:ListItem>
                        <asp:ListItem Text="Others" Value="10"></asp:ListItem>

                    </asp:DropDownList>
                </div>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="lblName" runat="server" Text="Name:"></asp:Label>

                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="name required" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />
                    <asp:TextBox ID="txtName" CssClass="form-control" ReadOnly="true" runat="server"></asp:TextBox>

                </div>

            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <asp:Label ID="lblGuardian" runat="server" Text="S/O,D/O,W/O:"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtGuardian" Display="Dynamic" CssClass="field-validation-error  alert alert-danger" ErrorMessage="name required" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />
                    <asp:TextBox ID="txtGuardian" CssClass="form-control" runat="server"></asp:TextBox>

                </div>
            </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="lblPmdcNo" runat="server" Text="PMDC #:"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" CssClass="p-l-20" ErrorMessage="PMDC is not valid" ValidationGroup="quizvalidation" ControlToValidate="txtPmdcNo" max="7" ForeColor="Red" ValidationExpression="^\w{1}-[0-9+]{5}$">
                        </asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtPmdcNo" CssClass="form-control" runat="server" placeholder="S-XXXXX" MaxLength="7"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="lblMobile" runat="server" Text="Mobile #:"></asp:Label>
                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" CssClass="p-l-20" ErrorMessage="Mobile Number is not valid" ValidationGroup="vgSubmit" ControlToValidate="txtMobileNo" max="13" ForeColor="Red" ValidationExpression="((\(\w{3}\) ?)|(\w{3}))?\d{3}\d{7}">
                        </asp:RegularExpressionValidator>--%>
                        <asp:TextBox ID="txtMobileNo" CssClass="form-control" placeholder="0923001234567" TextMode="Number" ReadOnly="true" runat="server"></asp:TextBox>

                    </div>
                </div>
            </div>


            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Label ID="lblEmailId" runat="server" Text="Email Address:"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email ID" ValidationGroup="vgSubmit" ControlToValidate="txtEmailId" CssClass="requiredFieldValidateStyle" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                        </asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtEmailId" CssClass="form-control" TextMode="Email" runat="server" placeholder="example@yahoo.com" ReadOnly="true"></asp:TextBox>

                    </div>
                    <div class="form-group">
                        <asp:Label ID="lblResidentialAddress" runat="server" Text="Residential Address:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtResidentialAddress" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="Company/Farm Name required" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />
                        <asp:TextBox ID="txtResidentialAddress" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblPostalCode" runat="server" Text="Postal Code:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtPostalCode" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="POSTAL CODE REQUIRED" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />

                        <asp:TextBox ID="txtPostalCode" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblSpeciality" runat="server" Text="Speciality:"></asp:Label>
                        <asp:DropDownList ID="DropDownSpeciality" CssClass="form-control" runat="server">
                                                        <asp:ListItem Text="Dermatologist" Value="0"></asp:ListItem>
                                                        <asp:ListItem Text="Cosmetologist" Value="1"></asp:ListItem>
                                                        <asp:ListItem Text="Aesthetic Physician" Value="2"></asp:ListItem>
                                                        <asp:ListItem Text="Aesthetic Surgeon" Value="3"></asp:ListItem>
                                                        <asp:ListItem Text="Cosmetic Surgeon" Value="4"></asp:ListItem>
                                                        <asp:ListItem Text="Cosmetic Physician" Value="5"></asp:ListItem>
                                                        <asp:ListItem Text="Plastic Surgeon" Value="6"></asp:ListItem>
                                                        <asp:ListItem Text="Gynaecologist" Value="7"></asp:ListItem>
                                                        <asp:ListItem Text="Trichologist" Value="8"></asp:ListItem>
                                                        <asp:ListItem Text="General Surgeon" Value="9"></asp:ListItem>
                                                        <asp:ListItem Text="Paediatric Surgeon" Value="10"></asp:ListItem>
                                                        <asp:ListItem Text="Head and Neck Surgeon" Value="11"></asp:ListItem>
                                                        <asp:ListItem Text="Maxillofacial Surgeon" Value="12"></asp:ListItem>
                                                        <asp:ListItem Text="Cardiac Surgeon" Value="13"></asp:ListItem>
                                                        <asp:ListItem Text="Dental Surgeon" Value="14"></asp:ListItem>
                                                        <asp:ListItem Text="Hair Restoration Surgeon" Value="15"></asp:ListItem>
                                                        <asp:ListItem Text="Cardiologist" Value="16"></asp:ListItem>
                                                        <asp:ListItem Text="Facial Plastic Surgeon" Value="17"></asp:ListItem>
                                                        <asp:ListItem Text="Radiologist" Value="17"></asp:ListItem>
                                                        <asp:ListItem Text="Dentist" Value="18"></asp:ListItem>
                                                        <asp:ListItem Text="Anatomist" Value="19"></asp:ListItem>
                                                        <asp:ListItem Text="Anatomistpathologist" Value="20"></asp:ListItem>
                                                        <asp:ListItem Text="Anesthesiologist" Value="21"></asp:ListItem>
                                                        <asp:ListItem Text="Endocrinologist" Value="22"></asp:ListItem>
                                                        <asp:ListItem Text="Facial plastic Surgeon" Value="23"></asp:ListItem>
                                                        <asp:ListItem Text="Neurologist" Value="24"></asp:ListItem>
                                                        <asp:ListItem Text="Nutritionist" Value="25"></asp:ListItem>
                                                        <asp:ListItem Text="Oculoplastic Sugeon" Value="26"></asp:ListItem>
                                                        <asp:ListItem Text="Oncologist" Value="27"></asp:ListItem>
                                                        <asp:ListItem Text="Ophthalmologist" Value="28"></asp:ListItem>
                                                        <asp:ListItem Text="Orthopedist" Value="29"></asp:ListItem>
                                                        <asp:ListItem Text="Psychiatrist" Value="30"></asp:ListItem>
                                                        <asp:ListItem Text="Stomatologist" Value="31"></asp:ListItem>
                                                        <asp:ListItem Text="Rheumatogist" Value="32"></asp:ListItem>
                                                        <asp:ListItem Text="Others" Value="33"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblCity" runat="server" Text="City:"></asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCity" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="CITY NAME IS REQUIRED" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />

                        <asp:TextBox ID="txtCity" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>

                    <div class="form-group">
                        <asp:Label ID="lbl" runat="server" Text="Visitor Type:"></asp:Label>
                        <asp:DropDownList ID="DropDownVisitor" CssClass="form-control" runat="server">
                            <asp:ListItem Text="Exhibitor" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Participant" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Organizer" Value="2"></asp:ListItem>
                            <asp:ListItem Text="Speaker" Value="3"></asp:ListItem>
                            <asp:ListItem Text="Contractor" Value="4"></asp:ListItem>
                            <asp:ListItem Text="Others" Value="5"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblProvince" runat="server" Text="Province:"></asp:Label>
                        <asp:DropDownList CssClass="form-control" ID="DropDownProvince" runat="server">
                            <asp:ListItem Text="Sindh" Value="0"></asp:ListItem>
                            <asp:ListItem Text="Balochistan" Value="1"></asp:ListItem>
                            <asp:ListItem Text="Punjab" Value="2"></asp:ListItem>
                            <asp:ListItem Text="KPK" Value="3"></asp:ListItem>
                        </asp:DropDownList>

                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblQualification" runat="server" Text="Qualification:">
                        </asp:Label><asp:TextBox ID="txtQualification" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">

                    <div class="form-group">
                        <asp:Label ID="lblInsitute" runat="server" Text="Institute Name:"></asp:Label>

                        <asp:TextBox ID="txtInsitute" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>


                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="lblAffilatedBy" runat="server" Text="Affiliated By:"></asp:Label>
                        <asp:TextBox ID="txtAffilatedBy" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                </div>
            </div>


            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblClinicName" runat="server" Text="Private Clinic Name:"></asp:Label>
                        <asp:TextBox ID="txtClinicName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblClinicAddress" runat="server" Text="Clinic Address:"></asp:Label>
                        <asp:TextBox ID="txtClinicAddress" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <asp:Label ID="lblCNIC" runat="server" Text="CNIC:"></asp:Label>

                        <asp:TextBox ID="txtCNIC" CssClass="form-control" placeholder="4101-1234567-8" data-masked-input="99999-9999999-9" MaxLength="15" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" CssClass="p-l-20" runat="server" ErrorMessage="CNIC is not valid" ValidationGroup="vgSubmit" ControlToValidate="txtCNIC" max="15" ForeColor="Red" ValidationExpression="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$">
                        </asp:RegularExpressionValidator>

                    </div>
                </div>
            </div>

            <asp:UpdatePanel ID="panelRegistration" runat="server">
                <ContentTemplate>



                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered table-condensed">
                                <tr class="text-center txtBold">
                                    <td colspan="2">
                                        <asp:Label ID="lblCRegistraion" runat="server" Text="Conference Registration (Mandatory)"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>For Early birds <strong>(till 15th June) Fee: PKR 10,000/-</strong></td>
                                    <td class="text-center">
                                        <%--<asp:CheckBox ID="chkBoxEarlyBird" runat="server" />--%>
                                        <asp:RadioButton ID="RbtnRegistrationEarlyBird" GroupName="SelectRegistration" AutoPostBack="true" runat="server" OnCheckedChanged="RbtnRegistrationEarlyBird_CheckedChanged" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>Normal Registration <strong>(From 16th June to 5th July) Fee: PKR 12,000/-</strong></td>
                                    <td class="text-center">
                                        <%--<asp:CheckBox ID="chkBoxNormalReg" runat="server" />--%>
                                        <asp:RadioButton ID="RbtnRegistrationNormal" GroupName="SelectRegistration" AutoPostBack="true" runat="server" OnCheckedChanged="RbtnRegistrationNormal_CheckedChanged" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>On Site Registration Fee PKR 15,000/-</td>
                                    <td class="text-center">
                                        <%--<asp:CheckBox ID="chkBoxSiteReg" runat="server" />--%>

                                        <asp:RadioButton ID="RbtnRegistrationOnSide" GroupName="SelectRegistration" AutoPostBack="true" runat="server" OnCheckedChanged="RbtnRegistrationOnSide_CheckedChanged" />

                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <div class="row">
                                <div class="col-md-12">
                                    <table class="table table-bordered table-condensed">
                                        <tr>
                                            <td>
                                                <asp:Label ID="lblTraining" CssClass="training" runat="server" Text="Hands on Training *"></asp:Label><br />
                                                <asp:Label ID="lblTrainingDetail" runat="server" Text="Please Tick appropriate region (Fee PKR 10,000/- each)"></asp:Label>

                                            </td>
                                            <td class="text-center">


                                                <asp:CheckBox ID="chkHandsOnTraning" CssClass="chk1" AutoPostBack="True" ClientIDMode="Static" runat="server" OnCheckedChanged="chkHandsOnTraning_CheckedChanged" />


                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-3">
                                    <table class="table table-bordered condensed">
                                        <tr class="text-center">
                                            <td colspan="2">
                                                <asp:Label ID="lblChkBox1" runat="server" CssClass="text-center" Text="Basic Fillers Hands on Workshop"></asp:Label>
                                                <br>
                                                <br>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <%--<asp:CheckBox ID="chkBasicYes" Text="Yes" runat="server" CssClass="margin" />--%>
                                                <asp:RadioButton ID="RbtnBasicFillerYes" GroupName="BasicFiller" AutoPostBack="false" Text="Yes" runat="server" OnCheckedChanged="RbtnBasicFillerYes_CheckedChanged" />

                                            </td>
                                            <td>
                                                <asp:RadioButton ID="RbtnBasicFillerNo" GroupName="BasicFiller" AutoPostBack="false" Text="No" runat="server" OnCheckedChanged="RbtnBasicFillerNo_CheckedChanged" />
                                                <%--<asp:CheckBox ID="chkBasicNo" CssClass="alignCheck" Text="No" runat="server" />--%>

                                            </td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="col-md-3">

                                    <table class="table table-bordered condensed">
                                        <tr class="text-center">
                                            <td colspan="2">
                                                <asp:Label ID="lblChkBox2" runat="server" CssClass="text-center" Text="Basic Botulinum Toxin A Hand on Workshop"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <%--<asp:CheckBox ID="chkBotullnumYes" Text="Yes" runat="server" CssClass="margin" />--%>
                                                <asp:RadioButton ID="RbtnBasicbotullinumYes" GroupName="BasicBotulinum" AutoPostBack="false" Text="Yes" runat="server" OnCheckedChanged="RbtnBasicbotullinumYes_CheckedChanged" />

                                            </td>
                                            <td>
                                                <%--<asp:CheckBox ID="chkBotullnumNo" CssClass="alignCheck" Text="No" runat="server" />--%>
                                                <asp:RadioButton ID="RbtnBasicbotullinumNo" GroupName="BasicBotulinum" AutoPostBack="false" Text="No" runat="server" OnCheckedChanged="RbtnBasicbotullinumNo_CheckedChanged" />

                                            </td>
                                        </tr>
                                    </table>

                                </div>
                                <div class="col-md-3">

                                    <table class="table table-bordered condensed">
                                        <tr class="text-center">
                                            <td colspan="2">
                                                <asp:Label ID="lblChkBox3" runat="server" CssClass="text-center" Text="Threads Hand on Workshop PDO/PLA/PCLA for Face Lift"></asp:Label>

                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <%--<asp:CheckBox ID="chkBoxThreadsYes" Text="Yes" runat="server" CssClass="margin" />--%>
                                                <asp:RadioButton ID="RbtnThreadsonWorkshopYes" GroupName="ThreadsWorkshop" AutoPostBack="false" Text="Yes" runat="server" OnCheckedChanged="RbtnThreadsonWorkshopYes_CheckedChanged" />

                                            </td>
                                            <td>
                                                <%--<asp:CheckBox ID="chkBoxThreadsNo" CssClass="alignCheck" Text="No" runat="server" />--%>
                                                <asp:RadioButton ID="RbtnThreadsonWorkshopNo" GroupName="ThreadsWorkshop" AutoPostBack="false" Text="No" runat="server" OnCheckedChanged="RbtnThreadsonWorkshopNo_CheckedChanged" />

                                            </td>
                                        </tr>
                                    </table>

                                </div>
                                <div class="col-md-3">

                                    <table class="table table-bordered condensed">
                                        <tr class="text-center">
                                            <td colspan="2">
                                                <asp:Label ID="lblChkBox4" runat="server" CssClass="text-center" Text="Mono Threads for Face and Neck Rejuvenation"></asp:Label>

                                            </td>
                                        </tr>
                                        <tr class="text-center">
                                            <td>
                                                <%--<asp:CheckBox ID="chkBoxMonoYes" Text="Yes" runat="server" CssClass="margin" />--%>
                                                <asp:RadioButton ID="RbtnMonoThreadsWorkshopYes" GroupName="MonoThreads" AutoPostBack="false" Text="Yes" runat="server" OnCheckedChanged="RbtnMonoThreadsWorkshopYes_CheckedChanged" />

                                            </td>
                                            <td>
                                                <%--<asp:CheckBox ID="chkBoxMonoNo" CssClass="alignCheck" Text="No" runat="server" />--%>
                                                <asp:RadioButton ID="RbtnMonoThreadsWorkshopNo" GroupName="MonoThreads" AutoPostBack="false" Text="No" runat="server" OnCheckedChanged="RbtnMonoThreadsWorkshopNo_CheckedChanged" />

                                            </td>
                                        </tr>
                                    </table>

                                </div>
                            </div>



                            <asp:UpdatePanel ID="panelAdvance" runat="server">
                                <ContentTemplate>


                                    <div class="row">
                                        <div class="col-md-12">
                                            <table class="table table-bordered table-condensed">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblAdvance" CssClass="textBold" runat="server" Text="Advance Hands on Training with Surface Anatomy by Dr. Matt Stefanelli: (Fee: PKR 25,000/-each)"></asp:Label>
                                                        <br />
                                                        <asp:CheckBox ID="chkAdvFillers" CssClass="alignCheck" Text="Fillers" runat="server" OnCheckedChanged="chkAdvFillers_CheckedChanged" />
                                                        <%--<asp:RadioButton ID="RbtnAdvanceFiller" Text="Filler" AutoPostBack="true" runat="server" OnCheckedChanged="RbtnAdvanceFiller_CheckedChanged"  />--%>

                                                        <asp:CheckBox ID="chkAdvBotulin" CssClass="alignCheck" Text="Botulinum Toxin-A" runat="server" OnCheckedChanged="chkAdvBotulin_CheckedChanged" />
                                                        <%--<asp:RadioButton ID="RbtnAdvanceBotulinum" AutoPostBack="true" Text="Botulinum Toxin-A" runat="server" OnCheckedChanged="RbtnAdvanceBotulinum_CheckedChanged" />--%>
                                                    </td>
                                                    <td class="text-center">
                                                        <asp:RadioButton ID="RbtnAdvanceHandsWorkshopYes" AutoPostBack="true" GroupName="AdvanceHandsWorkshop" Text="Yes" runat="server" OnCheckedChanged="RbtnAdvanceHandsWorkshopYes_CheckedChanged" />
                                                    </td>
                                                    <td class="text-center">
                                                        <asp:RadioButton ID="RbtnAdvanceHandsWorkshopNo" AutoPostBack="true" GroupName="AdvanceHandsWorkshop" Text="No" runat="server" OnCheckedChanged="RbtnAdvanceHandsWorkshopNo_CheckedChanged" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>





                                    <asp:UpdatePanel ID="LaserPanel" runat="server">
                                        <ContentTemplate>

                                            <div class="row">
                                                <div class="col-md-12">
                                                    <table class="table table-bordered table-condensed">
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblLaserCourse" CssClass="textBold" runat="server" Text="Laser Course by European Society for Cosmetic and Aesthetic Dermatology-ESCAD: (Fee : PKR 25,000/- each)"></asp:Label>
                                                                <br />
                                                                <asp:Label ID="lblLimitedReg" runat="server" Text="Registration till 5th July due to limited Seats"></asp:Label>
                                                            </td>

                                                            <td class="text-center">
                                                                <%--<asp:CheckBox ID="CheckBox5" Text="Yes" runat="server" CssClass="setMargin" />--%>
                                                                <asp:RadioButton ID="RbtnLaserYes" GroupName="LaserCourse" Text="Yes" runat="server" AutoPostBack="True" OnCheckedChanged="RbtnLaserYes_CheckedChanged" />
                                                            </td>
                                                            <td class="text-center">
                                                                <%--<asp:CheckBox ID="CheckBox6" Text="No" CssClass="setMargin" runat="server" />--%>
                                                                <asp:RadioButton ID="RbtnLaserNo" GroupName="LaserCourse" Text="No" runat="server" OnCheckedChanged="RbtnLaserNo_CheckedChanged" />

                                                            </td>

                                                        </tr>
                                                    </table>
                                                </div>
                                            </div>



                                            <div class="row">
                                                <div class="col-md-6">
                                                    <h4 class="txtBold">Bank Details</h4>

                                                    <asp:Label ID="lblPayingBill" runat="server" Text="Paying bank:"></asp:Label>
                                                    <asp:Label ID="lblBankName" runat="server" Text="Bank Alfalah (Islamic banking) Clifton, Karachi."></asp:Label>

                                                    <asp:Label ID="lblAccountTitle" runat="server" Text="Account Title:"></asp:Label>
                                                    <asp:Label ID="lblAccountName" runat="server" Text="Pakistan Academy of Aesthetic Dermatologist and Surgeons Pvt. Ltd,"></asp:Label>
                                                    <asp:Label ID="lblAccNo" runat="server" Text="Account No:"></asp:Label>
                                                    <asp:Label ID="lblAccountNo" runat="server" Text="5561 5001001345"></asp:Label>

                                                    <p>
                                                        <i>Kindly Send Deposit Slip/Pay Order/Draft on:
                                                    <br>
                                                        </i>18/E, 2nd Lane, Zamzama Boulevard, 4th Floor, Phases, DHA Karachi.
                                                    </p>

                                                    <p class="txtBold">
                                                        Further Information contact:
                                                    <br>
                                                        Mrs. Noshin Shahzad
                                                    </p>
                                                    <p>Cell: +92300-8642997</p>
                                                </div>
                                                <div class="col-md-6">

                                                    <h3 class="txtBold">*Registration Fee Can Be Made By</h3>
                                                    <asp:UpdatePanel ID="panelPaymMode" runat="server">
                                                        <ContentTemplate>



                                                            <asp:RadioButton ID="RbtnOnline" ClientIDMode="Static" GroupName="PaymentMode" AutoPostBack="True" Text="Online Deposit" runat="server" OnCheckedChanged="RbtnOnline_CheckedChanged" />
                                                            <br />
                                                            <%--<asp:CheckBox ID="chkBoxOnline" Text="Online Deposite" runat="server" />--%>
                                                            <asp:RadioButton ID="RbtnBankDraft" ClientIDMode="Static" GroupName="PaymentMode" AutoPostBack="True" Text="Bank Draft/Pay Order" runat="server" OnCheckedChanged="RbtnBankDraft_CheckedChanged" />
                                                            <%--<asp:CheckBox ID="chkBoxBank" Text="Bank Draft/Pay Order" runat="server" />--%>
                                                            <br />
                                                            <asp:RadioButton ID="RbtnCash" ClientIDMode="Static" GroupName="PaymentMode" AutoPostBack="True" Text="Cash (Only on Sites on Conference Day)" runat="server" OnCheckedChanged="RbtnCash_CheckedChanged" />
                                                            <%--<asp:CheckBox ID="chkBoxCash" Text="Cash (Only on Sites on Conference Day)" runat="server" />--%>
                                                            <br />

                                                        </ContentTemplate>
                                                    </asp:UpdatePanel>
                                                    <p>I authorize PAADS to charge for my conference registration fees and hand-on training workshop(s) as requested in the total amount of:</p>


                                                    <table class="table table-bordered table-condensed">

                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:Label ID="lblDiscount" CssClass="endRow" runat="server" Text="Discount Amount is "></asp:Label>
                                                                <asp:TextBox ID="txtDiscount" ReadOnly="true" CssClass="form-control" Font-Bold="true" runat="server"> </asp:TextBox><br />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:Label ID="lblAmount" CssClass="endRow" runat="server" Text="PKR (amount in words)"></asp:Label>
                                                                <asp:TextBox ID="txtinWords" ReadOnly="true" CssClass="form-control" Font-Bold="true" runat="server"> </asp:TextBox>

                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <asp:Label ID="lblTotalAmount" CssClass="endRow" runat="server" Text="Total Amount to be paid in PKR"></asp:Label>
                                                                <asp:TextBox ID="txtTotalAmount" ReadOnly="true" CssClass="form-control" Font-Bold="true" runat="server"> </asp:TextBox>
                                                            </td>
                                                            <td>
                                                                <asp:Label ID="lblSignature" CssClass="endRow" runat="server" Text="Signature"></asp:Label>

                                                                <asp:TextBox ID="txtSignature" ReadOnly="true" CssClass="form-control" Font-Bold="true" runat="server"> </asp:TextBox>

                                                            </td>
                                                     
                                                        </tr>
                                                        <tr>
                                                            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/Validate-Blue.png" Width="150px" AutoPostBack="true"  />
                                                        </tr>

                                                    </table>
                                                </div>
                                            </div>

                                        </ContentTemplate>
                                        <%--<Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="RbtnLaserYes" EventName="CheckedChanged" />
                                        </Triggers>--%>
                                    </asp:UpdatePanel>
                                </ContentTemplate>
                                <%--<Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="RbtnAdvanceHandsWorkshopYes" EventName="CheckedChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="RbtnAdvanceHandsWorkshopNo" EventName="CheckedChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="chkAdvFillers" EventName="CheckedChanged" />
                                    <asp:AsyncPostBackTrigger ControlID="chkAdvBotulin" EventName="CheckedChanged" />
                                </Triggers>--%>
                            </asp:UpdatePanel>
                        </ContentTemplate>
                        <%--<Triggers>
                            <asp:AsyncPostBackTrigger ControlID="RbtnBasicFillerYes" EventName="CheckedChanged" />

                            <asp:AsyncPostBackTrigger ControlID="RbtnBasicbotullinumYes" EventName="CheckedChanged" />

                            <asp:AsyncPostBackTrigger ControlID="RbtnThreadsonWorkshopYes" EventName="CheckedChanged" />

                            <asp:AsyncPostBackTrigger ControlID="RbtnMonoThreadsWorkshopYes" EventName="CheckedChanged" />

                        </Triggers>--%>
                    </asp:UpdatePanel>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="RbtnRegistrationEarlyBird" EventName="CheckedChanged" />
                    <asp:AsyncPostBackTrigger ControlID="RbtnRegistrationNormal" EventName="CheckedChanged" />
                    <asp:AsyncPostBackTrigger ControlID="RbtnRegistrationOnSide" EventName="CheckedChanged" />
                </Triggers>
            </asp:UpdatePanel>

            <div class="row">
                <div class="col-md-4">
                    <asp:Label ID="lblcaptcha" runat="server">Captcha</asp:Label>
                    <asp:TextBox ID="txtimagecode" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:Image ID="image2" runat="server" ImageUrl="~/Captcha1.aspx" />
                    <br />
                    <%--<asp:Button id="btnrefresh" runat ="server" Visible="false" Text="Refresh" OnClick="btnrefresh_Click" />--%>

                    <br />
                    <asp:Label ID="lblmsg" runat="server"></asp:Label>
                </div>
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
                    <%--<asp:Button CssClass="login100-form-btn" Width="150px" ValidationGroup="quizvalidation" Text="Submit" runat="server" OnClick="Unnamed_Click" />--%>
                    <asp:ImageButton ID="ImageButton1" ImageUrl="~/Images/Submit-Blue.png" OnClick="Unnamed_Click" Text="Submit" runat="server" Width="150px" />
                    <br />

                </div>
            </div>


            <div class="row">
                <div class="col-md-12">
                    <asp:Label runat="server" Font-Size="Large" Font-Underline="true" Font-Bold="true">NOTES:</asp:Label>
                    <br />
                    <br />
                    <ul>
                        <li style="font-size: small">VERY IMPORTANT FOR ADMINISTRATIVE PURPOSE, BANK TRANSFER MUST BE MADE AT LEAST TEN (10) DAYS PRIOR TO THE CONFERENCE.PASSED THIS DATE</li>
                        <li style="font-size: small">THE REGISTRANT MAY HAVE TO PAY ON SITE HIS REGISTRATION AND WILL BE EVENTUALLY REFUNDED AFTER THE CONFERENCE ADMINISTRATIVE PROCESS MAY TAKE UP TO THIRTY (30) DAYS TO IDENTIFY THE TRANSFER AND PROCEED TO THE REFUND.</li>
                        <li style="font-size: small">AFTER THE EVENT, OBLIGATORY DO MENTION THE REGISTRANT'S NAME AND PAADS 2019 REFERENCE ON ALL THE BANK DOCUMENTS. </li>
                        <li style="font-size: small">UNTIL THIRTY (30) DAYS BEFORE THE EVENT: 80% FEE IS REFUNDABLE ON THE TOTAL REGISTRATION BETWEEN THIRTY (30) TO FIFTEEN (15) DAYS BEFORE THE EVENT</li>
                        <li style="font-size: small">50% CANCELLATION FEES ON THE FEES ON THE AMOUNT PAID FROM FIFTEEN (15) DAYS BEFORE THE EVENT DATE OR NO SHOW, NO REFUND.</li>
                    </ul>
                </div>
            </div>
        </div>

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
        <script type="text/javascript">
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
</asp:Content>
