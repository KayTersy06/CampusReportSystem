<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.model.entity.Report"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Filtered Reports Results</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f0f2f5;
            margin: 0;
            padding: 20px;
            color: #333;
        }
        h1 {
            text-align: center;
            margin-bottom: 24px;
            color: #2c3e50;
        }
        .container {
            max-width: 960px;
            margin: 0 auto;
            background: #fff;
            padding: 20px 30px;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 12px;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 12px 15px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: white;
            font-weight: 600;
        }
        tr:nth-child(even) {
            background-color: #f8f9fa;
        }
        tr:hover {
            background-color: #e9ecef;
        }
        .no-results {
            text-align: center;
            font-style: italic;
            margin-top: 40px;
            color: #666;
        }
        @media (max-width: 600px) {
            body, .container {
                padding: 15px 10px;
            }
            th, td {
                padding: 10px 8px;
                font-size: 0.9rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Reports for Student Number: <%= request.getAttribute("studentNum") != null ? request.getAttribute("studentNum") : "N/A" %></h1>
        
        <%
            List<Report> reports = (List<Report>) request.getAttribute("reports");
            if (reports != null && !reports.isEmpty()) {
        %>
            <table>
                <thead>
                    <tr>
                        <th>Report ID</th>
                        <th>Description</th>
                        <th>Category</th>
                        <th>Status</th>
                        <th>Creation Date</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Report report : reports) {
                    %>
                    <tr>
                        <td><%= report.getId() %></td>
                        <td><%= report.getDescription() %></td>
                        <td><%= report.getCategory() %></td>
                        <td><%= report.getStatus() %></td>
                        <td><%= report.getCreationDate() != null ? report.getCreationDate() : "N/A" %></td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
        <%
            } else {
        %>
            <p class="no-results">No reports found for this student number.</p>
        <%
            }
        %>
    </div>
</body>
</html>