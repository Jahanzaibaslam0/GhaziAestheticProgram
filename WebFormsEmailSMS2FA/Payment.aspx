<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="WebFormsEmailSMS2FA.Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
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
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
    <asp:Label ID="lblmessage" runat="server" ForeColor="#ff0000" Visible="false" Text="Welcome to Ghazi Brothers" />
    <br />
    <asp:HiddenField ID="quizfield" runat="server" />
    <!-- quiz details -->
    
        
    <div style="clear: both"></div>

    <!-- quiz questions -->
    <div id="quiz">
        <asp:ValidationSummary ID="quizvalidationsummary" runat="server" ShowMessageBox="true" DisplayMode="BulletList" ShowSummary="true" HeaderText="<br />&nbsp;&nbsp;Please check the following:-" ForeColor="Red" ValidationGroup="quizvalidation" BorderColor="Red" BorderStyle="Solid" BorderWidth="1px" Width="280px" /><br />
        <!-- user details -->
        <div id="detailsdiv" runat="server">
            <fieldset>
                    
        <div  class="wrap-login100 login100-form validate-form ">
              <asp:Label ID="Label1" Text="Please fill your details" BackColor="#ff66cc" CssClass="login100-form-btn"  runat="server"></asp:Label>

            <di class="p-t-20 container">
               
               <div class ="row">
                
                    <div class="col-md-6">
                         <div class ="form-group">
                         <asp:Label  ID="lblUserID" CssClass="p-l-20" runat="server" AssociatedControlID="DropDownUser">User Name:</asp:Label>
                         <asp:DropDownList ID="DropDownUser" CssClass="input100" runat="server">
                             <asp:ListItem></asp:ListItem>
                         </asp:DropDownList>
                         </div>
                    </div>
                </div>
              
                <div class ="row">
                    <div class="col-md-6">
                        <div class ="form-group">
                        <asp:Label  ID="lblPaymentMode" CssClass="p-l-20" runat="server" AssociatedControlID="DropDownPayment">PAYMENT MODE:</asp:Label>
                        <asp:DropDownList  ID="DropDownPayment" CssClass="input100"  runat="server">
                                <asp:ListItem></asp:ListItem>
                                <asp:ListItem>Cash</asp:ListItem>
                                <asp:ListItem>Online Deposit</asp:ListItem>
                                <asp:ListItem>Bank Draft/Pay Order</asp:ListItem>
                        </asp:DropDownList>

                        </div>
                    </div>
                </div>

                

                <div class ="row">
                
                    <div class="col-md-6">
                        <div class ="form-group">
                        <asp:Label  ID="lblWorkShopID" CssClass="p-l-20" runat="server" AssociatedControlID="DropDownWorkShop">WorkShop Name:</asp:Label>
                        <asp:DropDownList ID="DropDownWorkShop" CssClass="input100" runat="server">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                            
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-1"></div>
                    <div class="col-md-2">
                    
                    <asp:RadioButton ID="RbtnSelfPaid" GroupName="Paid" AutoPostBack="true" Text="Self Paid" runat="server" OnCheckedChanged="RbtnSelfPaid_CheckedChanged"    />
                        </div> 

                    <div class="col-md-2"> 
                   
                    <asp:RadioButton ID="RbtnCompanyPaid" GroupName="Paid" AutoPostBack="true" Text="Company Paid" runat="server" OnCheckedChanged="RbtnCompanyPaid_CheckedChanged"    />
                    </div>
                        </div>

                
                
                
                 <div class ="row">
                    <div class="col-md-4">
                        <div class ="form-group">
                    <asp:Label ID="lblBankName" CssClass="p-l-20" runat="server" AssociatedControlID="txtBankName" >BankName:</asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtBankName" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="User ID REQUIRED" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />
                    <asp:TextBox  CssClass="input100" runat="server" ID="txtBankName" />
                        </div>
                    </div>
                 </div>


                <div class ="row">
                    <div class="col-md-4">
                        <div class ="form-group">
                        <asp:Label ID="lblPaymentReference" CssClass="p-l-20" runat="server" AssociatedControlID="txtPaymentReference" >Payment Reference:</asp:Label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPaymentReference" Display="Dynamic" CssClass="field-validation-error alert alert-danger" ErrorMessage="User ID REQUIRED" ValidationGroup="quizvalidation" Text=" *" SetFocusOnError="true" />
                        <asp:TextBox  CssClass="input100" runat="server" ID="txtPaymentReference" />
                        </div>
                    </div>
                </div>
                
                <div class ="row">
                    <div class="col-md-4">
                        <div class ="form-group">
                        <asp:Label ID="Label2" CssClass="p-l-20" runat="server" AssociatedControlID="txtPaymentFees" >Payment Fees:</asp:Label>
                        
                        <asp:TextBox  CssClass="input100" runat="server" ID="txtPaymentFees" />
                        <asp:TextBox  CssClass="input100" runat="server" ID="txtBilling"  />
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtBilling" ControlToValidate="txtPaymentFees" ForeColor="Red" ErrorMessage="Please Select Correct Billing Amount">
                                        </asp:CompareValidator>
                        </div>
                    </div>
                </div>
                

                  <div class ="row">       
                        <div class="col-md-4">
                            <div class ="form-group">
                            <asp:Label ID="lblPaymentDate" CssClass="p-l-20" runat="server" AssociatedControlID="txtPaymentReference" >Realize Date:</asp:Label>
                                <asp:TextBox ID="txtPaymentDate" CssClass="input100" runat="server"></asp:TextBox><asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" ImageUrl="~/images/calendar.png" Height="75px" Width="100px"></asp:ImageButton>
                                
                            <asp:Calendar ID="calPaymentDate" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnDayRender="calPaymentDate_DayRender" OnSelectionChanged="calPaymentDate_SelectionChanged">
                                <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                                <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#CC9966" />
                                <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                                <SelectorStyle BackColor="#FFCC66" />
                                <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                                <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                                </asp:Calendar>
                            </div>
                        </div>
                    </div>

                <div class="row">
                    <div class="col-md-4">
                        <asp:Label ID="lblImage" CssClass="p-l-20" runat="server" AssociatedControlID="FileUpload1" Style="color: #4a7636;">Please attached Image for Payment verification i.e; Bank slip :</asp:Label>

                        <asp:FileUpload ID="FileUpload1" runat="server" onchange="ImagePreview(this);" />
                                        
                        <asp:Image ID="Image1" runat="server" Height="160px" BorderStyle="Solid" BorderWidth="2px" ImageAlign="Middle" Width="160px" />
                    
                    </div>
                </div>
                   

                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click"></asp:Button>
        </div>
                        
                        
                        
            </fieldset>
            <br />
        </div>
       
    </div>
    </div>

    

</asp:Content>

