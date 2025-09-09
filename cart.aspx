<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="laptop_t.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
                <main class="cart">
    <h2>Your Cart</h2>
    <form action="checkout.php" method="post">
      <table>
        <tr>
          <th>Product</th>
          <th>Price</th>
          <th>Quantity</th>
        </tr>
        <tr>
          <td>ProBook 450</td>
          <td>₹55,000</td>
          <td><input type="number" name="quantity" value="1" min="1"></td>
        </tr>
      </table>
      <button type="submit" class="btn">Proceed to Checkout</button>
    </form>
  </main>
</asp:Content>

<asp:Content ID="Content6" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <!DOCTYPE html>
                <html>
                <head>
                    <meta charset="UTF-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"><title>TechLaptops - Home</title>
                    <link rel="stylesheet" href="styles.css">
                </head>
                <body>
                    <!-- Navigation -->
                    <header>
                        <nav class="navbar">
                            <h1 class="logo">TechLaptops</h1>
                            <ul>
                                <li><a href="home.aspx" class="active">Home</a></li>
                                <li><a href="about.aspx">About</a></li>
                                <li><a href="shop.aspx">Shop</a></li>
                                <li><a href="cart.aspx">Cart</a></li>
                                <li><a href="contact.aspx">Contact</a></li>
                                <li><a href="index.aspx">Log Out</a></li>
                            </ul>
                        </nav>
                    </header>
</asp:Content>


