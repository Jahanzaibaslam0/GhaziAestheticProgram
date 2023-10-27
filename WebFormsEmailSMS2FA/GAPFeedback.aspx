<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GAPFeedback.aspx.cs" Inherits="WebFormsEmailSMS2FA.GAPFeedback" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="./main.css">


 	<script type="text/javascript">
        $(document).ready(function () {
            $("#modal-id").modal('show');
        });
</script>
<style>
.next
{
    cursor: pointer;
}

.mainImg
{
    margin: auto;
    height: 650px;
}

.row
{
    margin: 0;
    padding: 0;
}

.centered {
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
  }


  .text-block {
    position: absolute;
    bottom: 270px;
  }

  .txtSkin
  {
      margin-left: 14%;
      width: 98%;
  }

  .btnSubmit
  {
      margin-left: 318%;
      width: 130%;
  }

</style>

</head>
<body>
    <form runat="server">
<div class="modal" id="modal-id"  style="width: 100%;" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-body">
                <img src="GAPImage/1.png" alt="" style="height: 550px;margin: auto" class="img img-responsive">
            </div>
            <div class="modal-footer" style="background-color: #f16682;border: 0px;">
             <img src="GAPImage/button.png" alt="" style="float: right;" id="next" data-dismiss="modal" class="img img-responsive next">
            </div>
        </div>
    </div>
</div>

<div class="container">
<div class="row">
    <div class="col-md-12">
        <img src="GAPImage/2.png" alt="" class="img img-responsive mainImg">
        <div class="row">
            <div class="col-md-4"></div>
            <div class="col-md-5">
                    <div class="text-block"> 
                        <asp:TextBox ID="TextBox1" CssClass="form-control txtSkin" runat="server"></asp:TextBox>    <!-- <p>What a beautiful sunrise</p> -->
                          </div>
                    <div class="text-block">
                        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn btn-default btnSubmit" OnClick="Button1_Click" />
                    </div>
                <img src="GAPImage/button.png" alt="" style="float: right;" id="next" class="img img-responsive next">
            </div>
            <div class="col-md-3"></div>
        </div>
        
    </div>
</div>
</div>





        </form>

</body>
</html>
