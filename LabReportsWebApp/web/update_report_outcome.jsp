<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Report Status</title>
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
            text-align: center;
        }
        .message-box {
            padding: 20px;
            margin: 20px 0;
            border-radius: 5px;
            font-size: 18px;
        }
        .success {
            background-color: #dff0d8;
            color: #3c763d;
            border: 1px solid #d6e9c6;
        }
        .error {
            background-color: #f2dede;
            color: #a94442;
            border: 1px solid #ebccd1;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 15px;
            background-color: #337ab7;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }
        .back-link:hover {
            background-color: #286090;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Update Report Status</h1>
        
        <div class="message-box ${not empty error ? 'error' : 'success'}">
            ${not empty error ? error : updateStatus}
        </div>
        
        <a href="ViewAllReportServlet" class="back-link">View All Reports</a>
    </div>
</body>
</html>