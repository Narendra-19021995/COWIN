<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="COWINSYSTEM.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="stylesheetHome.css" />
    <link rel="stylesheet" href="assets/slide.css" />
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
         <li><a href="AdminLogin.aspx">Administrator</a></li>
         <li><a href="VaccinatorLogin.aspx">Vaccinator</a></li>
         <li><a href="#" id="myBtn">beneficiary</a></li>
         <li><a href="Faq.aspx">FAQ</a></li>
       </ul>
     </div>
     <!--Modal Content-->
     <div id="myModal" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <div class="row">
    <center>
    <p style="font-size:xx-large; font-family:Cambria; ">Login And Register</p>
    </center>
    </div>
    <div class="row">
  <div class="column">
  <center>
   <a href="UserLogin.aspx" class="anker" style="float:right;">
   <div class="button"><span>LOGIN</span></div>
   </a>
  </center>
  </div>
  <div class="column">
  <center>
     <a href="userregister.aspx" class="anker" style="float:left;">
     <div class="button"><span>REGISTER</span></div>
     </a>
  </center>
  </div>
</div>
  </div>

  </div>
     <script>
         // Get the modal
         var modal = document.getElementById("myModal");

         // Get the button that opens the modal
         var btn = document.getElementById("myBtn");


         // Get the <span> element that closes the modal
         var span = document.getElementsByClassName("close")[0];

         // When the user clicks the button, open the modal 
         btn.onclick = function () {
             modal.style.display = "block";
         }


         // When the user clicks on <span> (x), close the modal
         span.onclick = function () {
             modal.style.display = "none";
         }

         // When the user clicks anywhere outside of the modal, close it
         window.onclick = function (event) {
             if (event.target == modal) {
                 modal.style.display = "none";
             }
         }

     </script>

     <!--Content Page-->
    <div class="container" style=" background-color:Aqua; margin-top:5%;">
<center><p class="heading">Admin Login</p></center>
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
        <asp:Label ID="Pass" runat="server" Text="Password"/>
      </div>
      <div class="col-75">
        <asp:TextBox ID="password" runat="server" TextMode="Password" class="input" placeholder="Enter Password.." />
      </div>
    </div>
    
    <div class="row">
    <div class="col-25">
    
    </div>
    <div class="col-75">
      <asp:Button ID="Submit" runat="server" class="input" Text="Login" onclick="Submit_Click" 
             />
      <input type="reset" value="Cancel"/>
    </div>
    </div>
    </div>     
     </form>
</body>

</html>