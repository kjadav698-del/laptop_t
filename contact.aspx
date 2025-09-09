<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="laptop_t.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
                <main class="contact">
    <h2>Contact Us</h2>
    <form action="send_message.php" method="post">
      <label>Name</label>
      <input type="text" name="name" required>
      <label>Email</label>
      <input type="email" name="email" required>
      <label>Message</label>
      <textarea name="message" rows="5" required></textarea>
      <button type="submit" class="btn">Send Message</button>
    </form>

    <div class="contact-info">
      <p><strong>Address:</strong> 123 Tech Street, Mumbai, India</p>
      <p><strong>Phone:</strong> +91 9876543210</p>
      <p><strong>Email:</strong> support@techlaptops.com</p>
    </div>
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


