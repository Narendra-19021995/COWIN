<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="COWINSYSTEM.vaccinoperator.index" %>

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
     <div class="container">
     <div class="row">
     <div class="col-100">
     <center><p class="heading">Vaccination Till Now</p></center>
     <p>Register Benificiary:&nbsp&nbsp&nbsp&nbsp<asp:Label ID="reg" runat="server"/></p><br/>
     <p>Partially Vaccinated:&nbsp&nbsp&nbsp&nbsp<asp:Label ID="pv" runat="server"/></p><br/>
     <p>Fully Vaccinated:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="fv" runat="server"/></p><br/>
     </div>
     </div>
     <div class="col-100">
     <center><p class="heading">Profile</p></center>
     </div>
     <div class="col-100">
     <p>Name:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="name" runat="server"></asp:Label></p><br />
     <p>Mobile No:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="mob" runat="server"></asp:Label></p><br />
     <p>Role:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:Label ID="role" runat="server"></asp:Label></p><br />
     <p>Status:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <asp:Label ID="status" runat="server"></asp:Label></p><br />
     </div>
     </div>
     </form>
</body>

</html>