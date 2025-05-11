<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="za.ac.tut.model.entity.Report"%>
<%
    Report report = (Report) request.getAttribute("report");
    if (report == null) {
        response.sendRedirect("view_all_report.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Maintenance Report</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        form { max-width: 500px; margin: 0 auto; }
        div { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; }
        input[type="text"], textarea, select { 
            width: 100%; 
            padding: 8px; 
            box-sizing: border-box; 
        }
        textarea { height: 100px; }
        button { 
            padding: 10px 15px; 
            background-color: #4CAF50; 
            color: white; 
            border: none; 
            cursor: pointer; 
        }
        button:hover { background-color: #45a049; }
        .back-link { display: block; margin-top: 20px; }
    </style>
</head>
<body>
    <h1>Update Maintenance Report</h1>
    <form action="UpdateReportServlet.do" method="POST">
        <input type="hidden" name="id" value="<%= report.getId() %>">
        
        <div>
            <label for="lab">Lab:</label>
            <input type="text" id="lab" name="lab" value="<%= report.getLab() != null ? report.getLab() : "" %>" required>
        </div>
        
        <div>
            <label for="description">Description:</label>
            <textarea id="description" name="description" required><%= report.getDescription() != null ? report.getDescription() : "" %></textarea>
        </div>
        
        
        
        <button type="submit">Update Report</button>
    </form>
   
</body>
</html>