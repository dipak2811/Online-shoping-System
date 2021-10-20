<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddQuantity.aspx.cs" Inherits="Online_Shoping.Admin.AddQuantity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Add Quantity</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <br />
<div class="container">

<div class="row">
<div class="col-sm-3">
<div class="form-group">
<label>Item Name:</label>
    <asp:DropDownList ID="ddlItemName" CssClass="form-control" runat="server">
    </asp:DropDownList>
</div>
</div>

<div class="col-sm-3">
<div class="form-group">
<label>Qty:</label>
    <asp:TextBox ID="txtQty" CssClass="form-control" runat="server"></asp:TextBox>
</div>
</div>

<div class="col-sm-3">
<p></p>
    <asp:Button ID="btnAddQuantity" CssClass="btn btn-success" runat="server" 
        Text="ADD" onclick="btnAddQuantity_Click" />
<p></p>
</div>

</div>

<div class="row">
<div class="col-sm-12">
<div class=" table table-responsive">
    <asp:GridView ID="GridView1" Caption="Add Quantity Record" CssClass="table " runat="server">
    </asp:GridView>

</div>
</div>
</div>
</div>
</asp:Content>
