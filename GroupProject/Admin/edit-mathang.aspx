<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="edit-mathang.aspx.cs" Inherits="GroupProject.Admin.edit_mathang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Search" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1 class="font-weight-bold" style="text-align:center">Edit Oder Information</h1>
    <div class="container">
    <h4 class="text-primary">Oder Information:</h4>
  <div class="form-row">
      <%--Cần thiết--%>
    <div class="form-group col-md-4">
      <label for="productID">Product ID:</label>
        <asp:TextBox id="productID" class="form-control border border-primary" type="text" runat="server" name="productID" ReadOnly="true" />
    </div>
    <div class="form-group col-md-8">
      <label for="Name">Name:</label>
        <asp:TextBox type="text" class="form-control  border border-primary" id="Name" name="Name" runat="server" required/>
    </div>
  </div>
  <div class="form-row">
      <div class="form-group col-md-12">
      <label for="Note">Note:</label>
      <asp:TextBox type="text" class="form-control  border border-success" id="Note" name="Note" runat="server" required/>
    </div>
  </div> 
 <div class="form-row">
    <div class="form-group col-md-4">
      <label for="Price">Price:</label>
        <asp:TextBox type="number" class="form-control  border border-primary" id="Price" name="Price" runat="server" required/>
    </div>
    <div class="form-group col-md-4">
      <label for="IDLoai">ID Loai:</label>
      <asp:DropDownList class="form-control border border-warning" ID="IDLoai" runat="server">
        <asp:ListItem>CPK</asp:ListItem>
        <asp:ListItem>CTA</asp:ListItem>
        <asp:ListItem>DPK</asp:ListItem>
        <asp:ListItem>DTA</asp:ListItem>
      </asp:DropDownList>       
    </div>
    <div class="form-group col-md-4">
      <label for="Image">Image:</label>
        <asp:TextBox type="text" class="form-control  border border-primary" id="Image" name="Image" runat="server" required/>
    </div>
  </div>
  <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary text-center" Text="Submit" OnClick="Button1_Click1"/>
</div>
</asp:Content>
