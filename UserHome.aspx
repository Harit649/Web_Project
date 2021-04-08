<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserHome.aspx.cs" Inherits="UserHome" %>

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
  <script src="http://code.jquery.com/jquery-3.5.1.js" integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" crossorigin="anonymous">

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

    .buttonstyle:hover span{
      background-color: #fff;
      color: rgb(99,166,77);
      font-size: 13px;
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
                        <li class ="active"><a href ="Cart.aspx"><button id="btnCart" class="btn my-2 my-sm-0 buttonstyle" type="button">
                                            Cart <span class="badge badge-success badge-pill rounded" style="padding: 6px; margin-left: 8px; font-family: Poppins;" id="pCount"  runat="server"></span>

                         </button></a> </li>
                         
               
                        <li>
                            <asp:Button ID="btnLogin" CssClass ="btn navbar-btn my-2 my-sm-0 buttonstyle" runat="server" Text="SignIn" OnClick="btnLogin_Click" />
                            <asp:Button ID="btnlogout" CssClass ="btn navbar-btn my-2 my-sm-0 buttonstyle" runat="server" Text="Sign Out" OnClick="btnlogout_Click" />                        </li>
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

<!--Banner Start-->
<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <a href ="Products.aspx"><img class="d-block w-100" src="images/banner6.jpg" alt="First slide"></a>
    </div>
    <div class="carousel-item">
      <a href ="Products.aspx"><img class="d-block w-100" src="images/banner5.png" alt="Second slide"></a>
    </div>
    <div class="carousel-item">
      <a href ="Products.aspx"><img class="d-block w-100" src="images/banner1.png" alt="third slide"></a>
    </div>
    
  </div>
 
</div>
<!--Banner End-->


<!--Advertise  Start-->

<div class="container">
  <div class="row">
    <div class="col-sm adbanner" style="background-color: #D5ECF7;">
      FREE STANDARD DELIVERY
      <div  style="font-family: Montserrat; color: #392F2F; font-size: 12px;">ON ORDER ABOVE $40</div>
    </div>
    <div class="col-sm  adbanner" style="background-color: #F5ED9F;">
      20% OFF ON 3 PAIR
      <div style="font-family: Montserrat; color: #392F2F; font-size: 13px;">USE CODE: 20 OFF</div>
    </div>
    <div class="col-sm adbanner" style="background-color: #F28792;">
      30% OFF STUDENT DISCOUNT
      <div style="font-family: Montserrat; color: #392F2F; font-size: 13px;">OFFER APPLICABLE FOR ALL STUDENTS</div>
    </div>
  </div>
</div>

<!--Advertise  Start-->



<!--- Trend Design---->


<p style="font-family: Montserrat; color: #362E2E; text-align: center; font-style: lighter; font-size: 14px; margin-top: 40px; font-weight: bold; padding-right: 7.5px; font-weight: 1200%;">#TRENDS
  <svg fill="#eb6619" width="1rem" height="1rem" viewBox="0 0 16 16" class="animated flash infinite slow" xmlns="http://www.w3.org/2000/svg">
      <circle cx="8" cy="6" r="6"></circle>
  </svg>
</p>
<div class="container">
    <div class="row" style="padding-top: 10px;">
      <div class="col-sm">
        <div class="card text-white border border-white p-2 addvertise">
          <a href="Products.aspx"><img class="card-img rounded-circle" src="images/jackets.jpg" alt="JACKETS"></a>
        </div>
        <a href="Products.aspx" style="text-decoration:none;"><h5 style="font-family: Montserrat; text-transform: uppercase; font-size: 10px;text-align: center;  padding-top: 6px; color: #3B3856; ">JACKETS</h5></a>
      </div>

      <div class="col-sm">
        <div class="card text-white border border-white p-2 addvertise">
          <a href="Products.aspx"><img class="card-img rounded-circle" src="images/sweaters.jpg" alt="sweaters</a>">
        </div>
        <a href="Products.aspx" style="text-decoration:none;"><h5 style="font-family: Montserrat; text-transform: uppercase; font-size: 10px;text-align: center;  padding-top: 6px; color: #3B3856; ">sweaters</h5</h5>>
      </div>

      <div class="col-sm">
        <div class="card text-white border border-white p-2 addvertise">
          <a href="Products.aspx"><img class="card-img rounded-circle" src="images/dresses.jpg" alt="dresses"></a>
        </div>
        <a href="Products.aspx" style="text-decoration:none;"><h5 style="font-family: Montserrat; text-transform: uppercase; font-size: 10px;text-align: center;  padding-top: 6px; color: #3B3856; ">dresses</h5></a>
      </div>

      <div class="col-sm">
        <div class="card text-white border border-white p-2 addvertise">
          <a href="Products.aspx"><img class="card-img rounded-circle" src="images/pants.jpg" alt="pants">
   </a>     </div>
        <a href="Products.aspx" style="text-decoration:none;"><h5 style="font-family: Montserrat; text-transform: uppercase; font-size: 10px;text-align: center;  padding-top: 6px; color: #3B3856; ">pants</h5>
 </a>     </div>

      <div class="col-sm">
        <div class="card text-white border border-white p-2 addvertise">
          <a href="Products.aspx"><img class="card-img rounded-circle" src="images/shoes.jpg" alt="shoes">
   </a>     </div>
        <a href="Products.aspx" style="text-decoration:none;"><h5 style="font-family: Montserrat; text-transform: uppercase; font-size: 10px;text-align: center;  padding-top: 6px; color: #3B3856; ">shoes</h5>
 </a>     </div>

      <div class="col-sm">
        <div class="card text-white border border-white p-2 addvertise">
          <a href="Products.aspx"><img class="card-img rounded-circle" src="images/bags.jpg" alt="bags">
     </a>   </div>
        <a href="Products.aspx" style="text-decoration:none;"><h5 style="font-family: Montserrat; text-transform: uppercase; font-size: 10px;text-align: center;  padding-top: 6px; color: #3B3856; ">bags</h5>
  </a>    </div>

      <div class="col-sm">
        <div class="card text-white border border-white p-2 addvertise">
          <a href="Products.aspx"><img class="card-img rounded-circle" src="images/scarves.jpg" alt="scarves"></a>
        </div>
        <a href="Products.aspx" style="text-decoration:none;"><h5 style="font-family: Montserrat; text-transform: uppercase; font-size: 10px;text-align: center;  padding-top: 6px; color: #3B3856; ">scarves</h5></a>
      </div>

      <div class="col-sm">
        <div class="card text-white border border-white p-2 addvertise">
          <a href="Products.aspx"><img class="card-img rounded-circle" src="images/jewelry.jpg" alt="jewelry"></a>
        </div>
        <a href="Products.aspx" style="text-decoration:none;"><h5 style="font-family: Montserrat; text-transform: uppercase; font-size: 10px;text-align: center;  padding-top: 6px; color: #3B3856; ">jewelry</h5></a>
      </div>
    </div>
  </div>
</div>



<!--- Trend Design---->





<br>
<p style="font-family: Playfair Display; color: #362E2E; text-align: center; font-style: lighter; font-size: 32px; margin-top: 40px;">SHOP CATEGORIES</p>



	<div class="container">
		<div class="row" style="padding-top: 35px;">
			<div class="col-sm">
				<div class="card text-white addvertise"><a href="Products.aspx" style="text-decoration: none">
				  <img class="card-img" src="images/product11.jpg" alt="Card image">
				  <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center; padding-top: 5px; color: #3B3856; ">CIMINY</h5>
				  <p style="font-family: Montserrat; color: #3B3856; text-align: center; font-size: 13px;">RIBBED KNIT SWEATER</p></a>
				</div>
				

			</div>

			<div class="col-sm">
				<div class="card text-white addvertise"><a href="Products.aspx" style="text-decoration: none">
				  <img class="card-img" src="images/product21.jpg" alt="Card image">
				  <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center; padding-top: 5px; color: #3B3856; ">CIMINY</h5>
				  <p style="font-family: Montserrat; color: #3B3856; text-align: center; font-size: 13px;">RIBBED KNIT SWEATER</p></a>
				</div>
			</div>

			<div class="col-sm">
				<div class="card text-white addvertise"><a href="Products.aspx" style="text-decoration: none">
				  <img class="card-img" src="images/product31.jpg" alt="Card image">
				  <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center; padding-top: 5px; color: #3B3856; ">CIMINY</h5>
				  <p style="font-family: Montserrat; color: #3B3856; text-align: center; font-size: 13px;">RIBBED KNIT SWEATER</p></a>
				</div>
			</div>

      <div class="col-sm">
        <div class="card text-white addvertise"><a href="Products.aspx" style="text-decoration: none">
          <img class="card-img" src="images/product41.jpg" alt="Card image">
          <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center; padding-top: 5px; color: #3B3856; ">CIMINY</h5>
          <p style="font-family: Montserrat; color: #3B3856; text-align: center; font-size: 13px;">RIBBED KNIT SWEATER</p></a>
        </div>
      </div>

      <div class="col-sm">
        <div class="card text-white addvertise"><a href="Products.aspx" style="text-decoration: none">
          <img class="card-img" src="images/product13.jpg" alt="Card image">
          <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center; padding-top: 5px; color: #3B3856; ">CIMINY</h5>
          <p style="font-family: Montserrat; color: #3B3856; text-align: center; font-size: 13px;">RIBBED KNIT SWEATER</p></a>
        </div>
      </div>
		</div>
	</div>
</div>

<br><br>



<!--Advertise  End-->

<a href="Products.aspx"><img src="images/banner.jpg" class="img-fluid" alt="Responsive image"></a>

<div class="container">
  <div class="row">
    <div class="col-sm sidebanners">
      	<figure class="figure"><a href="Products.aspx">
		  <img src="images/sidebanner1.png" class="figure-img img-fluid" alt="sidebanneriamge"></a>
		</figure>
    </div>
    <div class="col-sm sidebanners">
      	<figure class="figure"><a href="Products.aspx" >
		  <img src="images/sidebanner2.png" class="figure-img img-fluid" alt="sidebanneriamge"></a>
		</figure>
    </div>
  </div>
</div>


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

