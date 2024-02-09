<%@page import="java.util.List"%>
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
	*{
		margin:0px;
		padding:0px;
		box-sizing:border-box;
		background-color:orange;
	}
	h1{
		display:flex;
		justify-content:center;
		align-items:center;
	}
	div{
		display:flex;
		flex-direction:column;
		padding:2em;
	}
	.table1{
		background-color:black;
		color:white;
		
	}
	.table2{
		background-color:white;
		color:black;
		
	}
</style>
</head>
<body>
	<h1>Library Records</h1>
	  <div>
	  	<table class="table1">
			 <tr>
			 	<th>Id</th>
			 	<th>Title</th>
			 	<th>Author</th>
			 	<th>Quantity</th>
			 	<th>Price</th>
			 	<th>Genre</th>
			 	<th>Edit</th>
			 	<th>Delete</th>
			 <tr/>
 <%
 
	 	BookDao dao=new BookDaoImp();
	 
		List<Book> book=dao.listOfBooks();
	 
	 	if(book!=null){
		 
		 for(Book e:book){%>
			
			 
			 <tr class="table2">
			 	<th><%= e.getBookId()%></th>
			 	<th><%= e.getTitle() %></th>
			 	<th><%= e.getAuthor() %></th>
			 	<th><%= e.getQuantity() %></th>
			 	<th><%= e.getPrice() %></th>
			 	<th><%= e.getGenre() %></th>
			 	<th><a href="">Edit</a></th>
			 	<th><a href="">Delete</a></th>
			 <tr/>	 
		 
	<%
	 }
	 }
	%>	
	</table>
</div>
</body>
</html>