<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="laptop_t.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <link rel="stylesheet" href="styles.css" />
    <style>
        /* === Global Styling === */
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background:white;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }

        /* === Login Container === */
        .container {
            background: #ffffff;
            width: 350px;
            padding: 30px 25px;
            border-radius: 10px;
            box-shadow: 0px 5px 20px rgba(0, 0, 0, 0.15);
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
            font-weight: 600;
        }

        /* === Label and Inputs === */
        label {
            font-size: 14px;
            color: #333;
            margin-bottom: 6px;
            display: block;
        }

        input[type="text"],
        input[type="password"],
        .aspNetDisabled,
        input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            outline: none;
            margin-bottom: 15px;
            font-size: 14px;
            transition: border 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-color: #3ba4cd;
            box-shadow: 0 0 5px rgba(59, 164, 205, 0.3);
        }

        /* === Button Styling === */
        button,
        input[type="submit"],
        .aspNetButton {
            width: 100%;
            padding: 10px;
            background: linear-gradient(135deg, #3ba4cd, #1c7ca3);
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 500;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.2s;
        }

        button:hover,
        input[type="submit"]:hover,
        .aspNetButton:hover {
            background: linear-gradient(135deg, #2b91b3, #176b85);
            transform: translateY(-1px);
        }

        /* === Footer Text === */
        p {
            text-align: center;
            font-size: 14px;
            color: #555;
            margin-top: 15px;
        }

        p a {
            color: #3ba4cd;
            text-decoration: none;
            font-weight: 500;
        }

        p a:hover {
            text-decoration: underline;
        }

        /* === Responsive Design === */
        @media (max-width: 400px) {
            .container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Login</h2>

            <label for="txtem">Email:</label>
            <asp:TextBox ID="txtem" runat="server" CssClass="form-control"></asp:TextBox>

            <label for="txtpass">Password:</label>
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="aspNetButton" OnClick="Button1_Click" />

            <p>Don't have an account? <a href="registre.aspx">Register here</a></p>
        </div>
    </form>
</body>
</html>
