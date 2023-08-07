<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebApp_Stock.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Stock Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />

    <style>
        body {
            background-color: darkslategray;
        }

        .stock-form {
            width: 600px;
            margin: 10px;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #fff;
        }
        .btn-add-stock {
            width: 100%;
            margin-top: 10px; /* Add some space between the button and the form */
        }
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2 class="text-center">Stock Management</h2>

            <div class="row justify-content-center">
                <div class="col-md-12 stock-form">
                    <div class="form-group">
                        <label for="txtProductName">Product Name:</label>
                        <asp:TextBox ID="txtProductName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtQuantity">Quantity:</label>
                        <asp:TextBox ID="txtQuantity" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="txtPrice">Price:</label>
                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <asp:Button ID="btnAddStock" runat="server" Text="Add Stock" CssClass="btn btn-outline-success btn-block" />
                </div>
            </div>

            <div class="row justify-content-center">
                <div class="col-md-12">
                    <asp:GridView ID="gvStock" runat="server" CssClass="table table-striped table-bordered">
                        <Columns>
                            <asp:BoundField DataField="ProductName: " HeaderText="Product Name" />
                            <asp:BoundField DataField="Quantity: " HeaderText="Quantity" />
                            <asp:BoundField DataField="Price: " HeaderText="Price" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
