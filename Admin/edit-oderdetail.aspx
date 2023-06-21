<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="edit-oderdetail.aspx.cs" Inherits="GroupProject.Admin.edit_oderdetail" %>
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
    <div class="form-group col-md-6">
      <label for="productID">Product ID:</label>
        <asp:TextBox id="productID" class="form-control border border-primary" type="text" runat="server" name="productID" ReadOnly="true" />
    </div>
    <div class="form-group col-md-6">
      <label for="Name">User ID:</label>
        <asp:TextBox type="text" class="form-control  border border-primary" id="User" name="User" runat="server" ReadOnly="true" required/>
    </div>
  </div>
  <div class="form-row">
      <div class="form-group col-md-12">
      <label for="Note">Quality:</label>
      <asp:TextBox type="number" class="form-control  border border-success" id="Quality" name="Quality" runat="server" required/>
    </div>
  </div> 
  <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary text-center" Text="Submit" OnClick="Button1_Click"/>
</div>
</asp:Content>
