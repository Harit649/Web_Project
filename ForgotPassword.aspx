<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ForgotPassword.aspx.cs" Inherits="ForgotPassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
  <title>SundayPyjama</title>
  <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta http-equiv="X-UA-Compatible" content="IE-edge">

    <link rel="icon" type="image/png" href="logoimage.png" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link href='https://fonts.googleapis.com/css?family=Playfair Display' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Poppins' rel='stylesheet'>
  <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet'>

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

  </script>
  

  <script>

    $(document).ready(function myfunction() {
        $("#btnCart").click(function myfunction() {
            window.location.href = "/Cart.aspx";
        });
    });

</script>

  <style>

  	.buttonstyle{
      color: #F05D85;
      margin-left: 10px;  
      border-color: #F05D85;
      font-family: Playfair Display;
    }

    .buttonstyle:hover, .buttonstyle:visited, .buttonstyle:active{
      background-color: #F05D85;
      color:  white;
      border-color: #F05D85;
    }

    .navheaders{
      background-color:  #3B3856;
      font-family: Playfair Display;
      padding: 10px;
    }
    
    
    .fontss{
      color: white;
    }

    .chocolate:hover{
      background-color: #34314E;
    }

    .ddstyle{
      border-top-left-radius: 0px;
      border-top-right-radius: 0px;
      border-bottom-left-radius: 10px;
      border-bottom-right-radius: 10px;
      background-color: #3B3856;
      border: none;
      z-index: 2;
    }

    .hovereffects{
      color: #fff;
    }

    .hovereffects:hover{
      color: #fff;
      background-color: #34314E;
    }

    .buttonstyle:hover span{
      background-color: #fff;
      color: rgb(99,166,77);
      font-size: 13px;
    }

    .adbanner{
      color: #000;
      font-family: Poppins;
      padding: 15px;
      text-align: center;
      margin: 5px;
      margin-top: 10px;
      font-size: 16px;
    }

    .addvertise{
      border: none;
    }

    .sidebanners{
      margin-top: 80px;
      margin-bottom: 10px;
    }

    .prohover:hover{
      color: #e06d31;
    }


.brand-wrapper {
  margin-bottom: 19px; }

  .brand-wrapper .logo {
    height: 37px; }

