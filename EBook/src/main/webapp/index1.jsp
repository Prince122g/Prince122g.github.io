<%@page import="com.db.dbconnect"%>
<%@page import="com.dao.BookDAOImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="com.dao.logindao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E book: Home</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
</style>
</head>

<body style="background-color: #f5f7fa">
	<div style="margin-bottom: 1px">
		<%@include file="all_component/navbar0.jsp"%>
	</div>
	<%!logindao obj = new logindao();%>
	<div class="container-fluid" style="margin-left:px; margin-right:40px;">
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
		  	<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img style="height: 557px; width: 100%" class="d-block w-100"
						src="img/Pri2.jpg" alt="First slide">
				</div>
				<div class="carousel-item">
					<img style="height: 557px; width: 100%" class="d-block w-100"
						src="img/Pri3.png" alt="Second slide">
				</div>
				<div class="carousel-item">
					<img style="height: 557px; width: 100%" class="d-block w-100"
						src="img/Pri.jpg" alt="Third slide">
				</div>
			</div>
			<a class="carousel-control-prev" href="#carouselExampleIndicators"
				role="button" data-slide="prev"> <span
				class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="sr-only">Previous</span>
			</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
				role="button" data-slide="next"> <span
				class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="sr-only">Next</span>
			</a>
		</div>

	</div>
	<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/ebook" user="root" password=""
		var="ds" />
	<Sql:query var="rs" dataSource="${ds}">SELECT * FROM BooksDetails;</Sql:query>

	<h3 class="text-center">Recent Book</h3>
	<!-- Start Recent Book -->
	<form action="Cart">
		<div class="container-fuid">
			<div class="row">
				<Core:forEach items="${rs.rows}" var="row">
					<div class="col-md-3">
						<div class="card crd-ho">
							<div class="card-body text-center">
								<img src="/E-Book/Image/${row.ImageFileName}"
									style="width: 200px; height: 150px;" class="img-thumblin" />
								<p>BookName :-${row.BookName}</p>
								<p>Author :-${row.Author}</p>
								<p>Categories :-New</p>
								<div class="row text-center">
								
									<a href="#" class="btn btn-success btn-sm ml-5">View Details</a>
									<i class="btn btn-danger btn-sm ml-1" class="fa-solid fa-indian-rupee-sign">${row.price}</i>
									<a href="Cart.jsp" class="btn btn-primary btn-sm ml-1">Add to Cart</a>
										

								</div>
							</div>
						</div>
					</div>
				</Core:forEach>
			</div>
		</div>
	</form>

	
	<div style="margin-top: 40px">
		<%@include file="all_component/footer1.jsp"%>
	</div>
</body>
</html>
