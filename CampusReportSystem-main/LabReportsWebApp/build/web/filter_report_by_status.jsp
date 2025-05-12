<%-- 
    Document   : filter_report_by_status
    Created on : 12 May 2025, 7:48:24 AM
    Author     : ripfu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Fetch Progress Statuses</title>
    <style>
        body {
            background-color: #e0f7fa;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            text-align: center;
        }

        h2 {
            color: #007bb5;
            margin-bottom: 20px;
        }

        button {
            background-color: #03a9f4;
            color: white;
            padding: 12px 24px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0288d1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>View All Progress Statuses</h2>
        <form action="ProgressStatusServlet" method="get">
            <button type="submit">Fetch Statuses</button>
        </form>
    </div>
</body>
</html>

