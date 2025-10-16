<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="shop.aspx.cs" Inherits="laptop_t.shop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="ContentPlaceHolder2">
    <main class="shop">
        <h2>Shop Laptops</h2>
        <div class="grid">
            <div class="card">
                <asp:DataList ID="DataList1" runat="server" CellPadding="120" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="3" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <asp:Image ID="Image1" runat="server"
                            ImageUrl='<%# ResolveUrl("admin/") + Eval("P_Image") %>'
                            Width="150px" Height="150px" />
                        <br />
                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("P_Name") %>'></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("P_Price") %>'></asp:Label>
                        <br />
                        <asp:LinkButton ID="LinkButton1" class="btn" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="view">View Details</asp:LinkButton>
                        <br />
                        <asp:LinkButton ID="LinkButton2" class="btn" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="addCart">Add to Cart</asp:LinkButton>
                    </ItemTemplate>
                </asp:DataList>

                <%--<img src="images/images1.jpeg" alt="Laptop 1">
        <h4>ProBook 450</h4>
        <p>₹55,000</p>
        <form action="cart.html" method="post">
          <input type="hidden" name="product" value="ProBook 450">
          <input type="hidden" name="price" value="55000">
          <button type="submit" class="btn">Add to Cart</button>
        </form>--%>
                <%--</div>
      <div class="card">
        <img src="images/images2.jpg" alt="Laptop 2">
        <h4>ThinkPad X1</h4>
        <p>₹80,000</p>
        <form action="cart.html" method="post">
          <input type="hidden" name="product" value="ThinkPad X1">
          <input type="hidden" name="price" value="80000">
          <button type="submit" class="btn">Add to Cart</button>
        </form>
      </div>
      <div class="card">
        <img src="images/images3.png" alt="Laptop 2">
        <h4>MacBook Pro 14</h4>
        <p>₹1,50,000</p>
        <form action="cart.html" method="post">
          <input type="hidden" name="product" value="ThinkPad X1">
          <input type="hidden" name="price" value="80000">
          <button type="submit" class="btn">Add to Cart</button>
        </form>
      </div>
      <div class="card">
        <img src="images/images4.jpg" alt="Laptop 2">
        <h4>Dell XPS 13</h4>
        <p>₹1,20,000</p>
        <form action="cart.html" method="post">
          <input type="hidden" name="product" value="ThinkPad X1">
          <input type="hidden" name="price" value="80000">
          <button type="submit" class="btn">Add to Cart</button>
        </form>--%>
            </div>
        </div>
    </main>
</asp:Content>

<asp:Content ID="Content6" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>TechLaptops - Home</title>
        <link rel="stylesheet" href="styles.css">
    </head>
    <body>
        <!-- Navigation -->
        <header>
            <link rel="stylesheet" href="styles.css">
            <nav class="navbar">
                <h1 class="logo">TechLaptops</h1>
                <ul>
                    <li><a href="home.aspx" class="active">Home</a></li>
                    <li><a href="about.aspx">About</a></li>
                    <li><a href="shop.aspx">Shop</a></li>
                    <li><a href="cart.aspx">Cart</a></li>
                    <li><a href="contact.aspx">Contact</a></li>
                    <li><a href="logout.aspx">Log Out</a></li>
                </ul>
            </nav>
        </header>
</asp:Content>


