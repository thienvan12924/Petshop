<%@ Page Title="" Language="C#" MasterPageFile="~/Customer/Site1.Master" AutoEventWireup="true" CodeBehind="history-cart.aspx.cs" Inherits="GroupProject.Customer.history_cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .vip h3{
            text-align:center;
            font-weight: bold; 
            color: cornflowerblue;
        }
        .vip2{
            color:red;
            margin-right:30px;
            font-size:18px;
            font-weight:bold;
            float:right;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form id="form1" runat="server">
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/bia2.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>History Cart</h2>
                        <div class="breadcrumb__option">
                            <a href="./index.aspx">Home</a>
                            <span>History Cart</span> 
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
                    <br>
                    <div class="shoping__cart__table">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="5">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField>
                                    <ItemTemplate>
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Customer/HINH/" + Eval("hinh") %>' />
                                    </ItemTemplate>
                                    <ControlStyle Height="70px" Width="70px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="tenhang" HeaderText="Product ID" />
                                <asp:BoundField DataField="soluong" HeaderText="Quality" />
                                <asp:TemplateField HeaderText="Price">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("dongia","{0:0,0}") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Total">                                
                                    <ItemTemplate>
                                        <asp:Label ID="lbl_thanhtien" runat="server" Text='<%# Eval("thanhtien","{0:0,0}") %>'></asp:Label>
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
                    <span class="vip2"><asp:Label ID="lbl_total" runat="server" Text="" Visible="false"></asp:Label></span>
                </div>
            </div>  
        </div>
    </section>
    <!-- Shoping Cart Section End -->
     </form>
</asp:Content>
