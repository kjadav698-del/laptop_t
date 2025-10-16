<%@ Page Title="" Language="C#" MasterPageFile="~/admin/Site2.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="laptop_t.admin.products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <div class="main">
        <h1>Product List</h1>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Id">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Image">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server" Height="100" Width="100" ImageUrl='<%# Eval("P_Image") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category Id">
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("cat_id") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Name">
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("P_Name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Description">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("P_sp") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Product Price">
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("P_Price") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edite">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="edite">Edite</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Remove">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="remove">Remove</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <%--<table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Price</th>
            <th>Status</th>
        </tr>
        <tr>
            <td>1</td>
            <td>Phone X</td>
            <td>$999</td>
            <td>Available</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Laptop Pro</td>
            <td>$1999</td>
            <td>Out of Stock</td>
        </tr>
    </table>--%>
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


