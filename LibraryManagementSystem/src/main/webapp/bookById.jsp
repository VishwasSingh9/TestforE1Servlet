<%@page import="lms.entity.Book"%>
<%@page import="lms.entity.daoImp.BookDaoImp"%>
<%@page import="lms.entity.dao.BookDao"%>
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
        <h2>Find Book By Id</h2>
        <form action="" method="post">
            <input type="number" name="bookid" placeholder="Enter Book Id" required class="input1">
            <input type="submit" value="Find Book" class="btn">
        </form>
    </div>
    <%
		String id2 = request.getParameter("bookid");
		if(id2 != null){
			long id1 = Long.parseLong(id2);
			BookDao dao = new BookDaoImp();
			Book e = dao.findBookById(id1);
			if(e!=null){
		%>
		<table>
			<tr class="table1">
				<th>Id</th>
			 	<th>Title</th>
			 	<th>Author</th>
			 	<th>Quantity</th>
			 	<th>Price</th>
			 	<th>Genre</th>
			</tr>
			
			<tr class="table2">
			 	<th><%= e.getBookId()%></th>
			 	<th><%= e.getTitle() %></th>
			 	<th><%= e.getAuthor() %></th>
			 	<th><%= e.getQuantity() %></th>
			 	<th><%= e.getPrice() %></th>
			 	<th><%= e.getGenre() %></th>
			 <tr/>
		</table>
		<%
		}
		
		else{%>
			<h3>Invalid User</h3>
		<%
		}}
		%>
</body>
</html>