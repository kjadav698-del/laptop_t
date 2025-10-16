<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="add-product.aspx.cs" Inherits="laptop_t.admin.add_product" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div class="main">
        <h1>Add New Product</h1>
        <form>
            <label>Category Name:</label>
            <asp:DropDownList ID="dlcat" runat="server" AutoPostBack="True" OnSelectedIndexChanged="dlcat_SelectedIndexChanged">
                <asp:ListItem>---Select Category---</asp:ListItem>
            </asp:DropDownList><br />

            <label>Product Name:</label>
            <%--<input type="text" name="name">--%>
            <asp:TextBox ID="txtpn" runat="server"></asp:TextBox>

            <label>Price:</label>
            <%--<input type="text" name="price">--%>
            <asp:TextBox ID="txtpr" runat="server"></asp:TextBox>

            <label>Description:</label>
            <%--<textarea name="description"></textarea>--%>
            <asp:TextBox ID="txtdc" runat="server" TextMode="MultiLine"></asp:TextBox>

            <label>Product Iamge:</label>
            <asp:FileUpload ID="fldimg" runat="server" />

            <%--<input type="submit" value="Add Product">--%>
            <asp:Button ID="Button1" runat="server" Text="Add Product" OnClick="Button1_Click" />
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content4" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <title>Categories</title>
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <!-- Sidebar -->
        <div class="sidebar">
            <h2 style="text-align: center;">Admin</h2>
            <a href="dashboard.aspx">Dashboard</a> <a href="categories.aspx">Category</a> <a href="products.aspx">Products</a> <a href="add-product.aspx">Add Product</a> <a href="orders.aspx">Orders</a> <a href="logout.aspx">Logout</a>
        </div>
</asp:Content>

