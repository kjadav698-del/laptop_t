<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="editprd.aspx.cs" Inherits="laptop_t.admin.editprd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edite Product</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f3f4f6;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .form-container {
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
        }

            .form-container h2 {
                margin-bottom: 16px;
                font-size: 20px;
                color: #333;
            }

        label {
            display: block;
            margin-bottom: 6px;
            font-size: 14px;
            color: #555;
        }

        input, select, textarea {
            width: 100%;
            padding: 8px;
            margin-bottom: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        textarea {
            resize: vertical;
        }

        button {
            background: #2563eb;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
        }

            button:hover {
                background: #1d4ed8;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="form-container">
                <h2>Edit Product</h2>
                <form>
                    <label for="category">Category</label>
                   <%-- <select id="category">
                        <option>Select category</option>
                        <option>Gaming Laptops</option>
                        <option>Ultrabooks</option>
                        <option>Accessories</option>
                    </select>--%>
                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>

                    <label for="name">Product Name</label>
                    <%--<input type="text" id="name" placeholder="Enter product name" />--%>
                    <asp:TextBox ID="txtpn" runat="server"></asp:TextBox>

                    <label for="price">Price</label>
                    <%--<input type="number" id="price" placeholder="Enter price">--%>
                    <asp:TextBox ID="txtpr" runat="server"></asp:TextBox>

                    <label for="description">Description</label>
                    <%--<textarea id="description" rows="4" placeholder="Enter product description"></textarea>--%>
                    <asp:TextBox ID="txtdc" runat="server" TextMode="MultiLine"></asp:TextBox>


                    <%--<button type="submit">Save</button>--%>
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" />
                </form>
            </div>
        </div>
    </form>
</body>
</html>
