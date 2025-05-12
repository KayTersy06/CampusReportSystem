<%-- 
    Document   : filter_report_by_status
    Created on : 12 May 2025, 7:48:24 AM
    Author     : ripfu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Select Report Status</title>
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
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0,0,0,0.1);
            text-align: center;
        }

        h2 {
            color: #007bb5;
            margin-bottom: 20px;
        }

        select {
            padding: 10px;
            font-size: 16px;
            border-radius: 6px;
            border: 1px solid #ccc;
            margin-bottom: 20px;
            width: 200px;
        }

        button {
            background-color: #03a9f4;
            color: white;
            padding: 10px 20px;
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
        <h2>Select a Report Status</h2>
        <form action="ProgressStatusServlet.do" method="GET">
            <select name="status" required>
                <option value="">-- Select Status --</option>
                <option value="Fixed">Fixed</option>
                <option value="Not Fixed">Not Fixed</option>
            </select>
            <br>
            <button type="submit">Submit</button>
        </form>
    </div>
</body>
</html>
