<%-- 
    Document   : login_error
    Created on : 12 May 2025, 12:20:10 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Login Error Page</title>
    <style>
        /* Reset default styles */
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background-color: #ffffff;
            padding: 40px 30px;
            border-radius: 10px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
            max-width: 500px;
            width: 100%;
            text-align: center;
        }

        .container h1 {
            color: #333333;
            margin-bottom: 30px;
        }

        .container p {
            font-size: 18px;
            color: #555555;
            margin-bottom: 20px;
        }

        .button-link {
            display: inline-block;
            padding: 12px 25px;
            background-color: #4facfe;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 16px;
            transition: background-color 0.3s ease;
            cursor: pointer;
        }

        .button-link:hover {
            background-color: #00c6ff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login Error</h1>
        <p>Invalid login credentials.</p>
        <a href="index.html" class="button-link">Home</a>
    </div>
</body>
</html>
