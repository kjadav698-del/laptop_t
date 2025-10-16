<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="laptop_t.admin.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div class="main">
        <h1>Welcome to Admin Dashboard</h1>
        <p>Total Products: 120</p>
        <p>Total Orders: 342</p>
        <p>Total Revenue: $24,500</p>
    </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
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



