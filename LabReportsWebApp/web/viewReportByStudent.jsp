<%@page import="za.ac.tut.model.entity.Student"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.Report"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Student Reports</title>
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
            width: 80%;
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
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .info-table {
            width: 60%;
            background-color: #fff;
        }
    </style>
</head>
<body>

<%
    List<Report> resp = (List<Report>) request.getAttribute("resp");
    Student student = (Student) session.getAttribute("student");
%>

<h1>Student Reports</h1>

<table class="info-table">
    <tr>
        <td><strong>Student Name:</strong></td>
        <td><%= student.getName() %></td>
    </tr>
    <tr>
        <td><strong>Student Number:</strong></td>
        <td><%= student.getId() %></td>
    </tr>
</table>

<% if (resp == null || resp.isEmpty()) { %>
    <p><strong>No reports found.</strong></p>
<% } else { %>
    <table>
        <thead>
            <tr>
                <th>Report ID</th>
                <th>Description</th>
                <th>Lab</th>
                <th>Status</th>
                <th>Report Date</th>
            </tr>
        </thead>
        <tbody>
            <% for (Report rep : resp) { %>
                <tr>
                    <td><%= rep.getId() %></td>
                    <td><%= rep.getDescription() %></td>
                    <td><%= rep.getLab() %></td>
                    <td><%= rep.getStatus() %></td>
                    <td><%= rep.getCreationDate() %></td>
                </tr>
            <% } %>
        </tbody>
    </table>
<% } %>

</body>
</html>
