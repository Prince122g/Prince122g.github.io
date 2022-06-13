<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Registration</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f5f7fa">



	<div style="margin-top: 0px">
		<%@include file="all_component/navbar3.jsp"%>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Registration Page</h3>

						<%
						String succMsg = (String) session.getAttribute("succMsg");

						if (succMsg != null) {
						%>
						<div class="alert alert-success" role="alert"><%=succMsg%>
							<%
							session.removeAttribute("succMsg");
							}
							%>


							<%
							String failedMsg = (String) session.getAttribute("failedMsg");

							if (failedMsg != null) {
							%>
							<div class="alert alert-danger" role="alert"><%=failedMsg%></div>
							<%
							session.removeAttribute("failedMsg");
							}
							%>

							<form action="register" method="post">

								<div class="form-group">
									<label for="exampleInputEmail1">Full Name</label> <input
										type="text" name="name" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp" required>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										type="email" name="email" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp" required>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Phone No</label> <input
										type="number" name="phonenumber" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp" required>
								</div>

								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> <input
										type="password" name="password" class="form-control"
										id="exampleInputPassword1" required>
								</div>
								<div class="form-check">
									<input type="checkbox" name="check" class="form-check-input"
										id="exampleCheck1"> <label class="form-check-label"
										for="exampleCheck1">Agree Terms & Condition</label>
								</div>
								<div class="text-center">
									<button type="submit" class="btn btn-primary">Register</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 115px"></div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>