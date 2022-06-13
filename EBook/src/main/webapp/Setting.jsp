<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_component/allCss.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: none;
}
</style>
</head>
<body style="background-color: #f5f7fa">
	<div style="margin-bottom: 1px">
		<%@include file="all_component/navbar4.jsp"%>
	</div>
	<div class="container">
		<h3 class="text-center">Hello Prince</h3>
		<div class="row p-5">
			<div class="col-md-6">
				<a href="">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-book-open fa-3x"></i>
							</div>
							<h4>Sell Old Book</h4>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6">
				<a href="Edit_Profile.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-warning">
								<i class="fa-solid fa-id-card fa-3x"></i>
							</div>
							<h4>Login And Sequrity</h4>
						</div>


					</div>
				</a>
			</div>
			<div class="col-md-4 mt-4">
				<a href="Saved_Address.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-location-dot fa-3x"></i>
							</div>
							<h4>Your Address</h4>
							<p>Edit Address</p>
						</div>


					</div>
				</a>
			</div>
			<div class="col-md-4 mt-4">
				<a href="Order.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-primary">
								<i class="fa-solid fa-box-open fa-3x"></i>
							</div>
							<h4>My Order</h4>
							<p>Track Your Order</p>
						</div>


					</div>
				</a>
			</div>

			<div class="col-md-4 mt-4">
				<a href="Helpline.jsp">
					<div class="card">
						<div class="card-body text-center">
							<div class="text-danger">
								<i class="fa-solid fa-user-circle fa-3x"></i>
							</div>
							<h4>Help Center</h4>
							<p>24*7 Service</p>
						</div>


					</div>
				</a>
			</div>
		</div>


	</div>
	<div style="margin-top: 182px">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>