<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebFormsEmailSMS2FA.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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

    <div>
    


        <div class="container">

<div class="row" style="min-height:300px;">
    <div class="col-md-12">
        <br/>
        <div class="row">
        <div class="col-sm-3">
            <!-- required for floating -->
            <!-- Nav tabs -->
            <ul class="nav nav-tabs tabs-left">
                <%--<li><a href="#Course" data-toggle="tab">Courses</a></li>
                <li><a href="#fav" data-toggle="tab">Favorites</a></li>--%>
                <li class="active"><a href="#profile" data-toggle="tab">Profile</a></li>
                <%--<li><a href="#Conn" data-toggle="tab">Connection</a></li>
                <li><a href="#Contribution" data-toggle="tab">Your Contribution</a></li>--%>
                <li><a href="#settings" data-toggle="tab">Setting</a></li>
                <%--<li class="hideBorder"><a href="#settings" data-toggle="tab">Logout</a></li>--%>
            </ul>
        </div>
        <div class="col-sm-9">
            <!-- Tab panes -->
            <div class="tab-content">


                <%--<div class="tab-pane " id="Course">Courese Tab.</div>
                <div class="tab-pane" id="fav">Favorites Tab.</div>--%>
                <div class="tab-pane active" id="profile">


                    <h1 class="profData">Professional Data</h1>

                    
                    <div role="tabpanel">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs subTabs" role="tablist">
                            <li role="presentation" class="active">
                                <a href="#pro" aria-controls="pro" role="tab" data-toggle="tab">Professional Data</a>
                            </li>
                            <li role="presentation">
                                <a href="#Pic" aria-controls="tab" role="tab" data-toggle="tab">Picture and Cover</a>
                            </li>

                            <%--<li role="presentation">
                                    <a href="#science" aria-controls="tab" role="tab" data-toggle="tab">Scientific Journals </a>
                                </li>--%>

                        </ul>
                    <br/>
                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div role="tabpanel" class="tab-pane active" id="pro">
                                
                            
                                <div class="row">

                                    <div class="col-md-6">    
                                        <asp:Label ID="lblGender" CssClass="text-bold" runat="server" Text="GENDER"></asp:Label>
                                        <br/>
                                        <div class="row">
                                                <div class="col-md-6">
                                                   
                                                    <asp:RadioButton ID="rdMale" Text="Male" GroupName="grpGender" runat="server" />

                                                </div>
                                                <div class="col-md-6">
                                                   <asp:RadioButton ID="rdFemale" Text="Female" GroupName="grpGender" runat="server" />
                                                </div>
                                    </div>
                                    </div>

                                    <div class="col-md-6">
                                        <asp:Label ID="lblPercent" Visible="false" CssClass="text-bold" runat="server" Text="Your Account is 55% Completed"></asp:Label>
                                    </div>
                                </div>

                                <br/>

                                <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">

                                                <asp:Label ID="lblFName" runat="server"  Text="First Name"></asp:Label>
                                                <asp:TextBox ID="txtFName" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                                <div class="form-group">
                                                <asp:Label ID="lblLName" runat="server" Text="Last Name"></asp:Label>
                                                        
                                                    <asp:TextBox ID="txtLname" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                                    </div>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <asp:Label ID="lblDoB" runat="server" Text="Date of Birth (Example: 31/05/1970)"></asp:Label>
                                                <asp:TextBox ID="txtDob" TextMode="Date" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                                <asp:TextBox ID="txtDOB1" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                        </div>
                                        </div>

                                        <div class="col-md-6">
                                                <div class="form-group">
                                                    <asp:Label ID="lblSpeciality" runat="server" Text="Speciality"></asp:Label>

                                                    <asp:DropDownList ID="DropDownSpeciality" CssClass="form-control setWidth" runat="server">
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

                                    </div>

                                    <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">

                                                    <asp:Label ID="lblCompany" runat="server" Text="Company Name (Optional)"></asp:Label>
                                                    <asp:TextBox ID="txtCompanyName" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                            </div>
                                            </div>
                                        </div>


                                        <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                    <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label>
                                                    <asp:TextBox ID="txtAddress" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                                </div>
                                                </div>
                                            </div>


                                            <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <asp:Label ID="lblCity" runat="server" Text="City (Optional)"></asp:Label>
                                                            <asp:TextBox ID="txtCity" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                            <div class="form-group">
                                                                    <asp:Label ID="lblZipCode" runat="server" Text="Zip Code (Optional)"></asp:Label>
                                                                    <asp:TextBox ID="txtZipCode" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                                                </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <asp:Label ID="lblCountry" runat="server" Text="Country"></asp:Label>
                                                                <asp:TextBox ID="txtCountry" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                                <div class="form-group">
                                                                        <asp:Label ID="lblMobileNo" runat="server" Text="Mobile Number (Optional)"></asp:Label>
                                                                        <asp:TextBox ID="txtMobileNo" CssClass="form-control setWidth" runat="server"></asp:TextBox>
                                                                    </div>
                                                        </div>
                                                    </div>


                                                    <div class="row">
                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
                                                                    <asp:TextBox ID="txtEmail" CssClass="form-control setWidth" TextMode="Email" runat="server"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            
                                                        </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <p><i> Reminder: this email will be used as your website login. Please make sure to provide a valid email address as this is where you will be sent confirmation emails.</i></p>
                                </div>
                            </div>

                            <div class="row">
                                    <div class="col-md-4"></div>
                                <div class="col-md-4">
                                    <asp:Button ID="btnUpdate" CssClass="btn btn-default btnUpdate"  runat="server" Text="Update Your Professional Data" OnClick="Button1_Click" />
                                </div>
                                <div class="col-md-4"></div>
                            </div>

                            <br/>

                            <div class="row">
                                <div class="col-md-12">
                                    <asp:TextBox id="txtRemarks" TextMode="multiline" CssClass="form-control setWidth" Columns="30" Rows="10" runat="server" />
                        </div>
                    </div>
                    <br/>
                            <div class="row">
                                    <div class="col-md-4"></div>
                                <div class="col-md-4">
                                    <asp:Button ID="btnupdateData" CssClass="btn btn-default btnUpdate"  runat="server" Text="Update Your Professional Data" OnClick="Button1_Click" />
                                    
                                </div>
                                <div class="col-md-4"></div>
                            </div>
                            </div>


                            <div role="tabpanel" class="tab-pane" id="Pic">
                            
                                <div class="row">
                                    <div class="col-md-6">
                                        <p>1. Choose Your Picture </p> 
