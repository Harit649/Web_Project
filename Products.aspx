<%@ Page Title="" Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="Products.aspx.cs" Inherits="Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />  

        <br>
        <p style="font-family: Playfair Display; color: #362E2E; text-align: center; font-weight: bold; font-style: lighter; font-size: 32px; margin-top: 40px;">ALL PRODUCTS</p>

        <p style="font-family: Montserrat; color: rgb(215,61,47); text-align: center; font-style: lighter; font-size: 14px; ">Wishing you a very good shopping!</p>

    <div class="container">
		<div class="row" style="padding-top: 35px;">
            <asp:repeater ID="rptrProducts" runat="server">
                <ItemTemplate>
			   <div class="col-sm-3">
                  <a href="ProductView.aspx?PID=<%# Eval("PID") %>" style="text-decoration:none;">
				<div class="card text-white border border-info rounded p-2 addvertise">
                       <img class="card-img" src="Images/ProductImages/<%# Eval("PID") %>/<%# Eval("ImageName") %><%# Eval("Extention") %>" alt="<%# Eval("ImageName") %>">
				        <h5 style="font-family: Playfair Display; font-size: 20px;text-align: center;  padding-top: 6px; color: #3B3856; "><%# Eval ("BrandName") %>  </h5>
                        <h5 style="font-family: Montserrat; font-size: 13px;text-align: center;  padding-top: 6px; color: #3B3856; "><%# Eval ("PName") %> </h5>
                        <h5 style="font-family: Montserrat; font-size: 17px;text-align: center;  padding-top: 6px; color: #3B3856; "><%# Eval ("PSelPrice","{0:c}") %> 
                        <span style="font-family: Montserrat; font-size: 13px;text-align: center;  padding-top: 6px; color: rgb(215,61,47); text-decoration: line-through;"><%# Eval ("PPrice","{0:0,00}") %></span></h5>
                        <span style="font-family: Montserrat; font-size: 13px;text-align: center;  padding-top: 6px; color: rgb(215,61,47);">(<%# Eval("DiscAmount","{0:0,00}") %> off)</span>
                        
				</div><br /></a>
			</div>

                </ItemTemplate>
       </asp:repeater>
    </div>

    <%--second product--%>




    

</asp:Content>

