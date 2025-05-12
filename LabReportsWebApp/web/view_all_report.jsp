<%-- 
    Document   : view_all_report
    Created on : 12-May-2025, 19:44:44
    Author     : ndzal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View All Reports</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
                line-height: 1.6;
            }
            .container {
                max-width: 1000px;
                margin: 0 auto;
                padding: 20px;
            }
            h1 {
                text-align: center;
                color: #333;
            }
            .btn-view {
                display: block;
                width: 200px;
                margin: 20px auto;
                padding: 10px 20px;
                background-color:  #4facfe;
                color: white;
                text-align: center;
                text-decoration: none;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                font-size: 16px;
            }
            .btn-view:hover {
                background-color: #45a049;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>View All Reports</h1>
            <form action="ViewAllReportsServlet" method="GET">
                <button type="submit" class="btn-view">View All Reports</button>
            </form>
        </div>
    </body>
</html>
