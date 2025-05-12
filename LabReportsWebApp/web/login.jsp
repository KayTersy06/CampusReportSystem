<%-- 
    Document   : login
    Created on : 12 May 2025, 12:17:02 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
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
            max-width: 400px;
            width: 100%;
        }

        .container h1 {
            text-align: center;
            margin-bottom: 40px;
            color: #333333;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 5px;
            color: #555555;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        .form-group input[type="submit"] {
            background-color: #4facfe;
            color: white;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-group input[type="submit"]:hover {
            background-color: #00c6ff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login</h1>
        <form action="j_security_check" method="POST">
            <div class="form-group">
                <label for="username">Username:</label>
                <input type="text" id="username" name="j_username" required>
            </div>
            <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" id="password" name="j_password" required>
            </div>
            <div class="form-group">
                <input type="submit" value="LOGIN">
            </div>
        </form>
    </div>
</body>
</html>