.login-card {
  border: 0;
  border-radius: 27.5px;
  box-shadow: 0 10px 30px 0 rgba(172, 168, 168, 0.43);
  overflow: hidden; }

  .login-card-img {
    border-radius: 0;
    position: absolute;
    width: 100%;
    height: 100%;
    -o-object-fit: cover;
       object-fit: cover; }

  .login-card .card-body {
    padding: 85px 60px 60px; }


    @media (max-width: 422px) {
      .login-card .card-body {
        padding: 35px 24px; } }

  .login-card-description {
    font-size: 25px;
    color: #000;
    font-weight: normal;
    margin-bottom: 23px; }

  .login-card form {
    max-width: 326px; }

  .login-card .form-control {
    border: 1px solid #d5dae2;
    padding: 15px 25px;
    margin-bottom: 20px;
    min-height: 45px;
    font-size: 13px;
    line-height: 15;
    font-weight: normal; }

    .login-card .form-control::-webkit-input-placeholder {
      color: #919aa3; }

    .login-card .form-control::-moz-placeholder {
      color: #919aa3; }

    .login-card .form-control:-ms-input-placeholder {
      color: #919aa3; }

    .login-card .form-control::-ms-input-placeholder {
      color: #919aa3; }

    .login-card .form-control::placeholder {
      color: #919aa3; }

  .login-card .login-btn {
    padding: 13px 20px 12px;
    background-color: #000;
    border-radius: 4px;
    font-size: 17px;
    font-weight: bold;
    line-height: 20px;
    color: #fff;
    margin-bottom: 24px; }

    .login-card .login-btn:hover {
      border: 1px solid #000;
      background-color: transparent;
      color: #000; }

  .login-card .forgot-password-link {
    font-size: 14px;
    color: #919aa3;
    margin-bottom: 12px; }

  .login-card-footer-text {
    font-size: 16px;
    color: #0d2366;
    margin-bottom: 60px; }

    @media (max-width: 767px) {
      .login-card-footer-text {
        margin-bottom: 24px; } }

  .login-card-footer-nav a {
    font-size: 14px;
    color: #919aa3; }


  </style>
</head>
<body>

<!--Main Header Start-->
<form id="form1" runat="server">
    <nav class ="navbar navbar-expand-lg navbar-light bg-light" role ="navigation">
            <div class ="container ">
                <div class ="navbar-header">
                    <a class="navbar-brand" href="Default.aspx">
                        <img src="images/logoimage.png" width="50" height="50" alt="">
                    </a>
                    <a class="navbar-brand" style="font-family: Playfair Display; font-size: 28px; color: #F05D85" href="Default.aspx">SundayPyjama</a>   
                </div>
                <div class ="collapse navbar-collapse">
                    <ul class="navbar-nav mr-auto">
                      <li class="nav-item">
                        <a class="nav-link disabled" href="#"></a>
                      </li>

                      <li class="nav-item">
                        <a class="nav-link disabled" href="#"></a>
                      </li>

                      <li class="nav-item">
                        <a class="nav-link disabled" href="#"></a>
                      </li>

                      <li class="nav-item">
                        <a class="nav-link disabled" href="#"></a>
                      </li>
                    </ul>

                    <ul class ="nav navbar-nav navbar-right">
                         <li ><a href ="SignUp.aspx">
                             <button runat="server" class="btn  my-2 my-sm-0 buttonstyle" type="button">
                                            SignUp

                         </button></a></li>
                        <li ><a href ="SignIn.aspx">
                             <button class="btn  my-2 my-sm-0 buttonstyle" type="button" runat="server">
                                            SignIn
                             </button>
                         </a></li>
                    </ul>
               
            </div>
        </nav>


<!--Main Header End-->


<!--Menu Header End-->
<nav class="navbar navbar-expand-lg navbar-light navheaders ">
  
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto " style="margin-left: 195px;">

      <li class="nav-item dropdown">
        <a class="nav-link chocolate " href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <i class="fa fa-bars" aria-hidden="true" style="color: white; "></i>
        </a>
        <div class="dropdown-menu ddstyle" aria-labelledby="navbarDropdown">
          <a class="dropdown-item hovereffects" href="Products.aspx">All Products</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item hovereffects" href="Products.aspx">Men</a>
          <a class="dropdown-item hovereffects" href="Products.aspx">Women</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item hovereffects" href="Products.aspx">Accessories</a>
          <a class="dropdown-item hovereffects" href="Products.aspx">Festive Closets</a>
          <a class="dropdown-item hovereffects" href="Products.aspx">Bridal Special</a>
        </div>
      </li>

      <li class="nav-item active ">
        <a class="nav-link chocolate" href= "Products.aspx" style="color: white; margin-left: 15px;">All Products <span class="sr-only"></span></a>
      </li>

      <li class="nav-item">
        <a class="nav-link chocolate" href="Products.aspx" style="color: white;  margin-left: 8px;">Men</a>
      </li>

      <li class="nav-item">
        <a class="nav-link chocolate" href="Products.aspx" style="color: white; margin-left: 8px;">Women</a>
      </li>

      <li class="nav-item">
        <a class="nav-link chocolate" href="Products.aspx" style="color: white; margin-left: 8px;">Accessories</a>
      </li>

      <li class="nav-item">
        <a class="nav-link chocolate" href="Products.aspx" style="color: white; margin-left: 8px;">Festive Closets</a>
      </li>

      <li class="nav-item">
        <a class="nav-link chocolate" href="Products.aspx" style="color: white; margin-left: 8px;">Bridal Special</a>
      </li>

    
    </ul>
    
  </div>
</nav>

<!--Menu Header End-->

      <!--Forgot Pass Start-->
    
    
    <div class="container">
            <div class="form-horizontal">
                <br />
                <h2 style="font-family: Playfair Display; font-size: 34px ">
                    Recover Password
                </h2>
                <hr />
                <h3 style="font-family: Poppins; font-size: 22px "> Please Enter your Email Address, We will send you the recovery link for your password.</h3>
                <div class="form-group">
                    <br /><asp:Label ID="lblEmail" CssClass="col-md-2 control-label" runat="server" Text="Enter Your Email Address"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtEmailID"  CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" style="font-family: Poppins;" runat="server" ErrorMessage="Enter Your Email" CssClass="text-danger" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2"></div>

                    <div class="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass="btn  my-2 my-sm-0 buttonstyle" runat="server" Text="Send" OnClick="btnResetPass_Click" />
                        <br />
                        <asp:Label ID="lblResetPassMsg" CssClass="text-success" runat="server"></asp:Label>
                    </div>
                </div>

            </div>
        </div> 
    </form>


    <!--Forgot Pass End-->





<!--Footer  Start-->

  <!-- Footer -->
<footer class="page-footer font-small mdb-color pt-4" style="background-color: rgb(75,83,108); font-family: Poppins; color: white; margin-top: 40px;">

  <!-- Footer Links -->
  <div class="container text-center text-md-left">

    <!-- Footer links -->
    <div class="row text-center text-md-left mt-3 pb-3">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
        <a href="Default.aspx" style="text-decoration: none"><h6 class="mb-4" style="font-family: Playfair Display; color: #F05D85; font-size: 35px;">SundayPyjama</h6></a>
        <p>We wish that you explore <br>more and have fun!</p>
      </div>
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none">

      <!-- Grid column -->
      <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Products</h6>
        <p>
          <a href="#!" style="color: white; text-decoration: none;">All Products</a>
        </p>
        <p>
          <a href="#!" style="color: white; text-decoration: none;">Men</a>
        </p>
        <p>
          <a href="#!" style="color: white; text-decoration: none;">Women</a>
        </p>
        <p>
          <a href="#!" style="color: white; text-decoration: none;">Accesories</a>
        </p>
      </div>
      <!-- Grid column -->

      <hr class="w-100 clearfix d-md-none">

      <!-- Grid column -->
      <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3" >
        <h6 class="text-uppercase mb-4 font-weight-bold">Useful links</h6>
        <p>
          <a href="#!" style="color: white; text-decoration: none;">Your Cart</a>
        </p>
        <p>
          <a href="#!" style="color: white; text-decoration: none;">SignUp</a>
        </p>
        <p>
          <a href="#!" style="color: white; text-decoration: none;">Terms & Policy</a>
        </p>
        <p>
          <a href="#!" style="color: white; text-decoration: none;">Help</a>
        </p>
      </div>

      <!-- Grid column -->
      <hr class="w-100 clearfix d-md-none">

      <!-- Grid column -->
      <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3">
        <h6 class="text-uppercase mb-4 font-weight-bold">Contact</h6>
        <p>
          <i class="fa fa-home mr-2"></i>Rouen,Normandy,France</p>
        <p>
           <i class="fa fa-envelope mr-2"></i>sundaypyjama@gmail.com</p>
        <p>
          <i class="fa fa-phone mr-2"></i>+33 07 77 44 55 66</p>
        <p>
          <i class="fa fa-phone mr-2"></i>+33 07 77 44 55 67</p>
      </div>
      <!-- Grid column -->

    </div>
    <!-- Footer links -->

    <hr>

    <!-- Grid row -->
    <div class="row d-flex align-items-center">

      <!-- Grid column -->
      <div class="col-md-7 col-lg-8">

        <!--Copyright-->
        <p class="text-center text-md-left">© 2020 Copyright:
          <a href="#" style="color: white; text-decoration: none;">
            SundayPyjama.com
          </a>
        </p>

      </div>
      <!-- Grid column -->

      <!-- Grid column -->
      <div class="col-md-5 col-lg-4 ml-lg-0">

        <!-- Social buttons -->
        <div class="text-center text-md-right">
          <ul class="list-unstyled list-inline">
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1" style="color: white; text-decoration: none;">
                <i class="fa fa-facebook"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1" style="color: white; text-decoration: none;">
                <i class="fa fa-twitter"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1" style="color: white; text-decoration: none;">
                <i class="fa fa-google"></i>
              </a>
            </li>
            <li class="list-inline-item">
              <a class="btn-floating btn-sm rgba-white-slight mx-1" style="color: white; text-decoration: none;">
                <i class="fa fa-linkedin"></i>
              </a>
            </li>
          </ul>
        </div>

      </div>
      <!-- Grid column -->

    </div>
    <!-- Grid row -->

  </div>
  <!-- Footer Links -->

</footer>
<!-- Footer -->

<!--Footer  End-->

</form>



</body>
</html>

