<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="OnSiteWorkshopandCourse.aspx.cs" Inherits="WebFormsEmailSMS2FA.WorkshopandCourse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div>
    
    <div class="container">

<div class="row">
    <div class="col-md-12">
        <h1 class="heading">ADD WORKSHOP AND COURSES</h1>
    </div>
</div>
<br/><br/>
<div class="row">
    <div class="col-md-6">
        <div class="form-group">
            
            
            <asp:Label ID="lblUserName" runat="server" Text="User Name"></asp:Label>
            
            <asp:DropDownList ID="ddlUser" CssClass="form-control" runat="server">
                <asp:ListItem Text="" Value="-1"></asp:ListItem>
                 <asp:ListItem Text="Online Deposit" Value="0"></asp:ListItem>
                 <asp:ListItem Text="Bank Draft / pay order" Value="1"></asp:ListItem>
                 <asp:ListItem Text="Cash" Value="2"></asp:ListItem>
            </asp:DropDownList>
        
        </div>
    </div>
    <div class="col-md-6">
        <div class="form-group">
            
            <asp:Label ID="lblPayMode" runat="server" Text="Payment Mode"></asp:Label>
            
            <asp:DropDownList ID="ddlPayMode" CssClass="form-control" runat="server">
                <asp:ListItem Text="" Value="-1"></asp:ListItem>
                 <asp:ListItem Text="Online Deposite" Value="0"></asp:ListItem>
                 <asp:ListItem Text="Bank Draft / pay order" Value="1"></asp:ListItem>
                 <asp:ListItem Text="Cash" Value="2"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered table-condensed table-stripped">
            <tr>
                <th colspan="2">Conference Registration Mandatory</th>
            </tr>
            <tr>
                <td>For Early Birds (till 15th June Fee PKR: 10,000/-)</td>
                <td class="text-center">
                    <asp:RadioButton ID="rdEarly" GroupName="ConReg" runat="server" OnCheckedChanged="rdEarly_CheckedChanged" />

                </td>
            </tr>
            <tr>
                <td>Normal Registration (From 16th June to 5th July Fee PKR: 12,000/-)
                </td>
                <td class="text-center">
                    <asp:RadioButton ID="rdnormal" GroupName="ConReg" runat="server" OnCheckedChanged="rdnormal_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>On Site Registration Fee PKR: 15,000/-</td>
                <td class="text-center">
                    <asp:RadioButton ID="rdSite" GroupName="ConReg" runat="server" OnCheckedChanged="rdSite_CheckedChanged" />                   

                </td>
            </tr>
        </table>
    </div>
</div>


<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered table-condensed table-stripped Workshop">
            <tr>
                <th colspan="5">Workshop's</th>
            </tr>
            <tr class="tableHeader">
                <td>Your Option</td>
                <td>Fillers</td>
                <td>Toxin</td>
                <td>Threads</td>
                <td>Threads Rejuvenation</td>
            </tr>
            <tr>
                <td>Hands On - Basic</td>
                <td class="text-center">
                    <asp:CheckBox ID="chkBasicFil" runat="server" OnCheckedChanged="chkBasicFil_CheckedChanged" />
                </td>
                <td class="text-center">
                    <asp:CheckBox ID="chkBasicToxin" runat="server" OnCheckedChanged="chkBasicToxin_CheckedChanged" />
                </td>
                <td class="text-center">
                    <asp:CheckBox ID="chkBasicThreads" runat="server" OnCheckedChanged="chkBasicThreads_CheckedChanged" />
                </td>
                <td class="text-center">
                    <asp:CheckBox ID="chkBasicMono" runat="server" OnCheckedChanged="chkBasicMono_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td>Hands On - Advance</td>
                <td class="text-center">
                    <asp:CheckBox ID="chkAdvFill" runat="server" OnCheckedChanged="chkAdvFill_CheckedChanged" />
                </td>
                <td class="text-center">
                    <asp:CheckBox ID="chkAdvToxin" runat="server" OnCheckedChanged="chkAdvToxin_CheckedChanged" />
                </td>
                <td></td>
                <td></td>
            </tr>
        </table>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <table class="table table-bordered">
        <tr>
            <th colspan="3" class="text-center">Laser Course</th>
        </tr>
        <tr>
            <td>Laser Course by Escad</td>
            <td class="text-center">
                <asp:RadioButton ID="rdLaserYes" Text="Yes" GroupName="LaserGrp" runat="server" OnCheckedChanged="rdLaserYes_CheckedChanged" />
            </td>
            <td class="text-center">
                <asp:RadioButton ID="rdLaserNo" Text="No" GroupName="LaserGrp" runat="server" OnCheckedChanged="rdLaserNo_CheckedChanged" />
            </td>
        </tr>
    </table>
    </div>
</div>

<div class="row text-center">
    <div class="col-md-6">
        <asp:RadioButton ID="rdSelfPaid" Text="Self Paid" AutoPostBack="true" GroupName="payMethod" runat="server" />
    </div>
    <div class="col-md-6">
        <asp:RadioButton ID="rdCompanyPaid" Text="Company Paid" AutoPostBack="true" GroupName="payMethod" runat="server" />
    </div>
</div>

<div class="row">
    <div class="col-md-6">
        <div class="form-group">
        <label for="BankName">Bank Name</label>
            <asp:TextBox ID="txtBankName" CssClass="form-control" runat="server" />
    </div>
    </div>
    <div class="col-md-6">
            <div class="form-group">
                    <label for="BankName">Payment Reference</label>
            <asp:TextBox ID="txtPayRef" CssClass="form-control" runat="server"></asp:TextBox>
                </div>
    </div>
</div>

<div class="row">
        <div class="col-md-6">
            <div class="form-group">
            <label for="BankName">Payment Fees</label>
            <asp:TextBox ID="txtPayfee" CssClass="form-control" runat="server"></asp:TextBox>
        </div>
        </div>
        <div class="col-md-6">
                <div class="form-group">
                        <label for="BankName">Realize Date</label>
                    <asp:TextBox ID="txtDate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                    </div>
        </div>
    <div class="col-md-6">
                <div class="form-group">
                       
                    <asp:Label runat="server" ID="lblEmail" Visible="false" >Email Address</asp:Label>
                    <asp:TextBox ID="txtEmail" Visible="false" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                    </div>
        </div>
    </div>

<div class="row">
    <div class="col-md-4">
        <asp:Label ID="lblImage" runat="server">Please Attach Payment Evidence

        </asp:Label>
        <asp:FileUpload ID="fuImage" CssClass="form-control" runat="server" />
    </div>
    </div>
        <br />
<div class="row">
    
    <div class="col-md-4">
       
        <asp:Button ID="BtnRefresh" runat="server" Text="Refresh" autopostback="true" Width="150px" ForeColor="White" BackColor="#337ab7" />
        <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click"  Width="150px" ForeColor="White" BackColor="#337ab7" />
        <asp:Button ID="BtnValidate" runat="server" Text="Validate" OnClick="BtnValidate_Click" Width="150px" ForeColor="White" BackColor="#00ff00" />
        <asp:Button ID="BtnCancel" runat="server" Text="Cancel" OnClick="BtnCancel_Click" Width="150px" ForeColor="White" BackColor="#ff0000" />
    </div>
     <div class="col-md-4"></div>
    <div class="col-md-4"></div> 


    </div>


    </div>


    </div>
 
</asp:Content>
