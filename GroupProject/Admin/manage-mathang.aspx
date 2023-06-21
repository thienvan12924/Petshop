﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="manage-mathang.aspx.cs" Inherits="GroupProject.Admin.managa_mathang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>






<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Search" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txt_search" class="form-control bg-light border-0 small" placeholder="Enter employee's ID..." runat="server"></asp:TextBox>
    <div class="input-group-append">
        <div class="position-relative btn btn-primary">            
            <i class="fas fa-search fa-sm text-white"></i>
            <asp:Button ID="btn_Search" CssClass="btn position-absolute fixed-top" runat="server" Text="   " />
        </div>
    </div>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="text-center text-primary mt-5 mb-5">Manage Product</h1>
    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary text-center" Text="Add" OnClick="Button1_Click"/>
    &nbsp;
    <div class="d-flex justify-content-center">
        <asp:GridView CssClass="text-center" ID="GridView" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="900px" AllowPaging="True" OnPageIndexChanging="GridView_PageIndexChanging" DataKeyNames="mahang" OnRowDeleting="GridView_RowDeleting">
            <Columns>
                <%--Hiển thị dữ liệu từ bảng PERSONAL--%>
                <asp:BoundField DataField="mahang" HeaderText="ID Product" />
                <asp:BoundField DataField="tenhang" HeaderText="Name" />
                <asp:BoundField DataField="mota" HeaderText="Note" >
                </asp:BoundField>
                <asp:BoundField DataField="dongia" HeaderText="Price" />
                <asp:BoundField DataField="hinh" HeaderText="Image" />
                <asp:BoundField DataField="maloai" HeaderText="ID Loai" />
                <asp:CommandField ShowDeleteButton="True" >
                <ControlStyle BackColor="Red" ForeColor="White" />
                </asp:CommandField>
               
                 <asp:TemplateField>
                <ItemTemplate>
                      <a href="edit-mathang.aspx?mahang=<%# Eval("mahang") %>">Edit</a>
                </ItemTemplate>
                </asp:TemplateField>
               
            </Columns>
            <%--Xét thuộc tính classic cho GridView--%>
            <AlternatingRowStyle BackColor="White" />
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
        <br />
    </div>
</asp:Content>
