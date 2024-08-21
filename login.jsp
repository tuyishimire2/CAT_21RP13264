<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EMPLOYEE MANAGEMENT SYSTEM</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background: gray;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            color: #333;
        }
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #5cb85c;
            color: white;
            border: none;
            padding: 10px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        input[type="submit"]:hover {
            background-color: #4cae4c;
        }
    </style>
</head>
<body>
    String url = "jdbc:mysql://localhost:3306/cat_21rp13264";
    <div class="login-container">
        <h2>EMPLOYEE MANAGEMENT SYSTEM</h2>
        <form action="adminLogin.jsp" method="post">
            EMAIL: <input type="text" name="username" required /><br />
            PASSWORD: <input type="password" name="password" required /><br />
            <input type="submit" value="SIGN IN" />
        </form>
    </div>
</body>
</html>
