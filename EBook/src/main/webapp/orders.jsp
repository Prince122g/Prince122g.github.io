<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: All Oreders</title>
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
				<th scope="col">Order ID</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone Number</th>
				<th scope="col">Book Name</th>
				<th scope="col">Author</th>
				<th scope="col">Price</th>
				<th scope="col">PaymentType</th>
			</tr>
		</thead>
		<Core:forEach items="${rs.rows}" var="row">
			<tbody>
				<tr>
				<td><b><Core:out value="${row.ID}"></Core:out></b></td></th>
				<td><b><Core:out value="${row.BookName}"></Core:out></b></td>
				<td><b><Core:out value="${row.Author}"></Core:out></b></td>
				<td><b><Core:out value="${row.Price}"></Core:out></b></td>
				<td><b><Core:out value="${row.BookCategory}"></Core:out></b></td>
				<td><b><Core:out value="${row.Status}"></Core:out></b></td>
				</tr>

			</tbody>
				</Core:forEach>
	</table>
	<div style="margin-top: 20px">
		
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>