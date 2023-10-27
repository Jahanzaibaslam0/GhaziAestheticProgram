<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DropDownwithSearch.aspx.cs" Inherits="WebFormsEmailSMS2FA.DropDownwithSearch" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script src="Scripts/jquery.searchabledropdown-1.0.8.min.js" type="text/javascript"></script>
    <script type="text/javascript">
 $(document).ready(function () {
   $("select").searchable({
      maxListSize: 200, // if list size are less than maxListSize, show them all
      maxMultiMatch: 300, // how many matching entries should be displayed
      exactMatch: false, // Exact matching on search
      wildcards: true, // Support for wildcard characters (*, ?)
      ignoreCase: true, // Ignore case sensitivity
      latency: 200, // how many millis to wait until starting search
      warnMultiMatch: 'top {0} matches ...',
      warnNoMatch: 'no matches ...',
      zIndex: 'auto'
          });
       });

    </script>

    <style>
        body
        {
            font: 11px verdana;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="myselect" Width="300px" runat="server">
                <asp:ListItem Text="select"></asp:ListItem>
                <asp:ListItem Text="Red"></asp:ListItem>
                <asp:ListItem Text="Green" />
                <asp:ListItem Text="Blue" />
                <asp:ListItem Text="Pink" />
                <asp:ListItem Text="Yellow" />
                <asp:ListItem Text="Lime" />
                <asp:ListItem Text="Black" />
                <asp:ListItem Text="Purple" />
                <asp:ListItem Text="Deep Pink" />
                <asp:ListItem Text="Orange" />
                <asp:ListItem Text="Light Pink" />
            </asp:DropDownList>
        </div>

        
    </form>
    <script>
            $(document).ready(function () { $("#myDropDownlistID").Select2(); });
        </script>
</body>
</html>
