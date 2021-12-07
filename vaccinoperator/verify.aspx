<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verify.aspx.cs" Inherits="COWINSYSTEM.vaccinoperator.verify" %>

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
         <li><a href="verify.aspx">Verify Benificiary</a></li>
         <li><a href="../Faq.aspx">FAQ</a></li>
         <li><asp:Button ID="logout" runat="server" Text="LOGOUT" style=" margin-top:10%;" 
                 onclick="logout_Click" /></li>
       </ul>
     </div>
     <!--Modal Content-->
     <div class="container_1" style=" background-color:Aqua; margin-top:5%;">
     <div class="row">
     <div class="col-100">
     <center><p class="heading">Verify Beneficiary</p></center>
     </div>
     </div>
     <div class="row" style=" margin-top:2%;">
     <div class="col-25">
         <asp:TextBox ID="mobile" runat="server" placeholder="Enter Mobile No..."></asp:TextBox>
     </div>
     <div class="col-75">
     <asp:Button ID="search" runat="server" Text="Search" style=" margin-left:2%;" 
             onclick="search_Click" />
     </div>
     </div>
     <div class="row" style=" margin-top:2%;">
     <div class="col-100"><asp:Label ID="name" runat="server"></asp:Label></div>
     </div>
     <div class="row" style=" margin-top:2%;">
     <div class="col-33">
         <asp:Label ID="Year" runat="server" ></asp:Label>
     </div>
     <div class="col-35">
         <asp:Label ID="rmn" runat="server" ></asp:Label>
         </div>
     <div class="col-32">
         <asp:Label ID="id" runat="server" ></asp:Label>
     </div>
     </div>
     <div class="row">
     <div class="col-25"><asp:Label ID="Vname" runat="server" Text="Vaccinated Vaccine:"></asp:Label></div>
     <div class="col-75"><asp:Label ID="v_name" runat="server"></asp:Label></div>
     </div>
     <div class="row">
     <div class="col-25"><asp:Label ID="vaccine" runat="server" Text="Vaccine name:"></asp:Label></div>
     <div class="col-75"><asp:DropDownList ID="vacc" runat="server" required>
     <asp:ListItem Value="0">--Select--</asp:ListItem>
     <asp:ListItem Value="1">Covishield</asp:ListItem>
     <asp:ListItem Value="2">Co-Vaxin</asp:ListItem>
     <asp:ListItem Value="3">Pfizer</asp:ListItem>
     </asp:DropDownList></div>
     </div>
     <div class="row" style=" margin-top:2%;">
     <div class="col-33"><asp:Label ID="Dose_1" runat="server" Text="Dose1" ></asp:Label>
     <asp:Button ID="D_1" runat="server" Text="Vaccine" 
             style=" margin-right:5%; float:right;" onclick="D_1_Click" />
     </div>
     <div class="col-35">
     <asp:Label ID="Dose_2" runat="server" Text="Dose2" ></asp:Label>
     <asp:Button ID="D_2" runat="server" Text="Vaccine" 
             style=" margin-right:5%;  float:right;" onclick="D_2_Click" />
     </div>
     <div class="col-32"><asp:Label ID="con" runat="server"></asp:Label></div>
     </div>
     </div>
     </form>
</body>

</html>