<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addvaccinator.aspx.cs" Inherits="COWINSYSTEM.Admin.addvaccinator" %>

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
         <li><a href="addvaccinator.aspx">Add Vaccinator</a></li>
         <li><a href="../Faq.aspx">FAQ</a></li>
         <li><asp:Button ID="logout" runat="server" Text="LOGOUT" style=" margin-top:10%;" onclick="logout_Click" 
                  /></li>
       </ul>
     </div>
     <!--Modal Content-->
     <div class="container" style=" background-color:Aqua; margin-top:5%;">
<center><p class="heading">Add Vaccinator</p></center>
    <div class="row">
      <div class="col-25">
        <label for="mobile">Username</label>
      </div>
      <div class="col-75">
        <asp:TextBox ID="uname" runat="server" class="input" placeholder="Enter Username.." />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <asp:Label ID="mob" runat="server" Text="Mobile No."/>
      </div>
      <div class="col-75">
        <asp:TextBox ID="mobile" runat="server" class="input" placeholder="Enter Mobile No.. " />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <asp:Label ID="role" runat="server" Text="Role"/>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="role_list" runat="server">
          <asp:ListItem Value="0" Enabled="true">--Select--</asp:ListItem>
          <asp:ListItem Value="1">Vaccinator</asp:ListItem>
          <asp:ListItem Value="2">Verifier</asp:ListItem>
          </asp:DropDownList>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <asp:Label ID="block" runat="server" Text="Block"/>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="block_list" runat="server">
          <asp:ListItem Value="0" Enabled="true">--Select--</asp:ListItem>
          <asp:ListItem Value="1">Urban</asp:ListItem>
          <asp:ListItem Value="2">Rular</asp:ListItem>
          </asp:DropDownList>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <asp:Label ID="district_list" runat="server" Text="District"/>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="D_List" runat="server">
          <asp:ListItem Value="0" Enabled="true">--Select--</asp:ListItem>
          <asp:ListItem Value="1">Mumbai</asp:ListItem>
          <asp:ListItem Value="2">Pune</asp:ListItem>
          <asp:ListItem Value="3">Nagpur</asp:ListItem>
          <asp:ListItem Value="4">Satara</asp:ListItem>
          <asp:ListItem Value="5">Nashik</asp:ListItem>
          <asp:ListItem Value="6">Solapur</asp:ListItem>
          </asp:DropDownList>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <asp:Label ID="status" runat="server" Text="Status"/>
      </div>
      <div class="col-75">
          <asp:DropDownList ID="status_list" runat="server">
          <asp:ListItem Value="0" Enabled="true">--Select--</asp:ListItem>
          <asp:ListItem Value="1">Active</asp:ListItem>
          <asp:ListItem Value="2">Inactive</asp:ListItem>
          </asp:DropDownList>
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <asp:Label ID="pass" runat="server" Text="Password"/>
      </div>
      <div class="col-75">
         <asp:TextBox ID="passw" runat="server" class="input" placeholder="Enter password.."/>
      </div>
    </div>
    <div class="row">
    <div class="col-25">
    
    </div>
    <div class="col-75">
      <asp:Button ID="Submit" runat="server" class="input" Text="Submit" 
            onclick="Submit_Click"/>
      <input type="reset" value="Cancel"/>
    </div>
    </div>
    </div>
     </form>
</body>

</html>