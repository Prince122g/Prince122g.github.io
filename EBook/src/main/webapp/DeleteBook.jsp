	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Book</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f5f7fa">

	<%@include file="all_component/navbar1.jsp"%>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
					<h3 class="text-center">Remove Book</h3>
					
			 		 <%
					String failedMsg = (String) session.getAttribute("failedMsg");
					if (failedMsg != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=failedMsg%></div>

					<%
					session.removeAttribute("failedMsg");
					}
					%>
					
						<form action="./Delete" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">Enter The ID:</label> <input
									 name="ID" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" required>
							</div>
							<div class="text-center">
								<button type="submit" class="btn btn-primary">Remove</button> <br/>
								<a href="all_books.jsp">Back</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 380px">
	</div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>