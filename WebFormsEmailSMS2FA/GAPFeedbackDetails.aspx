<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GAPFeedbackDetails.aspx.cs" Inherits="WebFormsEmailSMS2FA.GAPFeedbackDetails" %>

    <asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:ScriptManagerProxy runat="server" />   
    <div class="container"> 
    <div class="mainBorder" style="border:1px solid #337ab7; border-radius:40px; padding:20px" >
    <span style="font-size: x-large"><strong>Details</strong></span>
    <div class="table-responsive">  
       <%--Search Customer:
    <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="Search" AutoPostBack="true"></asp:TextBox>
    <hr />--%> 
    <asp:GridView ID="User1" runat="server" AutoGenerateColumns="False" CellPadding="4" 
        ForeColor="#333333" GridLines="None" style="width:98%">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:BoundField DataField="FirstName" HeaderText="FirstName" ItemStyle-Width="100px" HtmlEncode="false" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="LastName" HeaderText="Last Name " ItemStyle-Width="100px" HtmlEncode="false" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="Speciality" HeaderText="Speciality" ItemStyle-Width="100px" HtmlEncode="false" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <%--<asp:BoundField DataField="PracticeLocation" HeaderText="Practice Location" ItemStyle-Width="100px" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="Province" HeaderText="Province" ItemStyle-Width="100px" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="City" HeaderText="City" ItemStyle-Width="100px" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>--%>
        <asp:BoundField DataField="PhoneNumber" HeaderText="Mobile" ItemStyle-Width="100px" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="PMDC" HeaderText="PMDC" ItemStyle-Width="100px"  >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <%--<asp:BoundField DataField="CNIC" HeaderText="CNIC" ItemStyle-Width="100px" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>--%>
        <asp:BoundField DataField="City" HeaderText="City" ItemStyle-Width="100px"   HtmlEncode="false"  >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <%--<asp:BoundField DataField="CreatedDate" HeaderText="CreatedDate" ItemStyle-Width="100px" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>--%>
        <asp:BoundField DataField="Country" HeaderText="Country" ItemStyle-Width="100px" HtmlEncode="false" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-Width="100px" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="Password" HeaderText="Password" ItemStyle-Width="100px" >
            <ItemStyle Width="100px"></ItemStyle>
        </asp:BoundField>
        
      
        
    </Columns>
        <EditRowStyle BackColor="#7C6F57" />
    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#E3EAEB" />
    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F8FAFA" />
    <SortedAscendingHeaderStyle BackColor="#246B61" />
    <SortedDescendingCellStyle BackColor="#D4DFE1" />
    <SortedDescendingHeaderStyle BackColor="#15524A" />
</asp:GridView>
        
        </div>
        </div>
        </div>

</asp:Content>
