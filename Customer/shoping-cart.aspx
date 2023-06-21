<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="shoping-cart.aspx.cs" Inherits="GroupProject.Customer.shoping_cart" %>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <style>
        .vip h3{
            text-align:center;
            font-weight: bold; 
            color: cornflowerblue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <li><a href="./index.aspx">Home</a></li>
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
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/bia2.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Shopping Cart</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.aspx">Home</a>
                            <span>Shopping Cart</span> 
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->
    

    <!-- Shoping Cart Section Begin -->
    <section class="shoping-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 vip">
                    <h3><asp:Label ID="lbl_null" runat="server" Text="" Visible="false"></asp:Label></h3>
                    <div class="shoping__cart__table">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="Product">
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Customer/HINH/" + Eval("hinh") %>'/>
                                    </ItemTemplate>
                                    <ControlStyle Height="70px" Width="70px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="tenhang" HeaderText="Name" />
                                <asp:TemplateField HeaderText="Price">
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_dongia" runat="server" Text='<%# Eval("dongia") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Quality">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server"></asp:Label>                                              
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:TextBox ID="txt_soluong" runat="server" Text='<%# Eval("soluong") %>'></asp:TextBox> 
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Total">
                                    <ItemTemplate>
                                        <asp:Label ID="txt_total" runat="server" Text='<%# Bind("Total","{0:0,0}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="Red" CommandName="btxoa">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="btsua" runat="server" Text="Update" CommandName="btsua" class="primary-btn" CommandArgument='<%# Eval("mahang") %>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>                    
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="shoping__cart__btns">
                        <a href="shop-grid.aspx" class="primary-btn cart-btn">CONTINUE SHOPPING</a>
                        <a href="shoping-cart.aspx" class="primary-btn cart-btn cart-btn-right"><span class="icon_loading"></span>
                            Upadate Cart</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__continue">
                        <div class="shoping__discount">
                            <h5>Discount Codes</h5>
                            <form action="#">
                                <input type="text" placeholder="Enter your coupon code">
                                <button type="submit" class="site-btn">APPLY COUPON</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="shoping__checkout">
                        <h5>Cart Total</h5>
                        <ul>
                            <li>Subtotal <span><asp:Label ID="lbl_Subtotal" runat="server" Text="0"></asp:Label></span></li>
                            <li>Total <span><asp:Label ID="lbl_Total" runat="server" Text="0"></asp:Label></span></li>
                        </ul>
                        <asp:Button ID="Button1" runat="server" class="primary-btn" Text="PAYMENT" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shoping Cart Section End -->
     </form>
</asp:Content>
