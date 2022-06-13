<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Address</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f5f7fa">
	<div style="margin-bottom: 50px">
		<%@include file="all_component/navbar.jsp"%>
	</div>


	<div class="container">
		<div class="row p-3">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center text-success">Add Address</h3>
						<form action="SavedAddress" method="post">
							<div class="form-row">

								<div class="form-group col-md-6">

									<label for="inputPassword4"><b>Full Name</b></label><input
										type="text" name="Name" class="form-control"
										id="inputPassword4">
								</div>
								<div class="form-group col-md-3">

									<label for="inputPassword4"><b>Email</b></label><input type="text"
										name="Email" class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-3">

									<label for="inputPassword4"><b>PhoneNo</b></label><input type="text"
										name="PhoneNo" class="form-control" id="inputPassword4">
								</div>
							</div>
							<div class="form-row">

								<div class="form-group col-md-6">

									<label for="inputPassword4"><b>City</b></label><input type="text"
										name="City" class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-3">

									<label for="inputPassword4"><b>State</b></label><input type="text"
										name="State" class="form-control" id="inputPassword4">
								</div>
								<div class="form-group col-md-3">

									<label for="inputPassword4"><b>Pincode</b></label><input type="text"
										name="Pincode" class="form-control" id="inputPassword4">
								</div>
								<div class="form-row">
									<div class="form-group col-md-7">

										<label for="inputPassword4"><b>Address</b></label><input type="text"
											name="Address" class="form-control" id="inputPassword4">
									</div>


									<div class="form-group col-md-5">

										<label for="inputPassword4"><b>Landmark</b></label><input type="text"
											name="Landmark" class="form-control" id="inputPassword4">
									</div>
								</div>


							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-warning">Add
									Address</button>

							</div>
						</form>

					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 180px">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>