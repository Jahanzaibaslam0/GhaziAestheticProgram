<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReceiptPayment.aspx.cs" Inherits="WebFormsEmailSMS2FA.ReceiptPayment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .about {
            font-weight: bold;
            border-bottom: 2px solid #337ab7;
            font-size: 40px;
        }

        .header {
            font-weight: bold;
            border-bottom: 2px solid #337ab7;
            font-size: 20px;
        }

        .borders {
            border: 1px solid #337ab7;
            /*border-radius: 40px;*/
            padding: 20px;
        }
    </style>


    <div class="container">

        <div class="row">
            <div class="col-md-12">
                <h1 class="heading">PAYMENT RECEIPT</h1>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            

               <div class="col-md-3">
                <div class="form-group">
                    <asp:Label ID="lblPaymentID" runat="server" Text="PAYMENT ID:" Font-Bold="true"></asp:Label>
                    </div>
                    </div>
                    <div class="col-md-3">
                <div class="form-group">
                    <asp:Label ID="lblPaymentID1" runat="server" Text=""></asp:Label>
                    </div>
                    </div>


                
            
            
                    <div class="col-md-3">
                <div class="form-group">
                <asp:Label ID="lblPaydate" runat="server" Text="PAYMENT DATE:" Font-Bold="true"></asp:Label>
                </div>
                </div>
                <div class="col-md-3">
                <div class="form-group">
                <asp:Label ID="lblPaymentDate" runat="server" Text=""></asp:Label>
                </div>
                </div>
                    
                    

               
        </div>
        <div class="row">
            <div class="col-md-3">
                <div class="form-group">


                    <asp:Label ID="lblName" runat="server" Text="NAME:" Font-Bold="true"></asp:Label>
                    </div>
                    </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label ID="lblName1" runat="server" Text=""></asp:Label>
                    </div>
                    </div>

                
            
            
                    <div class="col-md-3">
                <div class="form-group">


                    <asp:Label ID="lblPmdc" runat="server" Text="PMDC #:" Font-Bold="true"></asp:Label>
                    </div>
                    </div>
            <div class="col-md-3">
                <div class="form-group">
                    <asp:Label ID="lblPmdcNo" runat="server" Text=""></asp:Label>
                    </div>
                    </div>
                    
                    

                
        </div>
        <div class="row">
                <div class="col-md-3">
                <div class="form-group">
                <asp:Label ID="lblPaymentMode" runat="server" Text="PAYMENT MODE:" Font-Bold="true"></asp:Label>
                </div>
                </div>
                <div class="col-md-3">
                <div class="form-group">
                <asp:Label ID="lblPaymentMode1" runat="server" Text=""></asp:Label>
                </div>
                </div>

                    
                    


               
            
            <div class="col-md-6">
                <div class="form-group">

                    <%--<asp:Label ID="lblCity" runat="server" Text="CITY #:"></asp:Label>
                    <asp:Label ID="lblCity1" runat="server" Text=""></asp:Label>--%>

                </div>
            </div>
        </div>
        <div class="borders">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading">
                        <asp:Label ID="lblDetail" runat="server" Text="DETAILS:"></asp:Label>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group header">


                        <asp:Label ID="lblDesc" runat="server" Text="DESCRIPTION:"></asp:Label>



                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group header">

                        <asp:Label ID="lblAmount" runat="server" Text="AMOUNT:"></asp:Label>


                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">


                        <asp:Label ID="lblRegistration" runat="server" Text="REGISTRATION:" Font-Bold="true"></asp:Label>
                        <br />
                        <asp:Label ID="lblWorkshop" runat="server" Text="WORKSHOP" Font-Bold="true"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblTotal" runat="server" Text="TOTAL" Font-Bold="true"></asp:Label>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">

                        <asp:Label ID="lblRegistrationAmount" runat="server" Text="10,000"></asp:Label>
                        <br />
                        <asp:Label ID="lblWorkshopAmount" runat="server" Text="30,000"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="lblTotalAmount" runat="server" Text="40,000"></asp:Label>

                    </div>
                </div>
            </div>

            </div>
        <br />

                <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="lblAmountinWords" runat="server" Text="AMOUNT IN WORDS:" Font-Bold="true"></asp:Label>
                        <asp:Label ID="lblAmountinWords1" runat="server" Text=""></asp:Label>
                        </div>
                    </div>
                    </div>

        



    </div>
</asp:Content>
