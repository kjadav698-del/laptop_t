<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="categories.aspx.cs" Inherits="laptop_t.admin.categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <!-- Main Content -->
    <div class="main">
        <h1>Product Categories</h1>

        <!-- Category List Table -->
       <%-- <table>
            <tr>
                <th>ID</th>
                <th>Category Name</th>
                <th>Status</th>
            </tr>
            <tr>
                <td>1</td>
                <td>Electronics</td>
                <td>Active</td>
            </tr>
            <tr>
                <td>2</td>
                <td>Clothing</td>
                <td>Active</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Books</td>
                <td>Inactive</td>
            </tr>
        </table>--%>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category Name">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Com_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Remove">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="remove" OnClick="LinkButton1_Click">Remove</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>

        <!-- Add Category Form -->
        <h2 style="margin-top: 40px;">Add New Category</h2>
        <form>
            <label>Category Name:</label>
            <%--<input type="text" name="category_name" required>--%>
            <asp:TextBox ID="txtcn" runat="server"></asp:TextBox>

            <%--<label>Status:</label>
            <select name="status">
                <option value="active">Active</option>
                <option value="inactive">Inactive</option>
            </select>--%>

            <%--<input type="submit" value="Add Category">--%>
            <asp:Button ID="Button1" runat="server" Text="Add Category" OnClick="Button1_Click" />
        </form>
    </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
                <html>
                <head>
                    <meta charset="UTF-8"><title>Categories</title>
                    <link rel="stylesheet" href="css/style.css">
                </head>
                <body>
                    <!-- Sidebar -->
                    <div class="sidebar">
                        <h2 style="text-align: center;">Admin</h2>
                        <a href="dashboard.aspx">Dashboard</a> <a href="categories.aspx">Category</a> <a href="products.aspx">Products</a> <a href="add-product.aspx">Add Product</a> <a href="orders.aspx">Orders</a> <a href="logout.aspx">Logout</a>
                    </div>
</asp:Content>


