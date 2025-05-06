<%-- 
    Document   : edit_profile
    Created on : 06 May 2025, 3:34:08 PM
    Author     : kayte
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            Long id = (Long)session.getAttribute("sessID");
            String name = (String)session.getAttribute("name");
            String surname = (String)session.getAttribute("surname");
            String password = (String)session.getAttribute("password");
        %>
        <div>
            <form action="EditUserProfileServlet.do" method="POST">
                <table>
                    <tr>
                        <td>Student number:</td>
                        <td>
                            <input type="text" name="id" value="<%=id%>" readonly="">
                        </td>
                    </tr>
                    <tr>
                        <td>Name: </td>
                        <td>
                            <input type="text" name="name" value="<%=name%>">
                        </td>
                    </tr>
                    <tr>
                        <td>Surname: </td>
                        <td>
                            <input type="text" name="surname" value="<%=surname%>">
                        </td>
                    </tr>
                    <tr>
                        <td>Password: </td>
                        <td>
                            <input type="password" name="password" value="<%=password%>">
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                            <input type="submit" value="SAVE">
                        </td>
                    </tr>
                </table>
            </form>
            <button onclick="window.location.href='profile.jsp'">Cancel</button>
        </div>
    </body>
</html>
