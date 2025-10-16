<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="laptop_t.admin.orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div class="main">
        <h1>Orders</h1>
        <table>
            <tr>
                <th>Order ID</th>
                <th>Customer</th>
                <th>Total</th>
                <th>Status</th>
            </tr>
            <tr>
               <%-- <td>#1001</td>
                <td>Jane Doe</td>
                <td>$1499</td>
                <td>Shipped</td>--%>
                <td>01</td>
                <td>keval</td>
                <td>55000</td>
                 <td>shippe </td>
            </tr>
          <%--  <tr>
                <td>#1002</td>
                <td>John Smith</td>
                <td>$299</td>
                <td>Pending</td>
            </tr>--%>
        </table>
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


