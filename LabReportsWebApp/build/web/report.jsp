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
                <td>Report description</td>
                <td>
                    <select name="description">
                        <option value="lights">Lights</option>
                        <option value="broken windows">Broken windows</option>
                        <option value="not working Pc">Not working Pc</option>
                        <option value="leakage">Leakage</option>
                        <option></option>
                    </select>
                </td>
                    
            </tr>
            <tr>
                <td>Report lab</td>
                <td>
                    <select name="lab">
                        <option value="building 10 lab ">Lab 1 </option>
                         <option value="building 10 lab 120">Lab 120 </option>
                          <option value="building 10 lab 125">building 10 lab 125 </option>
                           <option value="building 10 lab 138">building 10 lab 138 </option>
                            <option value="building 10 lab 144">building 10 lab 144 </option>
                             <option value="building 10 lab 141">building 10 lab 141 </option>
                             <option value="building 10 lab 120">building 10 lab 120 </option>
                             <option value="building 10 lab 230">building 10 lab 230 </option>
                               <option value="building 10 lab 154">building 10 lab 154 </option>
                    </select>
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
