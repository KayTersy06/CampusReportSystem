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
    <title>Status Selection Result</title>
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
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 500px;
        }

        h2 {
            color: #007bb5;
        }

        p {
            background-color: #b3e5fc;
            padding: 12px;
            border-radius: 8px;
            font-size: 18px;
            color: #004d60;
        }

        .back-link {
            display: inline-block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bb5;
            font-weight: bold;
        }

        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<%
    String selectedStatus = (String) request.getAttribute("selectedStatus");
%>
<body>
    <div class="container">
        <h2>Selected Status</h2>
        <p><%= selectedStatus != null ? selectedStatus : "No status selected." %></p>
        <a href="selectStatus.jsp" class="back-link">← Back to Status Form</a>
    </div>
</body>
</html>
