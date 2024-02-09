<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
	section{
		display:flex;
		justify-content:center;
		align-items:center;
		margin:20px;
		padding:100px;
		background-color:gray;
		gap:2em;
	}
	button{
		display:flex;
		justify-content:center;
		align-items:center;
		width:10em;
		height:3em;
		border-radius:5px;
		background-color:green;
		padding:20px;
	}
	a{
		text-decoration:none;
		color:white;
	}
</style>
</head>
<body>
		<section>
				<button><a href="login.jsp">Old User</a></button>
				<button><a href="signUp.jsp">New User</a></button>
		</section>		
</body>
</html>