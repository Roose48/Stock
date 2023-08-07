<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="WebApp_Stock.Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Web App</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous" />

    <style>
        /* Custom CSS for the sliding sidebar */
        #sidebar.active {
            margin-left: -250px;
        }
        #sidebar {
            min-width: 250px;
            max-width: 250px;
            height: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 999;
            background: darkslategray;
            transition: all 0.3s;
            box-shadow: 9px 9px 9px rgba(0, 0, 0, 0.2);
        }

        #sidebar .p-4 {
            height: 100%;
            overflow-y: auto;
        }

        #sidebar ul.components {
            padding: 0;
        }

        #sidebar ul li {
            margin: 0;
            padding: 8px 20px;
            border-bottom: 1px solid #f6f6f6;
        }

        #sidebar ul li a {
            font-size: 18px;
            color: white;
            display: block;
            text-decoration: none;
            transition: all 0.3s;
        }

        #sidebar ul li a:hover {
            color: #fff;
            transition: all 0.3s;
        }
    </style>
</head>
<body>
    <div id="sidebar" class="bg-darkslategray">
        <div class="p-4">
            <ul class="list-unstyled components">
                <li>
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#" onclick="loadContent('LoginPage.aspx')">User</a>
                </li>
                <li>
                    <a href="#" onclick="loadContent('Stock_Bar.aspx')">Stock</a>
                </li>
                <li>
                    <a href="#" onclick="loadContent('Bar.aspx')">Bar</a>
                </li>
                <li>
                    <a href="#" onclick="loadContent('Impression.aspx')">IMP</a>
                </li>
                <li>
                    <a href="#" onclick="loadContent('Barber.aspx')">Barber</a>
                </li>
            </ul>
        </div>
    </div>

    <!-- Page Content -->
    <div id="content">
        <div class="container">
            <div class="text-center mt-5">
                <h1>Welcome to businness_name</h1>
                <p>This is a sample web application. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam tristique justo id libero volutpat, at venenatis dui scelerisque. Etiam id purus id turpis fermentum varius. Quisque eu ipsum urna. Sed fringilla laoreet sapien, et consequat magna commodo id. Nunc nec nunc ac lorem congue rutrum. Donec sed vulputate lorem, in ullamcorper neque. Praesent varius massa at nulla cursus, eu volutpat orci vestibulum. Suspendisse vitae tellus nec justo porttitor ultrices vel vel justo. In quis purus vel arcu sollicitudin malesuada vel eu velit. Suspendisse potenti.</p>

                <!-- "Connect" button -->
                <a href="#" class="btn btn-primary" onclick="loadContent('LoginPage.aspx')">Connect</a>
            </div>
        </div>
    </div>

    <!-- Login Screen -->
    <div class="container text-center mt-5" id="loginScreen" style="display: none;">
        <!-- Add your login form and other login-related content here -->
    </div>

    <!-- JavaScript to handle sidebar toggling and content loading -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#sidebarCollapse").on("click", function () {
                $("#sidebar").toggleClass("active");
            });
        });

        function loadContent(pageUrl) {
            $("#content").hide();
            $("#loginScreen").empty().load(pageUrl, function () {
                $("#loginScreen").show();
            });
        }
    </script>
</body>
</html>
