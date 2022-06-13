<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin : Home</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
	color: black;
}
</style>
</head>
<body>
	<%@include file="all_component/navbar1.jsp"%>
	<h3 class="text-center">Hello ${Name}</h3>

	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="AllBooks.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-bag-shopping fa-3x text-primary"></i><br>
							<h4>Buy Books</h4>
						
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="ViewBookUser.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-book-open fa-3x text-danger"></i><br>
							<h4>View Books</h4>
							
						</div>
					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="orders.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-box-open fa-3x text-primary"></i><br>
							<h4>Orders</h4>
							
						</div>
					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="index.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fas fa-sign-out-alt fa-3x text-warning"></i><br>
							<h4>Logout</h4>
							
						</div>
					</div>
				</a>	
			</div>

		</div>
	</div>

	<div style="margin-top: 375px">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>