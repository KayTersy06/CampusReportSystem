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
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f4f4f4;
            }
            nav {
                /* Gradient background for navbar */
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
            table {
                margin: 20px auto;
                border-collapse: collapse;
                width: 80%;
                max-width: 600px;
                background-color: white;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            }
            td {
                padding: 10px;
                border: 1px solid #ddd;
            }
            button {
                display: block;
                margin: 20px auto;
                padding: 10px 20px;
                font-size: 16px;
                background-color: #007BFF;
                color: white;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s;
            }
            button:hover {
                background-color: #0056b3;
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
