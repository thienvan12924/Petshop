<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="shop-details.aspx.cs" Inherits="GroupProject.Customer.shop_details" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li><a href="./index.aspx">Home</a></li>
    <li class="active"><a href="./shop-grid.aspx">Shop</a></li>
    <li><a href="#">Cart</a>
    <ul class="header__menu__dropdown">
       <li><a href="./shoping-cart.aspx">Shoping Cart</a></li>
       <li><a href="./history-cart.aspx">History Cart</a></li>
    </ul>
    </li>                         
    <li><a href="./blog.aspx">Blog</a></li>
    <li><a href="./contact.aspx">Contact</a></li>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/bia2.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Pet’s Package</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.aspx">Home</a>
                            <a href="./shop-grid.aspx">Shop</a>
                            <span>Pet Package</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
    <div class="container">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
        
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__pic">
                        <div class="product__details__pic__item">                           
                            <asp:Image class="product__details__pic__item--large" ID="Image1" runat="server" ImageUrl='<%# "~/Customer/HINH/" + Eval("hinh") %>'/>
                        </div>                       
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="product__details__text">
                        <h3><asp:Label ID="Label3" runat="server" Text='<%# Eval("tenhang") %>'></asp:Label></h3>
                        <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>
                        <div class="product__details__price">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("dongia","{0:0,0}") %>'></asp:Label>
                        </div>
                        <p><asp:Label ID="Label1" runat="server" Text='<%# Eval("mota") %>'></asp:Label></p>
                        <div class="product__details__quantity">
                            <div class="quantity">
                                <div class="pro-qty">
                                    <input type="text" value="1" id="soluong" name="soluong">
                                </div>
                            </div>
                        </div>
                        <asp:Button ID="Button1" runat="server" class="primary-btn" Text="ADD TO CART" CommandArgument='<%# Eval("mahang") %>' OnClick="Button1_Click" />
                        
                        <ul>
                            <li><b>Availability</b> <span>In Stock</span></li>
                            <li><b>Shipping</b> <span>01 day shipping. <samp>Free pickup today</samp></span></li>
                            <li><b>Weight</b> <span>0.5 kg</span></li>
                            <li><b>Share on</b>
                                <div class="share">
                                    <a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a>
                                    <a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
                                    <a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
                                    <a href="https://www.pinterest.com/"><i class="fa fa-pinterest"></i></a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
                        
    </ItemTemplate>
    </asp:DataList>
        </div>
    </section>
    <!-- Product Details Section End -->

    <!-- Related Product Section Begin -->
   
    <!-- Related Product Section End -->
   </form>
</asp:Content>
