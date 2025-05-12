<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="za.ac.tut.entities.Report"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports by Category</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background: linear-gradient(to right, #4facfe, #00f2fe);
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
            }

            .container {
                background-color: #ffffff;
                padding: 40px 30px;
                border-radius: 10px;
                box-shadow: 0 8px 16px rgba(0,0,0,0.2);
                max-width: 1000px;
                width: 100%;
            }

            h1 {
                text-align: center;
                color: #333333;
                margin-bottom: 20px;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            th, td {
                padding: 12px;
                border-bottom: 1px solid #ddd;
                text-align: left;
            }

            th {
                background-color: #4facfe;
                color: white;
            }

            tr:hover {
                background-color: #f1f1f1;
            }

            .no-reports {
                text-align: center;
                color: #777;
                margin-top: 30px;
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Reports in "<%= request.getAttribute("category") %>" Category</h1>

            <%
                List<Report> reports = (List<Report>) request.getAttribute("reports");

                if (reports == null || reports.isEmpty()) {
            %>
                <p class="no-reports">No reports found for this category.</p>
            <%
                } else {
            %>
                <table>
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Description</th>
                            <th>Status</th>
                            <th>Reporter Student #</th>
                            <th>Created On</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                            for (Report report : reports) {
                        %>
                        <tr>
                            <td><%= report.getId() %></td>
                            <td><%= report.getDescription() %></td>
                            <td><%= report.getStatus() %></td>
                            <td><%= report.getRepoterStudentNum() %></td>
                            <td><%= report.getCreationDate() %></td>
                        </tr>
                        <%
                            }
                        %>
                    </tbody>
                </table>
            <%
                }
            %>
        </div>
    </body>
</html>
