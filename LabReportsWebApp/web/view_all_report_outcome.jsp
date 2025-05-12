<%-- 
    Document   : view_all_report_outcome
    Created on : 12-May-2025, 19:46:07
    Author     : ndzal
--%>

<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.Report"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Reports</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
                line-height: 1.6;
            }
            .container {
                max-width: 1000px;
                margin: 0 auto;
                padding: 20px;
            }
            h1 {
                text-align: center;
                color: #333;
            }
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }
            th, td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }
            th {
                background-color: #4facfe;
                color: white;
            }
            tr:nth-child(even) {
                background-color:  #4facfe;
            }
            .back-link {
                display: inline-block;
                margin-top: 20px;
                padding: 8px 16px;
                background-color: #333;
                color: white;
                text-decoration: none;
                border-radius: 4px;
            }
            .back-link:hover {
                background-color: #555;
            }
            .no-reports {
                text-align: center;
                color: #666;
                font-style: italic;
                margin-top: 20px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>All Reports</h1>
            
            <% List<Report> reports = (List<Report>) request.getAttribute("reports"); %>
            
            <% if (reports != null && !reports.isEmpty()) { %>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Description</th>
                            <th>Category</th>
                            <th>Status</th>
                            <th>Student Number</th>
                            <th>Creation Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <% for (Report report : reports) { %>
                            <tr>
                                <td><%= report.getId() %></td>
                                <td><%= report.getDescription() %></td>
                                <td><%= report.getCategory() %></td>
                                <td><%= report.getStatus() %></td>
                                <td><%= report.getRepoterStudentNum() %></td>
                                <td><%= report.getCreationDate() %></td>
                            </tr>
                        <% } %>
                    </tbody>
                </table>
            <% } else { %>
                <p class="no-reports">No reports found in the database.</p>
            <% } %>
            
            <a href="viewAllReportsInput.jsp" class="back-link">Back to View Page</a>
        </div>
    </body>
</html>
