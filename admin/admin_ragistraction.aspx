<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_ragistraction.aspx.cs" Inherits="laptop_t.admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Admin Registraction</h1>
                <table border="3">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:TextBox ID="txtnum" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender:</td>
                        <td>
                            <asp:RadioButtonList ID="rdegen" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:TextBox ID="txtem" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td>
                            <asp:DropDownList ID="dlct" runat="server">
                                <asp:ListItem>--Select City--</asp:ListItem>
                                <asp:ListItem>Pune</asp:ListItem>
                                <asp:ListItem>Rajkot</asp:ListItem>
                                <asp:ListItem>Ahemdabad</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>--%>
                    <%--      <tr>
            <td>Image:</td>
            <td>
                <asp:FileUpload ID="fldimg" runat="server" />
            </td>
        </tr>--%>
 <%--                   <tr>
                        <td>Password:</td>
                        <td>
                            <asp:TextBox ID="txtpw" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                   <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="register" OnClick="Button1_Click" />
                        </td>
                   </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_ragistraction.aspx.cs" Inherits="laptop_t.admin.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        h1 {
            color: #333;
            margin-top: 20px;
        }

        table {
            background-color: #fff;
            border-collapse: collapse;
            width: 400px;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        table td {
            padding: 10px;
            font-size: 14px;
        }

        input[type="text"],
        input[type="password"],
        select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }

        .aspNetDisabled {
            background-color: #e9e9e9;
        }

        asp\:TextBox,
        asp\:DropDownList,
        asp\:RadioButtonList {
            width: 100%;
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
    <form id="form1" runat="server">
        <div>
            <center>
                <h1>Admin Registraction</h1>
                <table border="3">
                    <tr>
                        <td>Name:</td>
                        <td>
                            <asp:TextBox ID="txtnum" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>Gender:</td>
                        <td>
                            <asp:RadioButtonList ID="rdegen" runat="server" RepeatDirection="Horizontal">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <asp:TextBox ID="txtem" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td>
                            <asp:DropDownList ID="dlct" runat="server">
                                <asp:ListItem>--Select City--</asp:ListItem>
                                <asp:ListItem>Pune</asp:ListItem>
                                <asp:ListItem>Rajkot</asp:ListItem>
                                <asp:ListItem>Ahemdabad</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <%--      <tr>
            <td>Image:</td>
            <td>
                <asp:FileUpload ID="fldimg" runat="server" />
            </td>
        </tr>--%>
                    <tr>
                        <td>Password:</td>
                        <td>
                            <asp:TextBox ID="txtpw" runat="server" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                   <tr>
                        <td colspan="2" align="center">
                            <asp:Button ID="Button1" runat="server" Text="register" CssClass="button" OnClick="Button1_Click" />
                        </td>
                   </tr>
                </table>
            </center>
        </div>
    </form>
</body>
</html>
