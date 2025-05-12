<%-- 
    Document   : labLocationsOutcome
    Created on : 12 May 2025, 7:33:47 AM
    Author     : ripfu
--%>

<%@ page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>Lab Search Result</title>
    <style>
        body {
            background-color: #e0f7fa;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
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
            color: #004d60;
            font-size: 18px;
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
    
    String lab = (String) request.getAttribute("lab");
%>
<body>
    <div class="container">
        <h2>Lab Location Entered</h2>
        <p><%= lab != null && !lab.trim().isEmpty() ? lab : "No lab entered." %></p>
        <a href="searchLabLocation.jsp" class="back-link">← Back to Search</a>
    </div>
</body>
</html>
