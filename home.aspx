<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="laptop_t.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
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

<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
                <!-- Hero Section -->
                <section class="hero">
                    <h2>Powerful. Portable. Perfect.</h2>
                    <p>
                        Discover the best laptops for work, play, and everything in between.</p>
    </section>

                <!-- Featured Laptops in Single-Line Scrollable Layout -->
                <section class="featured">
                    <h3>Featured Laptops</h3>
                    <div class="card-container">
                        <div class="card">
                            <img src="images/images1.jpeg" alt="ProBook 450">
                            <h4>ProBook 450</h4>
                            <p>
                                ₹55,000</p>
                            <a href="shop.html" class="btn">Shop Now</a>
                        </div>
                        <div class="card">
                            <img src="images/images2.jpg" alt="ThinkPad X1">
                            <h4>ThinkPad X1</h4>
                            <p>
                                ₹80,000</p>
                            <a href="shop.html" class="btn">Shop Now</a>
                        </div>
                        <div class="card">
                            <img src="images/images3.png" alt="MacBook Pro 14">
                            <h4>MacBook Pro 14</h4>
                            <p>
                                ₹1,50,000</p>
                            <a href="shop.html" class="btn">Shop Now</a>
                        </div>
                        <div class="card">
                            <img src="images/images4.jpg" alt="Dell XPS 13">
                            <h4>Dell XPS 13</h4>
                            <p>
                                ₹1,20,000</p>
                            <a href="shop.html" class="btn">Shop Now</a>
                        </div>
                    </div>
    </section>
</asp:Content>


