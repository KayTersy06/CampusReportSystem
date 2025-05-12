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
            background-color: #e0f7fa; /* light sky blue */
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #ffffff; /* white */
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        h2 {
            color: #007bb5; /* deeper sky blue */
            margin-bottom: 20px;
        }

        button {
            background-color: #03a9f4; /* sky blue */
            color: white;
            border: none;
            padding: 12px 24px;
            font-size: 16px;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0288d1; /* darker sky blue */
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Click below to view all lab locations</h2>
        <form action="LabLocationServlet" method="get">
            <button type="submit">Show Lab Locations</button>
        </form>
    </div>
</body>
</html>


