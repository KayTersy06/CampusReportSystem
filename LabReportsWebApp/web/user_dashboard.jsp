<%-- 
    Document   : UserDashboard
    Created on : 04 May 2025, 6:12:23 AM
    Author     : kayte
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
                <a href="user_dashboard.jsp">Dashboard</a>
            </div>
            <div>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="LogoutServlet.do">Logout</a></li>
            </div>
        </nav>
        <h1>Dashboard</h1>
        <%
            String name = (String)session.getAttribute("name");
            String surname = (String)session.getAttribute("surname");
        %>
        <p>
            Welcome <b><%=name%> <%=surname%></b><br>
            Please select one of the following options:
        </p>
        <ul>
            <li><a href="report.jsp">Report a fault</a></li>
            <li><a href="view_reports.jsp">View All Your Reports</a></li>
        </ul>
    </body>
</html>
