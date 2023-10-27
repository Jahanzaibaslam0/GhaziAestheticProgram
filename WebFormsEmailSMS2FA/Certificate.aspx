<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Certificate.aspx.cs" Inherits="WebFormsEmailSMS2FA.Certificate" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css" media="print">
    @page 
    {
        size: auto;   /* auto is the initial value */
        margin: 0mm;  /* this affects the margin in the printer settings */
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Label ID="Label1"  Font-Size="XX-Large"  Font-Bold="true" runat="server" Text="Label" style="z-index: 2; left: 650px; top: 580px; font-family:Arial; position: absolute;"></asp:Label>
    <asp:Label ID="Label2" Font-Size="XX-Large" Font-Bold="false" runat="server"  style="z-index: 2; left: 650px; font-family:Arial; top: 670px; position: absolute;"></asp:Label>
    <img alt="Certificate" src="Images/PAADS-2019_Certificate-2.jpg" />
        
&nbsp;</form>
</body>
</html>

