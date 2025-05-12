<%-- 
    Document   : reportAdded
    Created on : May 4, 2025, 10:17:26 AM
    Author     : USER
--%>
<%@page import="za.ac.tut.model.entity.Report"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Successfully Added</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f9f9f9;
                margin: 20px;
                color: #333;
            }
            h1 {
                color: #2c3e50;
            }
            table {
                border-collapse: collapse;
                width: 60%;
                margin-top: 20px;
                background-color: #fff;
                box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            }
            th, td {
                padding: 12px 15px;
                border: 1px solid #ccc;
            }
            th {
                background-color: #2980b9;
                color: white;
                text-align: left;
            }
            a {
                color: #2980b9;
                text-decoration: none;
            }
            a:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <h1>Report Added Successfully</h1>

        <%
            Report rep = (Report) request.getAttribute("rep");
            if (rep != null) {
        %>
            <table>
                <thead>
                    <tr>
                        <th>Field</th>
                        <th>Value</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Report ID</td>
                        <td><%= rep.getId() %></td>
                    </tr>
                    <tr>
                        <td>Description</td>
                        <td><%= rep.getDescription() %></td>
                    </tr>
                    <tr>
                        <td>Lab</td>
                        <td><%= rep.getLab() %></td>
                    </tr>
                    <tr>
                        <td>Status</td>
                        <td><%= rep.getStatus() %></td>
                    </tr>
                    <tr>
                        <td>Report Date</td>
                        <td><%= rep.getCreationDate() %></td>
                    </tr>
                </tbody>
            </table>
        <%
            } else {
        %>
            <p>No report information available.</p>
        <%
            }
        %>

        <p>Click <a href="user_dashboard.jsp">here</a> to go to the dashboard.</p>
    </body>
</html>
