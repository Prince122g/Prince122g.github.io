<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
</head>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
</style>

<body style="background-color: #f5f7fa">
	<div style="margin-bottom: 1px">
		<%@include file="all_component/navbar5.jsp"%>
	</div>

	<div class="container-fluid">
		<div class="row p-3">
			<div class="col-md-6">

				<div class="card-fluid">
					<div class="card-body">
						<h3 class="text-center text-success">Cart Items</h3>
						<table class="table table-striped">
							<thead class="bg-primary">
								<tr>
									<th scope="col">BookName</th>
									<th scope="col">Author</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Programmin in C</td>
									<td>Ritchie</td>
									<td>300</td>
									<td><a href="DeleteBook.jsp"
										class="btn- btn-sm btn-danger">Remove</a></td>

								</tr>
								<tr>
									<td>Cloud Computing</td>
									<td>Douglas Corner</td>
									<td>450</td>
									<td><a href="DeleteBook.jsp"
										class="btn- btn-sm btn-danger">Remove</a></td>

								</tr>
								<tr>
									<td>JavaScript</td>
									<td>David Herman</td>
									<td>390</td>
									<td><a href="DeleteBook.jsp"
										class="btn- btn-sm btn-danger">Remove</a></td>

								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>


			<div class="col-md-6">
				<div class="card-fluid">
					<div class="card-body">
						<h3 class="text-center text-success">Add Address</h3>
						<form class="row g-3" action="Address" method="post">
							<div class="col-md-4">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									type="text" name="Name" class="form-control" id="inputEmail4"
									placeholder="Ex-John" required>
							</div>
							<div class="col-md-4">
								<label for="inputPassword4" class="form-label">PhoneNo</label> <input
									type="phone" name="PhoneNo" class="form-control"
									id="inputPassword4" placeholder="8648xxx" required>
							</div>
							<div class="col-md-4">
								<label for="inputPassword4" class="form-label">Email</label> <input
									type="email" name="Email" class="form-control"
									id="inputPassword4" placeholder="Ebook123@gmail.com" required>
							</div>
							<div class="col-12">
								<label for="inputAddress" class="form-label">Address</label> <input
									type="text" name="Address" class="form-control"
									id="inputAddress" placeholder="1234 Main Street" required>
							</div>
							<div class="col-12">
								<label for="inputAddress2" class="form-label">Landmark</label> <input
									type="text" name="Landmark" class="form-control"
									id="inputAddress2" placeholder="Apartment, studio, or floor"
									required>
							</div>
							<div class="col-md-4">
								<label for="inputCity" class="form-label">City</label> <input
									type="text" name="City" class="form-control" id="inputCity"
									required>
							</div>
							<div class="col-md-4">
								<label for="inputCity" class="form-label">State</label> <input
									type="text" name="State" class="form-control" id="inputCity"
									required>
							</div>
							<div class="col-md-4">
								<label for="inputZip" class="form-label">ZipCode</label> <input
									type="text" name="ZipCode" class="form-control" id="inputZip"
									required>
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label for="exampleInputEma1">Payment Mode</label> <select
										class="form-control" name="PaymentType">
										<option value="Select">Select</option>
										<option value="COD">Cash On Delivery</option>
										<option value="Prepaid">Prepaid</option>
									</select>
								</div>
							</div>

							<div class="col-12">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck"
										required> <label class="form-check-label"
										for="gridCheck"> Check me out </label>
								</div>
							</div>
							<div class="col-12">
								<button type="submit" class="btn btn-primary">Place
									Order</button>
							</div>
						</form>
					</div>
				</div>
			</div>


		</div>
	</div>

	<div style="margin-top: 102px">
		<%@include file="all_component/footer.jsp"%>
	</div>

</body>
</html>

<%-- 

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
</head>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
</style>

<body style="background-color: #f5f7fa">
	<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/ebook" user="root" password=""
		var="ds" />
	<Sql:query var="rs" dataSource="${ds}">SELECT * FROM BooksDetails;</Sql:query>
	<div style="margin-bottom: 1px">
		<%@include file="all_component/navbar5.jsp"%>
	</div>

	<div class="container">
		<div class="row p-2">
			<div class="col-md-6">

				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Your Selected Item</h3>
						<table class="table table-striped">
							<thead class="bg-primary">

								<tr>
									<th scope="col">BookName</th>
									<th scope="col">Author</th>
									<th scope="col">Price</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<Core:forEach items="${rs.rows}" var="row">
								<tbody>
									<tr>
										<td><b><Core:out value="${row.BookName}"></Core:out></b></td>
										<td><b><Core:out value="${row.Author}"></Core:out></b></td>
										<td><b><Core:out value="${row.Price}"></Core:out></b></td>
										<td><a href="DeleteBook.jsp" class="btn- btn-sm btn-danger">Remove</a></td>
									</tr>
								</tbody>
							</Core:forEach>
						</table>
					</div>
				</div>
			</div>


			<div class="col-md-6">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Add Address</h3>
						<form class="row g-3" action="Address" method="post">
							<div class="col-md-4">
								<label for="inputEmail4" class="form-label">Full Name</label> <input
									type="email" name="Name" class="form-control" id="inputEmail4">
							</div>
							<div class="col-md-4">
								<label for="inputPassword4" class="form-label">PhoneNo</label> <input
									type="password" name="PhoneNo" class="form-control"
									id="inputPassword4">
							</div>
							<div class="col-md-4">
								<label for="inputPassword4" class="form-label">Email</label> <input
									type="password" name="Email" class="form-control"
									id="inputPassword4">
							</div>
							<div class="col-12">
								<label for="inputAddress" class="form-label">Address</label> <input
									type="text" name="Address" class="form-control"
									id="inputAddress" placeholder="1234 Main Street">
							</div>
							<div class="col-12">
								<label for="inputAddress2" class="form-label">Landmark</label> <input
									type="text" name="Landmark" class="form-control"
									id="inputAddress2" placeholder="Apartment, studio, or floor">
							</div>
							<div class="col-md-4">
								<label for="inputCity" class="form-label">City</label> <input
									type="text" name="City" class="form-control" id="inputCity">
							</div>
							<div class="col-md-4">
								<label for="inputCity" class="form-label">State</label> <input
									type="text" name="State" class="form-control" id="inputCity">
							</div>
							<div class="col-md-4">
								<label for="inputZip" class="form-label">ZipCode</label> <input
									type="text" name="ZipCode" class="form-control" id="inputZip">
							</div>

							<div class="col-md-6">
								<div class="form-group">
									<label>Payment Mode</label> <select class="form-control">
										<option>----Select---</option>
										<option>Cash On Delivery</option>
									</select>
								</div>
							</div>

							<div class="col-12">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" id="gridCheck">
									<label class="form-check-label" for="gridCheck"> Check
										me out </label>
								</div>
							</div>
							<div class="col-12">
								<button type="submit" class="btn btn-primary">Place
									Order</button>
							</div>
						</form>
					</div>
				</div>
			</div>


		</div>
	</div>

	<div style="margin-top: 640px">
		<%@include file="all_component/footer.jsp"%>
	</div>

</body>
</html> --%>