<br/><br/>
                <div class="col-md-6">
                <asp:Label ID="lblImage" CssClass="p-l-20" runat="server" AssociatedControlID="FileUpload1" Style="color: #4a7636;">Please Insert Image:</asp:Label>
                <asp:Image ID="Image1" CssClass="img img-responsive imgSet" runat="server" />
                <br>
                <asp:FileUpload ID="FileUpload1" CssClass="form-control" runat="server" onchange="ImagePreview(this);" />
                </div>
                                        <asp:FileUpload ID="FileUpload12" CssClass="form-control setWidth" Visible="false" runat="server" />
                                    </div>
                                    <%--<div class="col-md-6">
                                            <p>2. Crop Your Picture </p> 
                                            <br/><br/>
                                            <asp:FileUpload ID="FileUpload2" CssClass="form-control setWidth" runat="server" />
                                    </div>--%>
                                </div>
<br/><br/>
                                <div class="row">
                                    <div class="col-md-6">
                                        <p>Choose Your Cover From Our Gallery</p>

                                        <asp:Button ID="Button1" CssClass="btn btn-default" runat="server" OnClick="Button1_Click1" Text="Update Your Cover From Our Gallery" />

                                    </div>
                                    <%--<div class="col-md-6">
                                            <p>or Upload Your Own Cover</p>
                                            <asp:FileUpload ID="fileUpload3" CssClass="form-control setWidth" runat="server" />
                                    </div>--%>
                                </div>
                            
                            </div>
                            <%--<div role="tabpanel" class="tab-pane" id="science">
                                <p><i>Please note that, only the publications since the year 2000 are being loaded automatically from Pubmed. Consequently, you may need to verify the publications to make sure that information is correct: author, date... By default, these publications are hidden from your public profile, if you want to make them appear in your public profile please click on the corresponding button.</i></p>
                            </div>--%>
                        </div>
                    </div>
                    

                </div>
                <%--<div class="tab-pane" id="Conn">Connection Tab.</div>
                <div class="tab-pane" id="Contribution">contribution Tab.</div>--%>
                <div class="tab-pane" id="settings">Setting Tab.</div>

            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
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
</asp:Content>
