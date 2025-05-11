<%-- 
    Document   : view_all_report
    Created on : 11-May-2025, 14:52:41
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
    <title>View Reports</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            line-height: 1.6;
        }
        .container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
        }
        h1 {
            color: #333;
            text-align: center;
        }
        .view-button {
            display: block;
            width: 200px;
            margin: 20px auto;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        .view-button:hover {
            background-color: #45a049;
        }
        .nav-links {
            text-align: center;
            margin-top: 30px;
        }
        .nav-links a {
            margin: 0 10px;
            text-decoration: none;
            color: #337ab7;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Maintenance Reports System</h1>
        
        <form action="ViewAllReportServlet.do" method="GET">
            <button type="submit" class="view-button">View All Reports</button>
        </form>
        
        <div class="nav-links">
            
            <a href="staff_dashboard.jsp">Back to Staff Dashboard</a>
        </div>
    </div>
</body>
</html>