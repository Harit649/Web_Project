<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="ProductView.aspx.cs" Inherits="ProductView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />

    <div class="container" >
    <div class="single_product" style="background-color: #fff; margin-top: 3px;">
        <div class="container-fluid" style=" background-color: #fff; ">
            <nav>
                  <ol class="breadcrumb">
                     <li class="breadcrumb-item"><a href="#" style="font-family: Poppins;  text-decoration: none; margin-bottom: 18px;">Home</a></li>
                      <li class="breadcrumb-item"><a href="#" style="font-family: Poppins;  text-decoration: none;">Products</a></li>
                      <li class="breadcrumb-item active" style="font-family: Poppins; text-decoration: none;">Accessories</li>
                  </ol>         
            </nav>
              <div class="row">
                <div class="col-lg-2 order-lg-1 order-2">
                    <asp:repeater ID="rptrImage" runat="server">
          <ItemTemplate>

                    <ul class="image_list">
                        <li><img src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extention") %>" alt="<%#Eval("Name") %>"  onerror="this.src='Images/ImageNotAvailable.jpg'"></li>
                    </ul>
               </ItemTemplate>
    </asp:repeater>
                </div>


                <div class="col-lg-4 order-lg-2 order-1">
                    <asp:repeater ID="rptrProducts" runat="server">
                <ItemTemplate>
                    <div class="image_selected">
                        <img src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("Name") %>" onerror="this.src='Images/ImageNotAvailable.jpg'" /></div>

                    </ItemTemplate>
       </asp:repeater>
                </div>


                <div class="col-lg-6 order-3">
                    <div class="product_description">
                        <asp:Repeater ID="rptrProductDetails" runat="server" OnItemDataBound="rptrProductDetails_ItemDataBound">
                <ItemTemplate>
                        <div class="product_name" style="font-size: 35px;"><%# Eval("PName") %></div>
                        <div class="product-rating"><span class="badge badge-success" style="padding: 8px;"><i class="fa fa-star"></i> 4.5 Star</span> <span class="rating-review">35 Ratings & 45 Reviews</span></div>
                        <div> <span class="product_price" style="margin-top: 16px;"><%#Eval("PSelPrice","{0:c}") %></span> <strike class="product_discount"> <span style='color:black'>₹<%# Eval ("PPrice","{0:0,00}") %><span> </strike> </div>
                        <div> <span class="product_saved" style="font-family: Poppins;">You Saved:</span> <span style='color:black'> (<%# string.Format("{0}",Convert.ToInt64(Eval("PPrice"))-Convert.ToInt64(Eval("PSelPrice"))) %> off)<span> </div>
                        
                        <div> <span class="product_info" style="margin-top: 5px; font-family: Playfair Display; margin-top: 15px;"><%#Eval("PDescription") %> <span></div>
                        <div>
                            <div class="row">
                                
                                <div class="col-md-7"> </div>
                            </div>
                            <div class="row" style="margin-top: 25px;">
                                <div class="col-xs-6" style="margin-left: 15px; font-family: Playfair Display; font-size: 22px;"> 
                                  <span class="product_options">Choose Size</span><br> 

                                    <asp:radiobuttonlist ID="rblSize" runat="server" RepeatDirection="Horizontal" >
                        <asp:ListItem Value="S" Text="S"></asp:ListItem>
                        <asp:ListItem Value="M" Text="M"></asp:ListItem>
                        <asp:ListItem Value="L" Text="L"></asp:ListItem>
                        <asp:ListItem Value="XL" Text="XL"></asp:ListItem>
                    </asp:radiobuttonlist>
                                  
                                   </div>
                            </div>
                        </div>
                        <div class="order_info d-flex flex-row">
                            <form action="#">
                        </div>
                        <div class="row">
                            
                            <div class="col-xs-6" style="margin-left: 13px; margin-top: 48px;"> 
                                
                <asp:button ID="btnAddtoCart" CssClass="btn shop-button" runat="server" text="ADD TO CART" OnClick="btnAddtoCart_Click"/>
                                <div class="product_fav" style="border-radius: 0px;"><i class="fa fa-heart"></i></div>
           <asp:Label ID="lblError" CssClass ="text-danger " runat="server" ></asp:Label>

                                 
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            
            <hr style="margin-top: 60px;">
            <div class="row" style="margin-left: 17px;">
                <div class="col-md-6"> <span class="deal-text" style="font-family: Playfair Display; font-weight: bold; text-transform: uppercase; color: #191615;">More Details</span> 

                </div>
            </div>
      
            <div class="row">
                <div class="col-md-12">
                    <table class="col-md-12">
                        <tbody>
                            <tr class="row" style="margin-top: 22px;">
                                <td class="col-md-4"><span class="p_specification" style="font-family: Poppins; text-transform: uppercase;">Product Details: </span> </td>
                                <td class="col-md-8">
                                    <ul>
                                        <li style="font-family: Poppins;"><%#Eval("PProductDetails") %></li>
                                    </ul>
                                </td>
                            </tr>
                            <tr class="row" style="margin-top: 10px;">
                                <td class="col-md-4"><span class="p_specification" style="font-family: Poppins; text-transform: uppercase;">MATERIALS</span> </td>
                                <td class="col-md-8">
                                    <ul>
                                        <li style="font-family: Poppins;"><%#Eval("PMaterialCare") %></li>
                                    </ul>
                                </td>
                            </tr>
                            <tr class="row" style="margin-top: 10px;">
                                <td class="col-md-4"><span class="p_specification" style="font-family: Poppins; text-transform: uppercase;">Size & FIT</span> </td>
                                <td class="col-md-8">
                                    <ul>
                                        <li style="font-family: Poppins;">Model’s Height:  188cm/6’2<br>Model’s Wearing Size: Medium</li>
                                    </ul>
                                </td>
                            </tr>

                            <tr class="row" style="margin-top: 10px;">
                                <td class="col-md-4"><span class="p_specification" style="font-family: Poppins; text-transform: uppercase;">Delivery</span> </td>
                                <td class="col-md-8">
                                    <ul>
                                        <li style="font-family: Poppins;"><%# ((int)Eval("FreeDelivery")==1)? "Free Delivery":""  %></li>
                                    </ul>
                                </td>
                            </tr>

                            <tr class="row" style="margin-top: 10px;">
                                <td class="col-md-4"><span class="p_specification" style="font-family: Poppins; text-transform: uppercase;">Return Policy</span> </td>
                                <td class="col-md-8">
                                    <ul>
                                        <li style="font-family: Poppins;">Easy <%# ((int)Eval("30DayRet")==1)? "30 Days Returns":""  %> and Exchanges</li>
                                    </ul>
                                </td>
                            </tr>

                            <tr class="row" style="margin-top: 10px;">
                                <td class="col-md-4"><span class="p_specification" style="font-family: Poppins; text-transform: uppercase;">Payment</span> </td>
                                <td class="col-md-8">
                                    <ul>
                                        <li style="font-family: Poppins;"><%# ((int)Eval("COD")==1)? "Cash on Delivery":"" %> Available</li>
                                    </ul>
                                </td>
                            </tr>
                            
                        </tbody>
                    </table>
                    <div >
            </div>
                    <asp:HiddenField ID="hfCatID" runat="server" Value='<%# Eval("PcategoryID") %>' />
                    <asp:HiddenField ID="hfSubCatID" runat="server" Value='<%# Eval("PSubCatID") %>' />
                    <asp:HiddenField ID="hfGenderID" runat="server" Value='<%# Eval("PGender") %>' />
                    <asp:HiddenField ID="hfBrandID" runat="server" Value='<%# Eval("PBrandID") %>' />



                </div>
            </div>
                  </ItemTemplate>
                            
</asp:Repeater>

                        
            <hr style="margin-top: 60px;" />
            <div class="row" style="margin-left: 17px;">
                <div class="col-md-6"> <span class="deal-text" style="font-family: Playfair Display; font-weight: bold; text-transform: uppercase; color: #191615;">SIMILAR PRODUCTS</span> 

                </div>
            </div>

            <div class="container">
                <div class="row" style="padding-top: 35px;">
                  <div class="col-sm">
                    <div class="card text-white border border-info rounded p-2 addvertise">
                      <img class="card-img" src="images/product11.jpg" alt="Card image">
                      <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center;  padding-top: 6px; color: #3B3856; ">Beneton</h5>
                      <h5 style="font-family: Montserrat; font-size: 13px;text-align: center;  padding-top: 6px; color: #3B3856; ">Rs.3199 
                        <span style="font-family: Montserrat; font-size: 11px;text-align: center;  padding-top: 6px; color: rgb(215,61,47); text-decoration: line-through;">Rs. 3699</span>
                      </h5>
                    </div>
                  </div>

                  <div class="col-sm">
                    <div class="card text-white border border-info rounded p-2 addvertise">
                      <img class="card-img" src="images/product21.jpg" alt="Card image">
                      <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center;  padding-top: 6px; color: #3B3856; ">Bebe</h5>
                      <h5 style="font-family: Montserrat; font-size: 13px;text-align: center;  padding-top: 6px; color: #3B3856; ">Rs.2599 
                        <span style="font-family: Montserrat; font-size: 11px;text-align: center;  padding-top: 6px; color: rgb(215,61,47); text-decoration: line-through;">rs.2899</span>
                      </h5>
                    </div>
                  </div>

                  <div class="col-sm">
                    <div class="card text-white border border-info rounded p-2 addvertise">
                      <img class="card-img" src="images/product31.jpg" alt="Card image">
                      <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center;  padding-top: 6px; color: #3B3856; ">Zara</h5>
                      <h5 style="font-family: Montserrat; font-size: 13px;text-align: center;  padding-top: 6px; color: #3B3856; ">Rs.1599
                        <span style="font-family: Montserrat; font-size: 11px;text-align: center;  padding-top: 6px; color: rgb(215,61,47); text-decoration: line-through;">Rs.2499</span>
                      </h5>
                    </div>
                  </div>

                  <div class="col-sm">
                    <div class="card text-white border border-info rounded p-2 addvertise">
                      <img class="card-img" src="images/product41.jpg" alt="Card image">
                      <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center;  padding-top: 6px; color: #3B3856; ">Beneton</h5>
                      <h5 style="font-family: Montserrat; font-size: 13px;text-align: center;  padding-top: 6px; color: #3B3856; ">Rs.1699 
                        <span style="font-family: Montserrat; font-size: 11px;text-align: center;  padding-top: 6px; color: rgb(215,61,47); text-decoration: line-through;">Rs.2299</span>
                      </h5>
                    </div>
                  </div>

                  <div class="col-sm">
                    <div class="card text-white border border-info rounded p-2 addvertise">
                      <img class="card-img" src="images/product13.jpg" alt="Card image">
                      <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center;  padding-top: 6px; color: #3B3856; ">Zara</h5>
                      <h5 style="font-family: Montserrat; font-size: 13px;text-align: center;  padding-top: 6px; color: #3B3856; ">Rs.2199 
                        <span style="font-family: Montserrat; font-size: 11px;text-align: center;  padding-top: 6px; color: rgb(215,61,47); text-decoration: line-through;">Rs.1699</span>
                      </h5>
                    </div>
                  </div>

                    
                </div>
              </div>
            </div>


        </div>
    </div>
</div>

<!--Product  End-->
</asp:Content>

