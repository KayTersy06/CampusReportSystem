<%-- 
    Document   : update_report_outcome
    Created on : 12-May-2025, 19:34:46
    Author     : ndzal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Status Update Result</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 20px;
                line-height: 1.6;
            }
            .container {
                max-width: 600px;
                margin: 0 auto;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 5px;
            }
            .success {
                color: green;
            }
            .error {
                color: red;
            }
            .back-link {
                display: inline-block;
                margin-top: 20px;
                color: #333;
                text-decoration: none;
            }
            .back-link:hover {
                text-decoration: underline;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Status Update Result</h1>
            <p class="${message.contains("not found") ? 'error' : 'success'}">
                ${message}
            </p>
            <a href="update_report.jsp" class="back-link">Update Another Status</a>
        </div>
    </body>
</html>
