<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_admin.aspx.cs" Inherits="laptop_t.admin.login_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
             <div class="container">
     <h2>Admin Login</h2>
    
         <label for="email">Email:</label>
         <asp:TextBox ID="txtem" runat="server"></asp:TextBox><br />
         <label for="password">Password:</label>
         <asp:TextBox ID="txtpass" runat="server"></asp:TextBox><br />--%>

<%--<input type="password" id="password" name="password" required>--%>
<%--         <asp:Button ID="Button1" runat="server" Text="Loing" OnClick="Button1_Click" />--%>
<%--<button type="submit">Login</button>--%>

<%--     <p>Don't have an account? <a href="admin_ragistraction.aspx">Register here</a></p>
 </div>
        </div>
    </form>
        </center>
</body>
</html>--%>


<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_admin.aspx.cs" Inherits="laptop_t.admin.login_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f3;
            margin: 0;
            padding: 0;
        }

        .container {
            background-color: white;
            width: 350px;
            padding: 30px 40px;
            margin-top: 80px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #555;
        }

        input[type="text"], input[type="password"], input[type="email"],
        asp\:TextBox {
            width: 100%;
            padding: 8px 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 14px;
        }

        asp\:Button {
            width: 100%;
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

            asp\:Button:hover {
                background-color: #0056b3;
            }

        p {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
        }

            p a {
                color: #007BFF;
                text-decoration: none;
            }

                p a:hover {
                    text-decoration: underline;
                }

        .button {
            background-color: #4CAF50;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin-top: 10px;
            cursor: pointer;
        }

            .button:hover {
                background-color: #45a049;
            }
    </style>
</head>
<body>
    <center>
        <form id="form1" runat="server">
            <div>
                <div class="container">
                    <h2>Admin Login</h2>

                    <label for="email">Email:</label>
                    <asp:TextBox ID="txtem" runat="server"></asp:TextBox><br />
                    <label for="password">Password:</label>
                    <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox><br />

                    <%--<input type="password" id="password" name="password" required>--%>
                    <asp:Button ID="Button1" runat="server" Text="Loing" CssClass="button" OnClick="Button1_Click" />
                    <%--<button type="submit">Login</button>--%>

                    <p>Don't have an account? <a href="admin_ragistraction.aspx">Register here</a></p>
                </div>
            </div>
        </form>
    </center>
</body>
</html>
