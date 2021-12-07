<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="COWINSYSTEM.Index" %>

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
     <!--Dash Board-->
     <div class="container">
     <div class="row">
     <div class="col-100">
     <center><p class="heading">Vaccination Till Now</p></center>
     <p>Register Benificiary:&nbsp&nbsp&nbsp&nbsp<asp:Label ID="reg" runat="server"/></p><br/>
     <p>Partially Vaccinated:&nbsp&nbsp<asp:Label ID="pv" runat="server"/></p><br/>
     <p>Fully Vaccinated:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:Label ID="fv" runat="server"/></p><br/>
     </div>
     </div>
     </div>
     <!--Content Page-->
     <div class="">
    <div class="slideshow-container">

    <div class="mySlides fade">
    <img src="assets/image/slide1.jpg" style="width:100%; height:500px">
    <div class="text"><p>"You can use any of the three [COVID booster] vaccines to help you achieve that better protection, so use what's most available, and just go with that. The most important thing is get your booster doses."</p></div>
    </div>

    <div class="mySlides fade">
    <img src="assets/image/slide2.jpg" style="width:100%; height:500px">
    <div class="text1"><p>"This is what I call corrected science. You'll learn, you implement, you study it, and we're trying to make it better....And that's what we're catching up with now—the idea of how we can provide even better protection [with additional COVID vaccine doses]."</p></div> 
    </div>

    <div class="mySlides fade">
    <img src="assets/image/slide3.jpg" style="width:100%; height:500px">
    <div class="text2"><p>"[COVID-19] cannot be attributed to human behavior no matter how much we wish it were so.... As I've said over and over, 'We're riding this tiger, we're not driving it.'"</p></div>
    </div>

    </div>
    <br>

    <div style="text-align:center">
    <span class="dot"></span> 
    <span class="dot"></span> 
    <span class="dot"></span> 
    </div>

    <script>
    var slideIndex = 0;
    showSlides();

    function showSlides() {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        for (i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";
        }
        slideIndex++;
        if (slideIndex > slides.length) { slideIndex = 1 }
        for (i = 0; i < dots.length; i++) {
            dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
    </script>

     </div>
     </form>
</body>

</html>
