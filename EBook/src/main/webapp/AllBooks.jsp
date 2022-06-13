<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="com.dao.logindao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E book: Home</title>
<%@include file="User/allCss.jsp"%>
<style type="text/css">


.crd-ho:hover {
	background-color: #e9f2f2;
}
</style>
</head>
<body style="background-color: #f5f7fa">
	<!-- #C0C0C0 -->
	<%@include file="User/navbar.jsp"%>
	<%! logindao obj=new logindao(); %>
	<div class="container-fluid back-img p-3">
		<h2 class="text-left text-black"></h2>
	</div>
	<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/ebook" user="root" password=""
		var="ds" />
	<Sql:query var="rs" dataSource="${ds}">SELECT * FROM BooksDetails;</Sql:query>

	<h3 class="text-center">All Books</h3>
	<!-- Start Recent Book -->
	<form action="Cart">
		<div class="container">
			<div class="row">
				<Core:forEach items="${rs.rows}" var="row">
					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">

								<img src="/E-Book/Image/${row.ImageFileName}"
									style="width: 200px; height: 150px;" class="img-thumblin">
								<p>${row.BookName}</p>
								<p>${row.Author}</p>
								<p>Categories : New</p>
								<div class="row text-center">
								<%
								
								%>
									<button type="submit" class="btn btn-danger btn-sm ml-2">
										<i class="fas fa-cart-plus"></i>Add to Cart
									</button>
									<a href="#" class="btn btn-success btn-sm ml-1">${row.price}</a>

								</div>
							</div>
						</div>
					</div>
				</Core:forEach>
			</div>
		</div>
	</form>


	<%@include file="all_component/footer.jsp"%>
</body>
</html>