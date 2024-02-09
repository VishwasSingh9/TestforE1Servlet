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
        <form action="addBook" method="post">
            <input type="text" name="title" placeholder="Title" required class="input1">
            <input type="text" name="author" placeholder="Author" required class="input1">
            <input type="text" name="genre" placeholder="Genre" required class="input1">
            <input type="text" name="quantity" placeholder="Quantity" required class="input1">
            <input type="text" name="price" placeholder="Price" required class="input1">
            <input type="submit" value="Add Book" class="btn">
        </form>
    </div>
</body>
</html>