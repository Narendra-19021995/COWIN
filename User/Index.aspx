<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="COWINSYSTEM.User.Index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../stylesheetHome.css" />
    <link rel="stylesheet" href="../assets/slide.css" />
</head>

<body>
    <form id="form1" runat="server">
    <!--Menu bar-->
    <div class="nav">
       <div class="logo">Cowin system</div>

       <label for="btn" class="icon">
         <span class="fa fa-bars"></span>
       </label>
       <input type="checkbox" class="inputs" id="btn" />
       <ul>
         <li><a href="Index.aspx">Home</a></li>
         <li><a href="../Faq.aspx">FAQ</a></li>
         <li><asp:Button ID="logout" runat="server" Text="LOGOUT" style=" margin-top:10%;" 
                 onclick="logout_Click" /></li>
       </ul>
     </div>
     <!--Modal Content-->
    <div class="container" style=" background-color:Window; margin-top:3%;">
    <div class="row">
    <div class="col-100" style=" border-bottom: 1px solid black;"><p class="heading">Profile</p></div>
    </div>
    <div class="row" style=" margin-top:2%;">
    <div class="col-25"><asp:Label ID="name1" runat="server" Text="Name :" /></div>
    <div class="col-75"><asp:Label ID="name" runat="server"/></div>
    </div>
    <div class="row" style=" margin-top:2%;">
    <div class="col-25"><asp:Label ID="rm" runat="server" Text="Register Mobile No :" /></div>
    <div class="col-75"><asp:Label ID="rmn" runat="server"/></div>
    </div>
    <div class="row" style=" margin-top:2%;">
    <div class="col-25"><asp:Label ID="Yb" runat="server" Text="Year of Birth :" /></div>
    <div class="col-75"><asp:Label ID="year" runat="server"/></div>
    </div>
    <div class="row" style=" margin-top:2%;">
    <div class="col-25"><asp:Label ID="id" runat="server" Text="ID :" /></div>
    <div class="col-75"><asp:Label ID="ids" runat="server"/></div>
    </div>
    <div class="row" style=" margin-top:2%;">
    <div class="col-25"><asp:Label ID="vc" runat="server" Text="Vaccine Name :" /></div>
    <div class="col-75"><asp:Label ID="vaccine" runat="server"/></div>
    </div>
    <div class="row" style=" margin-top:2%;">
    <div class="col-25"><asp:Label ID="d1" runat="server" Text="Dose 1 :" /></div>
    <div class="col-75"><asp:Label ID="dose1" runat="server"/></div>
    </div>
    <div class="row" style=" margin-top:2%;">
    <div class="col-25"><asp:Label ID="d2" runat="server" Text="Dose 2 :" /></div>
    <div class="col-75"><asp:Label ID="dose2" runat="server"/></div>
    </div>
    <div class="row" style=" margin-top:2%;">
    <div class="col-100"><asp:Label ID="status" runat="server"/></div>
    </div>
    </div>
     </form>
</body>

</html>