<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GroupProject.Customer.index" %>








<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
  
    
    
    
    
    
    
    <style>
        .sidebar__item a,.phantrang a{
            font-size:18px;
            text-decoration:none;
            color: black;
        }
        .phantrang{
            text-align:center;
            margin-left: 15px;

        }
        .phantrang b{
            font-weight:normal;
        }
        .phantrang span{
            font-size:18px;
        }
        .phantrang:active{
            font-weight:bold;
            color:black;
        }
        .phantrang a:hover{
            font-weight:bold;
            color:black;
        }
        .sidebar__item a:hover{
            color:#7fad39;
        }
        .vip a{
            text-decoration:none;
        }
        .vip a:hover{
            color:black;
        }
        .datalist{
            text-align:center;
            margin-left: 50px;
        }
        .filter__item{
            text-align:center;
            align-items:center;
            margin-left:150px;
        }
        .section-title{
            padding-top:100px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li class="active"><a href="./index.aspx">Home</a></li>
    <li><a href="./shop-grid.aspx">Shop</a></li>
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
   <div class="hero__item set-bg" data-setbg="img/test/food.jpg" style="margin:0 0 30px 180px; height:439px; width:75%;">
                        <div class="hero__text">
                            <span style="color:tomato">All You Need</span>
                            <h2>Foods and accessories <br />For Your Pets</h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="shop-grid.aspx" class="primary-btn" style="background:tomato">SHOP NOW</a>
                        </div>
                    </div>
    
    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
                <div class="categories__slider owl-carousel">
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/test/food1.jpg">
                            <h5><a href="#">Organic Food</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/test/food4.jpg">
                            <h5><a href="#">Dried Food</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/test/nem4.jpg">
                            <h5><a href="#">Mattress</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/test/bow1.jpg">
                            <h5><a href="#">Bowls</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/test/bag2.jpg">
                            <h5><a href="#">Carrying Bag</a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->
    <%--<div class="col-lg-9 col-md-7">--%>    
        <div class="section-title from-blog__title">
            <h2 style="color:#f02424;font-family:'Times New Roman', Times, serif">
                SẢN PHẨM NỔI BẬT
            </h2>
           
        </div>
                    <div class="filter__item col-lg-9 col-md-7">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sort By</span>
                                    <select>
                                        <option value="0">Default</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6>Products found</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div>
                            </div>
                        </div>
                    </div>
    <div class="row vip">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4">
        <ItemTemplate>
            <div class="datalist" >
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Customer/HINH/" + Eval("hinh") %>' Height="250px" Width="250px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text='<%# Eval("tenhang") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("dongia","{0:0,0}") %>'></asp:Label>
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Size="20px" CommandArgument='<%# Eval("mahang") %>' OnClick="LinkButton1_Click" >Buy Now</asp:LinkButton>
                </div>
        </ItemTemplate>
        </asp:DataList>
        </div>
        <div class="phantrang">
            <cc1:CollectionPager ID="CollectionPager1" runat="server" ResultsLocation="Bottom"></cc1:CollectionPager>
        </div>
    <!-- Featured Section Begin -->
   <%-- <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Featured Product</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <li data-filter=".oranges">Food</li>
                            <li data-filter=".fresh-meat">Mattress</li>
                            <li data-filter=".vegetables">Bowls</li>
                            <li data-filter=".fastfood">Carry Bag</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges ">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/food1.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Pate cho chó vị gà, rau củ và thịt bò INABA Chicken, Vegetables & Beef</a></h6>
                            <h5>$35.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/nem1.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Nệm cho chó mèo hình vuông thành cao nhiều màu ELITE</a></h6>
                            <h5>$420.00</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables ">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/bow1.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Bát ăn nghiêng cho chó mèo bằng nhựa BOBO Plastic Bowl 3052A</a></h6>
                            <h5>$240.00</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/bag1.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Balo đựng chó mèo LOFFE hình hộp bằng vải</a></h6>
                            <h5>$450.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges ">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/food2.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Sữa tươi cho mèo ít béo DR HOLI Cat Milk</a></h6>
                            <h5>$38.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/nem2.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Ổ đệm cho chó mèo PAW hình quả chuối</a></h6>
                            <h5>$380.00</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables ">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/bow2.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Bát ăn inox cho chó mèo SUPER DESIGN Round Bowls</a></h6>
                            <h5>$200.00</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/bag2.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Balo phi hành gia cho chó mèo LOFFE The U-Pet Backpack</a></h6>
                            <h5>$690.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges ">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/food3.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Gel dinh dưỡng cho mèo BIOLINE Hairball Solution</a></h6>
                            <h5>$45.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/nem3.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Ổ đệm cho chó mèo hình nhà BOBBY PET</a></h6>
                            <h5>$420.00</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables ">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/bow3.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Dụng cụ ăn uống cho chó mèo PAW tự động đa năng</a></h6>
                            <h5>$700.00</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/bag3.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Túi đựng chó mèo bằng nhựa ELITE</a></h6>
                            <h5>$530.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges ">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/food4.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Thức ăn cho chó mẹ và chó con MKB Moshm Babydog & Mother</a></h6>
                            <h5>$135.00</h5>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/nem4.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Ổ đệm cho chó mèo hình lều BOBBY PET 16CT004</a></h6>
                            <h5>$620.00</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables ">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/bow4.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Bát ăn cho chó mèo bằng nhựa BOBO Plastic Bowl 3142Z</a></h6>
                            <h5>$300.00</h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="img/test/bag4.jpg">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">Balo đựng chó mèo Dogismile PETISMILE</a></h6>
                            <h5>$930.00</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>--%>
    <!-- Featured Section End -->

    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6" >
                    <div class="banner__pic">
                        <img src="img/test/poster1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="img/test/poster2.gif" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Latest Product Section Begin -->
    <!-- Latest Product Section End -->

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>From The Blog</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/test/bao1.jpg" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> May 4,2021</li>
                                <li><i class="fa fa-comment-o"></i> 95</li>
                            </ul>
                            <h5><a href="#">Where is the cat after death?</a></h5>
                            <p>Many peple said that all of the cats after death go to the heaven</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/test/bao6.png" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> June 4,2021</li>
                                <li><i class="fa fa-comment-o"></i> 105</li>
                            </ul>
                            <h5><a href="#">8 years of development of pet chain Pet Mart</a></h5>
                            <p>Pet Mart from a pet care shop, has become a pet shop system in many cities with many services for dogs and cats. </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="img/test/bao7.png" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> June 21,2021</li>
                                <li><i class="fa fa-comment-o"></i> 305</li>
                            </ul>
                            <h5><a href="#">Visit the Pet Mart in the Viet Nam</a></h5>
                            <p>Pet Mart pet shop system covers all major provinces such as Hanoi, Hai Phong, Da Nang, Ho Chi Minh City ... </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
    </form>
</asp:Content>
