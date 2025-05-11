<%-- 
    Document   : staff_dashboard
    Created on : 10 May 2025, 5:27:35 PM
    Author     : LUMGILE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <title>Dashboard Page</title>
    </head>
    <body>
        <nav>
            <div id="logo">
                <a href="staff_dashboard.jsp">Dashboard</a>
            </div>
            <div>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="LogoutServlet.do">Logout</a></li>
            </div>
        </nav>
        <h1>Dashboard</h1>
        <%
            String name = (String)session.getAttribute("names");
       
        %>
        <p>
            Welcome <b><%=name%></b> <br>
            Please select one of the following options:
        </p>
        <ul>
            <li><a href="update_report.jsp">Update Report Progress</a></li>
            <li><a href="view_all_report.jsp">View All  Reports</a></li>
            <li><a href="filter_report_by_lab_location.jsp">Filter Reports By Lab Location</a></li>
            <li><a href="filter_report_by_status.jsp">Filter Report Status</a></li>
            <li><a href="filter_report_by_category.jsp">Filter Report Category</a></li>
        </ul>
    </body>
</html>
