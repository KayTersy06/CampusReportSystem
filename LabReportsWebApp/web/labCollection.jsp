<%-- 
    Document   : labCollection
    Created on : 12 May 2025, 7:14:21 AM
    Author     : ripfu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Fetch Lab Locations</title>
    <style>
        body {
            background-color: #e0f7fa; 
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff; 
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #007bb5; 
            margin-bottom: 20px;
        }

        button {
            background-color: #03a9f4; 
            color: white;
            border: none;
            padding: 12px 24px;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0288d1; 
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Search for Lab Location</h2>
        <form action="labLocationServlet" method="GET">
            <input type="text" name="labQuery" placeholder="Enter lab name or location" required />
            <br>
            <button type="submit">Search</button>
        </form>
    </div>
</body>
</html>


