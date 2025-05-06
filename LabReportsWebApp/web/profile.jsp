<%-- 
    Document   : profile
    Created on : 06 May 2025, 3:26:36 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Profile</title>
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
        <h1>Welcome to your profile</h1>
        <%
            Long id = (Long)session.getAttribute("sessID");
            String name = (String)session.getAttribute("name");
            String surname = (String)session.getAttribute("surname");
        %>
        <div>
            <table>
                <tr>
                    <td>Student number:</td>
                    <td>
                        <%=id%>
                    </td>
                </tr>
                <tr>
                    <td>Name: </td>
                    <td>
                        <%=name%>
                    </td>
                </tr>
                <tr>
                    <td>Surname: </td>
                    <td>
                        <%=surname%>
                    </td>
                </tr>

            </table>
            <button onclick="window.location.href='edit_profile.jsp'">Edit Profile</button>
        </div>
    </body>
</html>
