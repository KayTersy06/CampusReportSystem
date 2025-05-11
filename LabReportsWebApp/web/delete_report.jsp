<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="za.ac.tut.model.entity.Report"%>
<%
    Report report = (Report) request.getAttribute("searchResult");
    if (report == null) {
        response.sendRedirect("view_all_report.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Delete Maintenance Report</title>
</head>
<body>
    <h1>Delete Maintenance Report</h1>
    
    <div>
        <p><strong>Lab:</strong> <%= report.getLab() %></p>
        <p><strong>Issue:</strong> <%= report.getIssue() %></p>
        <p><strong>Reported By:</strong> <%= report.getReportedBy() %></p>
        <p><strong>Date Reported:</strong> <%= report.getDateReported() %></p>
        <p><strong>Status:</strong> <%= report.getStatus() %></p>
    </div>
    
    <p>Are you sure you want to delete this report?</p>
    
    <form action="DeleteReportServlet?action=delete" method="GET">
        <input type="hidden" name="action" value="delete">
        <input type="hidden" name="id" value="<%= report.getId() %>">
        <button type="submit">Confirm Delete</button>
    </form>
    
    <a href="view_all_report.jsp">Cancel</a>
</body>
</html>