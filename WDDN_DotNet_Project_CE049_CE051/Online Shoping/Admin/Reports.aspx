<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPage.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="Online_Shoping.Admin.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Products Report</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">
                All Product Report</div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-sm-3">
                        <label>
                            Select Category</label>
                        <asp:DropDownList ID="ddlCategory" CssClass="form-control" runat="server" OnSelectedIndexChanged="ddlCategory_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <div class="col-sm-3">
                        <asp:Button ID="btnSearch" CssClass="btn btn-info" runat="server" Text="Search" OnClick="btnSearch_Click" />
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <asp:GridView ID="GridView1" CssClass="table" runat="server" AutoGenerateColumns="false"
                            EmptyDataText="*Record Not Found...">
                            <EmptyDataRowStyle ForeColor="Red" />
                            <Columns>
                                <asp:TemplateField HeaderText="Image">
                                    <ItemTemplate>
                                        <asp:Image runat="server" ID="imggg" ImageUrl='<%#Eval("image") %>' Width="60px"   Height="60px" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="IName" HeaderText="ItemName" />
                                <asp:BoundField DataField="Price" HeaderText="Price" />
                                <asp:BoundField DataField="Size" HeaderText="Size" />
                                <asp:BoundField DataField="Qnt" HeaderText="Qnt" />
                                <asp:BoundField DataField="AQnt" HeaderText="AQnt" />
                                <asp:BoundField DataField="SQnt" HeaderText="SQnt" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div class="panel-footer">
            </div>
        </div>
    </div>
</asp:Content>