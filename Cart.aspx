<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Cart.aspx.cs" Inherits="Cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />

    <!--- Cart Option-->
<body style=" background: #eecda3; background: -webkit-linear-gradient(to right, #eecda3, #ef629f); background: linear-gradient(to right, #eecda3, #ef629f); min-height: 100vh;">
     
<div class="px-4 px-lg-0">
  <!-- For demo purpose -->
  <div class="container text-white py-5 text-center">
    <h1 class="display-7" style="font-family: Playfair Display;">Your Shopping Cart</h1>
        
          <h5 class="proNameViewCart" style="font-family:  Poppins; color: black; font-size: 16px;" runat="server" id="h4Noitems"></h5>
  </div>
  <!-- End -->

  <div class="pb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col" class="border-0 bg-light">
                    <div class="p-2 px-3 text-uppercase" style="font-family: Poppins;">Product</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase" style="font-family: Poppins;">Price</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase" style="font-family: Poppins;">Size</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase" style="font-family: Poppins;">Remove</div>
                  </th>
                </tr>
              </thead>
              <tbody>

                  <asp:Repeater ID="rptrCartProducts" runat="server">
  
              <ItemTemplate>
                <tr>
                  <th scope="row" class="border-0">
                    <div class="p-2">

                       <a href="ProductView.aspx?PID=<%#Eval("PID") %>" target="_blank">
                            <img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'" width="65" class="img-fluid rounded shadow-sm">
                       </a>

                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0"> <a href="ProductView.aspx?PID=<%#Eval("PID") %>" target="_blank" class="text-dark d-inline-block align-middle" style="font-family: Poppins;"><%#Eval("PName") %></a></h5><span class="text-muted font-weight-normal pt-2 d-block" style="font-family: Poppins;">You Saved:  Rs.<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %></span>
                      </div>
                    </div>
                  </th>
                  <td class="border-0 align-middle" style="font-family: Poppins;"><strong><%# Eval ("PSelPrice","{0:c}") %></strong></td>
                  <td class="border-0 align-middle" style="font-family: Poppins;"><strong><%#Eval("SizeNamee") %></strong></td>
                  <td class="border-0 align-middle"><a href="#" class="text-dark">
                      <asp:Button CommandArgument='<%#Eval("PID")+"-"+ Eval("SizeIDD")%>' ID="btnRemoveItem" OnClick="btnRemoveItem_Click" CssClass="btn btn-dark py-2  border-0" runat="server" Text="REMOVE" />

                         </a></td>
                </tr>

                
                </ItemTemplate>
            </asp:Repeater>
                
              </tbody>
            </table>
          </div>
          <!-- End -->
        </div>
      </div>

      <div class="row py-5 p-4 bg-white rounded shadow-sm">
        <div class="col-lg-6">
          <div class="border-0 bg-light px-4 py-3 text-uppercase font-weight-bold" style="font-family: Poppins;">Coupon code</div>
          <div class="p-4">
            <p class="mb-4" style="font-family: Poppins;">If you have a coupon code, please enter it in the box below</p>
            <div class="input-group mb-4 border-0 bg-light p-2">
              <input type="text" placeholder="Apply coupon" aria-describedby="button-addon3" class="form-control border-0 p-4" style="font-family: Poppins;">
              <div class="input-group-append border-0">
                <button id="button-addon3" type="button" class="btn btn-dark px-4 border-0" style="font-family: Poppins;"><i class="fa fa-gift mr-2"></i>Apply</button>
              </div>
            </div>
          </div>
          <div class="border-0 bg-light px-4 py-3 text-uppercase font-weight-bold" style="font-family: Poppins;">Instructions for seller</div>
          <div class="p-4">
            <p class="mb-4" style="font-family: Poppins;">If you have some information for the seller you can leave them in the box below</p>
            <textarea name="" cols="30" rows="2" class="form-control"></textarea>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="border-0 bg-light px-4 py-3 text-uppercase font-weight-bold" style="font-family: Poppins;" runat="server" id="divpricedetails">Order summary </div>
          <div class="p-4">
            <p class="mb-4" style="font-family: Poppins;">Shipping and additional costs are calculated based on values you have entered.</p>
            <ul class="list-unstyled mb-4">
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted" style="font-family: Poppins;">Order Subtotal </strong><strong style="font-family: Poppins-semibold;">
                    <span id="spanCartTotal" runat="server"></span></strong></li>
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted" style="font-family: Poppins;">Discount</strong><strong style="font-family: Poppins-semibold;">
                    <span id="spanDiscount" runat="server"></span></strong></li>
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted" style="font-family: Poppins;">Cart Total</strong>
                <h5 class="font-weight-bold" style="font-family: Poppins-semibold;">
                    <span id="spanTotal" runat="server"></span></h5>
              </li>
            </ul>
              
            <asp:Button ID="btnBuyNow" OnClick="btnBuy_Click" CssClass="btn btn-dark p-3 py-2 btn-block border-0" runat="server" Text="Procceed to checkout" />
     
          </div>
        </div>
      </div>

    </div>
  </div>
</div>
</body>
<!--- Cart Option---->

</asp:Content>

