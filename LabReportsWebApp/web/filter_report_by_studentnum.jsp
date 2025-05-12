<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Filter Reports by Student Number</title>
    <style>
        /* Modern and responsive styling */
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f5f7fa;
            color: #333;
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            padding: 20px;
        }
        .container {
            background: white;
            padding: 30px 40px;
            border-radius: 8px;
            box-shadow: 0 8px 16px rgba(0,0,0,0.1);
            max-width: 360px;
            width: 100%;
        }
        h1 {
            margin-bottom: 24px;
            font-weight: 700;
            font-size: 1.8rem;
            color: #2c3e50;
            text-align: center;
        }
        label {
            font-weight: 600;
            display: block;
            margin-bottom: 8px;
            font-size: 1rem;
        }
        input[type="number"] {
            width: 100%;
            padding: 10px 12px;
            font-size: 1rem;
            border: 1.5px solid #ccc;
            border-radius: 6px;
            transition: border-color 0.3s ease;
            box-sizing: border-box;
        }
        input[type="number"]:focus {
            outline: none;
            border-color: #007BFF;
            box-shadow: 0 0 6px rgba(0,123,255,0.5);
        }
        button {
            margin-top: 20px;
            width: 100%;
            padding: 12px;
            font-size: 1rem;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-weight: 700;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #0056b3;
        }
        @media (max-width: 400px) {
            .container {
                padding: 20px;
            }
            h1 {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Filter Reports</h1>
            <form method="POST" action="FilterByStudentNumberServlet.do">
            <label for="studentNum">Enter Student Number</label>
            <input type="number" name="studentNum" id="studentNum" placeholder="e.g. 123456" required min="1" />
            <button type="submit">Search Reports</button>
        </form>
    </div>
</body>
</html>
