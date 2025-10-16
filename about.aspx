<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="laptop_t.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content5" runat="server" contentplaceholderid="ContentPlaceHolder2">
                  <main class="about">
    <h2>About Us</h2>
    <img src="images/images10.jpg" >
    <p>At TechLaptops, we believe in empowering people with technology. Founded in 2020, our mission is to provide high-performance laptops that cater to professionals, students, and gamers alike.</p>
    <p>We value innovation, reliability, and customer satisfaction above all. Our dedicated team works tirelessly to ensure every laptop we sell delivers unmatched value.</p>
    <h3>Our Team</h3>
    <p>We are a group of tech enthusiasts, designers, and engineers passionate about helping you find the perfect laptop.</p>
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


