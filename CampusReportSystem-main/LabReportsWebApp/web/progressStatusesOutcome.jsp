<%-- 
    Document   : progressStatusesOutcome
    Created on : 12 May 2025, 7:49:33 AM
    Author     : ripfu
--%>

<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Progress Statuses</title>
    <style>
        body {
            background-color: #e0f7fa;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }

        .container {
            background-color: #ffffff;
            margin-top: 50px;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            text-align: center;
        }

        h2 {
            color: #007bb5;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            background-color: #b3e5fc;
            margin: 10px 0;
            padding: 12px;
            border-radius: 8px;
            font-size: 16px;
            color: #004d60;
        }

        .back-link {
            display: inline-block;
            margin-top: 25px;
            text-decoration: none;
            color: #007bb5;
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Current Progress Statuses</h2>
        <ul>
            <%
                List<String> statuses = (List<String>) request.getAttribute("statuses");
                if (statuses != null && !statuses.isEmpty()) {
                    for (String status : statuses) {
            %>
                        <li><%= status %></li>
            <%
                    }
                } else {
            %>
                    <li>No statuses found.</li>
            <%
                }
            %>
        </ul>
        <a href="menu.html" class="back-link">← Back to Menu</a>
    </div>
</body>
</html>

