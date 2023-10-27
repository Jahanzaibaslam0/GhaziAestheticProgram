<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gridviewwithsearch.aspx.cs" Inherits="WebFormsEmailSMS2FA.Gridviewwithsearch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
        table
        {
            border: 1px solid #ccc;
            border-collapse: collapse;
            background-color:#fff;
        }
        table th
        {
            background-color: #B8DBFD;
            color: #333;
            font-weight: bold;
        }
        table th, table td
        {
            padding: 5px;
            border: 1px solid #ccc;
        }
        table, table table td
        {
            border: 0px solid #ccc;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container"> 
    <div class="mainBorder" style="border:1px solid #337ab7; border-radius:40px; padding:20px" >
    <span style="font-size: x-large"><strong>Maintenance</strong></span>
    <div class="table-responsive"> 
    Search Customer:
    <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="Search" AutoPostBack="true"></asp:TextBox>
    <hr />
    <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="false" AllowPaging="true" OnPageIndexChanging = "OnPaging" 
         CellPadding="4" 
        ForeColor="#333333" GridLines="None" style="width:98%">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="RegistrationID" HeaderText="Registration ID" ItemStyle-Width="150" />
            <asp:BoundField DataField="FirstName" HeaderText="First Name" ItemStyle-Width="150" />
            <asp:BoundField DataField="LastName" HeaderText="Last Name" ItemStyle-Width="150" />
            <asp:BoundField DataField="Mobile" HeaderText="Mobile" ItemStyle-Width="150" />
            <asp:BoundField DataField="PMDC" HeaderText="PMDC" ItemStyle-Width="150" />
            <asp:BoundField DataField="Status" HeaderText="Status" ItemStyle-Width="150" />
            <asp:BoundField DataField="VisitorType" HeaderText="Visitor Type" ItemStyle-Width="150" />
            <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-Width="150" />
          
        </Columns>
        <%--<EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />--%>
    </asp:GridView>
         </div>
        </div>
        </div>
    </form>
</body>
</html>
