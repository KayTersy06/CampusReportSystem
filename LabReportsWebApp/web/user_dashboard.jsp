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
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
            }
            nav {
                background: linear-gradient(to right, #4facfe, #00f2fe);
                color: white;
                padding: 10px 20px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            nav #logo a {
                color: white;
                text-decoration: none;
                font-size: 24px;
                font-weight: bold;
            }
            nav div {
                list-style-type: none;
                display: flex;
                gap: 15px;
            }
            nav div li {
                display: inline;
            }
            nav div a {
                color: white;
                text-decoration: none;
                padding: 5px 10px;
                transition: background-color 0.3s;
            }
            nav div a:hover {
                background-color: #575757;
                border-radius: 5px;
            }
            h1 {
                color: #333;
                text-align: center;
                margin-top: 20px;
            }
            p {
                text-align: center;
                font-size: 18px;
                color: #555;
            }
            ul {
                list-style-type: none;
                padding: 0;
                text-align: center;
            }
            ul li {
                margin: 10px 0;
            }
            ul li a {
                text-decoration: none;
                color: #007BFF;
                font-weight: bold;
            }
            ul li a:hover {
                text-decoration: underline;
            }
        </style>
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
