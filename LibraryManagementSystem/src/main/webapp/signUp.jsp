<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        .login-container h2 {
            margin-bottom: 20px;
        }

        .login-container input,
        .login-container input,
        .login-container input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        .login-container .input1 {
            background-color: white;
            color: black;
            border: none;
            cursor: pointer;
        }
        .btn{
            background-color: blue;
            color:white;
        }
        h2{
        color:blue;
        }
        footer{
        	color:gray;
        }
    </style>
</head>
<body>
   <div class="login-container">
        <h2>Sign Up</h2>
        <form action="signup" method="post">
            <input type="text" placeholder="Username" required class="input1" name="name">
            <input type="email" placeholder="Email" required class="input1" name="email">
            <input type="tel" placeholder="Phone" required class="input1" name="phone">
            <input type="date" placeholder="DOB" required class="input1" name="date">
            <input type="password" placeholder="Password" required class="input1" name="password">
            <input type="submit" value="SignUp" class="btn">
            <footer>&copy 2024 Library Management System</footer>
        </form>
    </div>
</body>
</html>