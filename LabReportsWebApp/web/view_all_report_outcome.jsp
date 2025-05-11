<%-- 
    Document   : view_all_report_outcome
    Created on : 11-May-2025, 14:50:31
    Author     : ndzal
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.Report"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    List<Report> reports = (List<Report>) request.getAttribute("reports");
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>All Maintenance Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
        }
        .container {
            max-width: 1000px;
            margin: 0 auto;
        }
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        tr:hover {
            background-color: #e9e9e9;
        }
        .status-pending {
            color: #e67e22;
            font-weight: bold;
        }
        .status-in-progress {
            color: #3498db;
            font-weight: bold;
        }
        .status-resolved {
            color: #2ecc71;
            font-weight: bold;
        }
        .action-links a {
            margin-right: 10px;
            text-decoration: none;
            color: #2980b9;
        }
        .action-links a:hover {
            text-decoration: underline;
        }
        .no-reports {
            text-align: center;
            color: #777;
            font-style: italic;
            padding: 20px;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #34495e;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .back-link:hover {
            background-color: #2c3e50;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>All Maintenance Reports</h1>
        
        <% if (reports == null || reports.isEmpty()) { %>
            <div class="no-reports">No reports found in the system.</div>
        <% } else { %>
            <table>
                <thead>
                    <tr>
                        <th>Lab</th>
                        <th>Description</th>
                        <th>Status</th>
                        <th>Reported By</th>
                        <th>Date Reported</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <% for (Report report : reports) { %>
                        <tr>
                            <td><%= report.getLab() %></td>
                            <td><%= report.getDescription() %></td>
                            <td class="status-<%= report.getStatus().toLowerCase().replace(" ", "-") %>">
                                <%= report.getStatus() %>
                            </td>
                            <td><%= report.getRepoterStudentNum() %></td>
                            <td><%= report.getCreationDate() %></td>
                            <td class="action-links">
                                <a href="UpdateReportServlet?lab=<%= report.getLab() %>">Edit</a>
                                <a href="DeleteReportServlet?id=<%= report.getId() %>" 
                                   onclick="return confirm('Are you sure you want to delete this report?')">Delete</a>
                            </td>
                        </tr>
                    <% } %>
                </tbody>
            </table>
        <% } %>
        
        <a href="view_all_report.jsp" class="back-link">Back to Reports Dashboard</a>
    </div>
</body>
</html>
