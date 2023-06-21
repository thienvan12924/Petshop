<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="shop-grid.aspx.cs" Inherits="GroupProject.Customer.shop_grid" %>

<%@ Register Assembly="CollectionPager" Namespace="SiteUtils" TagPrefix="cc1" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .sidebar__item a,.phantrang a{
            font-size:18px;
            text-decoration:none;
            color: black;
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
        }
    </style>
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
                        <h2>Pet Shop</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.aspx">Home</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>Department</h4>
                                <asp:DataList ID="DataList1" runat="server">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" Text='<%# Eval("tenloai") %>' CommandArgument='<%# Eval("maloai") %>' OnClick="LinkButton1_Click1"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:DataList>
                        </div>                      
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">                    
                    <div class="filter__item">
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
                        <asp:DataList ID="DataList2" runat="server" RepeatColumns="3">
                            <ItemTemplate>
                                <div class="datalist">
                                <asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/Customer/HINH/" + Eval("hinh") %>' Height="250px" Width="250px" />               
                                    </br>      
                                    <asp:Label ID="Label1" runat="server" Font-Size="17px" Text='<%# Eval("tenhang") %>'></asp:Label>
                                    </br>
                                    <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text='<%# Eval("dongia","{0:0,0}") %>'></asp:Label>
                                    </br>
                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("mahang") %>' Font-Bold="True" Font-Size="20px" OnClick="LinkButton2_Click1">Buy now</asp:LinkButton>
                                </div>
                             </ItemTemplate>
                        </asp:DataList>                
                    </div>
                    <div class="phantrang">
                        <cc1:CollectionPager ID="CollectionPager1" runat="server" ResultsLocation="Bottom"></cc1:CollectionPager>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->
    </form>
</asp:Content>
