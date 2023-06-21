<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Site1.Master" AutoEventWireup="true" CodeBehind="add-mathang.aspx.cs" Inherits="GroupProject.Admin.add_mathang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CPH_Search" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h1 class="font-weight-bold" style="text-align:center">Add Product Information</h1>
    <div class="container">
    <h4 class="text-primary">Product Information:</h4>
  <div class="form-row">
      <%--Cần thiết--%>
    <div class="form-group col-md-4">
      <label for="inputID">Product ID:</label>
        <input id="productID" class="form-control border border-primary" type="text" name="productID" required/>
    </div>
    <div class="form-group col-md-8">
      <label for="inputFirstName">Name:</label>
      <input type="text" class="form-control  border border-primary" id="Name" name="Name" required>
    </div>
  </div>
  <div class="form-row">
      <div class="form-group col-md-12">
      <label for="inputAddress">Note:</label>
    <input type="text" class="form-control border border-success" id="Note" name="Note" placeholder="Rất ngon bổ rẻ..." required>
    </div>
  </div> 
 <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputShare">Price:</label>
      <input type="number" class="form-control  border border-primary" id="Price" name="Price" required>
    </div>
    <div class="form-group col-md-4">
      <label for="inputBenefit">ID Loai:</label>
      <select class="form-control border border-warning" id="IDLoai" name="IDLoai">
            <option>CPK</option>
            <option>CTA</option>
            <option>DPK</option>
            <option>DTA</option>
      </select>  
    </div>
    <div class="form-group col-md-4">
      <label for="inputThruDate">Image:</label>
      <input type="text" class="form-control border border-primary" id="Image" name="Image" required>

    </div>
  </div>
  <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary text-center" Text="Submit" OnClick="Button1_Click"  />
</div>
</asp:Content>
