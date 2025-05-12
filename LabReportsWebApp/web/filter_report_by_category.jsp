<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Filter Reports by Category</title>
        <style>
            * {
                box-sizing: border-box;
                margin: 0;
                padding: 0;
            }

            body {
                font-family: Arial, sans-serif;
                background: linear-gradient(to right, #4facfe, #00f2fe);
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
            }

            .container {
                background-color: #ffffff;
                padding: 40px 30px;
                border-radius: 10px;
                box-shadow: 0 8px 16px rgba(0,0,0,0.2);
                max-width: 800px;
                width: 100%;
            }

            .container h1 {
                text-align: center;
                margin-bottom: 40px;
                color: #333333;
            }

            .section {
                margin-bottom: 30px;
            }

            .section p {
                font-size: 18px;
                margin-bottom: 15px;
                color: #555555;
            }

            .form-group {
                margin-bottom: 20px;
            }

            label {
                display: block;
                font-size: 16px;
                margin-bottom: 8px;
                color: #333;
            }

            input[type="text"] {
                width: 100%;
                padding: 10px;
                border-radius: 5px;
                border: 1px solid #ccc;
                font-size: 16px;
            }

            .button-group {
                display: flex;
                gap: 15px;
                flex-wrap: wrap;
            }

            .button-group input[type="submit"] {
                flex: 1;
                padding: 12px;
                background-color: #4facfe;
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .button-group input[type="submit"]:hover {
                background-color: #00c6ff;
            }

            @media (max-width: 600px) {
                .button-group {
                    flex-direction: column;
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Filter Reports by Category</h1>
            <form action="ViewReportsByCategotyServlet.do." method="get">
                <div class="form-group">
                    <label for="category">Enter Category:</label>
                    <input type="text" id="category" name="category" required>
                </div>
                <div class="button-group">
                    <input type="submit" value="View Reports">
                </div>
            </form>
        </div>
    </body>
</html>
