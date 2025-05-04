<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Report Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .report-container {
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        p {
            color: #666;
            font-size: 16px;
        }

        textarea {
            width: 100%;
            padding: 12px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            font-size: 16px;
            resize: none;
        }

        input[type="submit"] {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Report</h1>
    <form action="submitReport.do" method="POST">
        <table>
            <tr>
                <td>Report ID</td>
                <td>
                    <input type="text" name="repID" required=""/>
                </td>
                    
            </tr>
            <tr>
                <td>Report description</td>
                <td>
                    <input type="text" name="description" required=""/>
                </td>
                    
            </tr>
            <tr>
                <td>Report lab</td>
                <td>
                    <input type="text" name="lab" required=""/>
                </td>
                    
            </tr>
            <tr>
                        <td></td>
                        <td><input type="submit" name="Report"></td>
                    </tr>
        </table>
    </form>
</body>
</html>
