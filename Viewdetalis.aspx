<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viewdetalis.aspx.cs" Inherits="laptop_t.Viewdetalis" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }

        center {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            padding: 20px;
        }

        .product-card {
            background: #fff;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            padding: 20px;
            margin: 20px;
            text-align: center;
            width: 350px;
            transition: transform 0.2s ease-in-out;
        }

        .product-card:hover {
            transform: scale(1.03);
        }

        .product-card img {
            border-radius: 8px;
            margin-bottom: 15px;
        }

        .product-info {
            font-size: 15px;
            color: #333;
            margin: 5px 0;
        }

        .price {
            font-size: 18px;
            color: #e63946;
            font-weight: bold;
            margin: 10px 0;
        }

        .btn {
            display: inline-block;
            background-color: #0077cc;
            color: #fff !important;
            padding: 10px 18px;
            border-radius: 6px;
            text-decoration: none;
            font-size: 14px;
            cursor: pointer;
            transition: background 0.2s ease-in-out;
        }

        .btn:hover {
            background-color: #005fa3;
        }

        .company-info {
            margin-top: 15px;
            font-size: 14px;
            color: #555;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="1" RepeatLayout="Table" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnItemCommand="DataList1_ItemCommand">
                    <ItemTemplate>
                        <div class="product-card">
                            <asp:Image ID="Image1" runat="server" Height="300" Width="300" ImageUrl='<%# ResolveUrl("admin/") + Eval("P_Image") %>' />
                            <div class="product-info">Product Name: 
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("P_Name") %>'></asp:Label>
                            </div>
                            <div class="product-info">Configuration: 
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("P_sp") %>'></asp:Label>
                            </div>
                            <div class="price">₹ 
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("P_Price") %>'></asp:Label>
                            </div>
                            <asp:LinkButton ID="LinkButton2" CssClass="btn" runat="server" CommandArgument='<%# Eval("Id") %>' CommandName="addCart">Add to Cart</asp:LinkButton>
                        </div>
                    </ItemTemplate>
                </asp:DataList>

<%--                <div class="company-info">
                    Company Name: <asp:Label ID="lblCategoryName" runat="server" Text=""></asp:Label>
                </div>--%>
            </center>
        </div>
    </form>
</body>
</html>
