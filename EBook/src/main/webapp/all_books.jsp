<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : All Books</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/ebook" user="root" password=""
		var="ds" />
	<Sql:query var="rs" dataSource="${ds}">SELECT * FROM BooksDetails;</Sql:query>
	<%@include file="all_component/navbar1.jsp"%>

	<table class="table table-striped">
		<thead class="bg-primary">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author Name</th>
				<th scope="col">Price</th>
				<th scope="col">Category</th>
				<th scope="col">Status</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
<Core:forEach items="${rs.rows}" var="row">

<tbody>
			<tr>
			
				<td><b><Core:out value="${row.ID}"></Core:out></b></td>
				<td><b><Core:out value="${row.BookName}"></Core:out></b></td>
				<td><b><Core:out value="${row.Author}"></Core:out></b></td>
				<td><b><Core:out value="${row.Price}"></Core:out></b></td>
				<td><b><Core:out value="${row.BookCategory}"></Core:out></b></td>
				<td><b><Core:out value="${row.Status}"></Core:out></b></td>
				<td><a href="ModifyBook.jsp" class="btn- btn-sm btn-primary"><i class="fa-solid fa-pen-to-square"></i>Edit</a>
				<a href="DeleteBook.jsp" class="btn- btn-sm btn-danger"><i class="fa-solid fa-trash-can"></i>Delete</a></td>
			</tr>

		</tbody>
	
	</Core:forEach>
	</table>	
<div style="margin-top: -20px">


</div>

<%@include file="all_component/footer.jsp" %>
</body>
</html>