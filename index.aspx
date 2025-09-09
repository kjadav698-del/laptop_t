<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="laptop_t.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="styles.css">

    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e5e9eb;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 300px;
            margin: 100px auto;
            padding: 20px;
            background: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            margin: 10px 0 5px;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            width: 100%;
            padding: 10px;
            background: #3ba4cd;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

            button:hover {
                background: #27b9cc;
            }

        p {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container">
                <h2>Login</h2>
                <form>
                    <label for="email">Email:</label>
                    <asp:TextBox ID="txtem" runat="server"></asp:TextBox>
                    <label for="password">Password:</label>
                    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                    <%--<input type="password" id="password" name="password" required>--%>
                    <asp:Button ID="Button1" runat="server" Text="Loing" OnClick="Button1_Click" />
                    <%--<button type="submit">Login</button>--%>    
                </form>
                <p>Don't have an account? <a href="registre.aspx">Register here</a></p>
            </div>
        </div>
    </form>
</body>
</html>
