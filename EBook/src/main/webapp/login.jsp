	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EBook: Login</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f5f7fa">

	<%@include file="all_component/navbar2.jsp"%>
			<div style="margin-top: 100px">
</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center">Login</h3>
					
			 		 <%
					String failedMsg = (String) session.getAttribute("failedMsg");
					if (failedMsg != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=failedMsg%></div>

					<%
					session.removeAttribute("failedMsg");
					}
					%>
					
						<form action="./login" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Email Address</label> <input
									type="email" name="email" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" name="password" class="form-control" id="exampleInputPassword1"
									required>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Login</button> <br/>
								<a href="register.jsp">Create Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
		<div style="margin-top: 192px">
</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>