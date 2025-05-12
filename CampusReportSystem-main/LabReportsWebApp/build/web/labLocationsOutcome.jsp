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
    <title>Lab Locations</title>
    <style>
        body {
            background-color: #e0f7fa; /* light sky blue */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
        }

        .container {
            background-color: #ffffff; /* white */
            margin-top: 50px;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 600px;
            text-align: center;
        }

        h2 {
            color: #007bb5; /* deeper sky blue */
            margin-bottom: 20px;
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            background-color: #b3e5fc; /* softer blue */
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
        <h2>Available Lab Locations</h2>
        <ul>
            <%
                List<String> locations = (List<String>) request.getAttribute("locations");
                if (locations != null && !locations.isEmpty()) {
                    for (String location : locations) {
            %>
                        <li><%= location %></li>
            <%
                    }
                } else {
            %>
                    <li>No lab locations found.</li>
            <%
                }
            %>
        </ul>
        <a href="fetchLabLocations.jsp" class="back-link">← Back to Menu</a>
    </div>
</body>
</html>