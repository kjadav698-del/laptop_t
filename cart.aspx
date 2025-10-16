<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="laptop_t.cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
                <main class="cart">
    <h2>Your Cart</h2>
  <%--  <form action="checkout.php" method="post">
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
    </form>--%>
                    <asp:GridView ID="GridView1" runat="server" DataKeyNames="cart_prod_id" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowCommand="GridView1_RowCommand">
                        <Columns>
                            <asp:TemplateField HeaderText="Product Image">
                                <ItemTemplate>
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%#ResolveUrl("admin/") + Eval("cart_prod_image") %>' />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name">
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("cart_prod_name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Price">
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("cart_prod_price") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Quantity">
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("cart_prod_quant") %>'></asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Total Amount">
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("cart_prod_total") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Action">
                                <ItemTemplate>
                                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="remove">Remove</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                </asp:GridView>
                    <asp:Button ID="Button3" runat="server" Text="Continue Shopping" Enabled="False" OnClick="Button3_Click" Visible="False" />
                    <asp:Button ID="Button1" runat="server" Text="update cart" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Ckeck Out" />
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
                                <li><a href="logout.aspx">Log Out</a></li>
                            </ul>
                        </nav>
                    </header>
</asp:Content>


