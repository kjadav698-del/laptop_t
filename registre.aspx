<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registre.aspx.cs" Inherits="laptop_t.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <link rel="stylesheet" href="styles.css">

    <title>Registration Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
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
        input[type="email"],
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
            background: #2986ce;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background: #25c9be;
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
                <h2>Register</h2>
                <form >
                    <label for="username">Username:</label>
                    <asp:TextBox ID="txtus" runat="server"></asp:TextBox>
                    <%--<input type="text" id="username" name="username" required>--%>
                    <label for="email">Email:</label>
                    <asp:TextBox ID="txtem" runat="server"></asp:TextBox>
                    <%--<input type="email" id="email" name="email" required>--%>
                    <label for="password">Password:</label>
                    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                    <label for="Address">Address:</label>
                    <asp:TextBox ID="txtads" runat="server"></asp:TextBox>
                     <label for="City">City:</label>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>---Select City---</asp:ListItem>
                        <asp:ListItem>Rajkot</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Pune</asp:ListItem>
                    </asp:DropDownList>
                     <label for="Gender">Gender:</label>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
                     <label for="Image">Image:</label>
                    <asp:FileUpload ID="fldimg" runat="server" />
                   
                   

                   
                    <%--<input type="password" id="password" name="password" required>--%>
                    <%--<button type="submit">Register</button>--%>
                    <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
                </form>
                <p>Already have an account? <a href="index.aspx">Login here</a></p>
            </div>
        </div>
    </form>
</body>
</html>
