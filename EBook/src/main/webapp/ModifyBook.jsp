<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify Details</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body bgcolor=lightblue>

	<%@include file="all_component/navbar1.jsp"%>
	<center>
		<b><h1>Modify Books</h1></b>
		<table>
			<div class="container p-3">
				<div class="row">
					<div class="col-md-4 offset-md-4">
						<div class="card">
							<div class="card-body">
								<h3 class="text-center"></h3>

								<%
								String failedMsg = (String) session.getAttribute("failedMsg");
								if (failedMsg != null) {
								%>

								<div class="alert alert-danger" role="alert"><%=failedMsg%></div>

								<%
								session.removeAttribute("failedMsg");
								}
								%>

								<form action="Modify">
									<div class="form-group">
										<label for="exampleInputEmail1"><b>What To
												Modify:-</b></label>
									</div>

									<div class="form-group">
										<label for="exampleInputEma1"></label> <select name="Select">
											<option value="Select">Select</option>
											<option value="BookName">BookName</option>
											<option value="Author">Author Name</option>
											<option value="Price">Price</option>
											<option value="BookCategory">BookCategory</option>
											<option value="Status">Status</option>
										</select>
									</div>


									<div class="form-group">
										<label for="exampleInputEmail1"><b>Book ID:-</b></label> <input
											name="ID" class="form-control" id="exampleInputEmail1"
											aria-describedby="emailHelp" required>
									</div>

									<div class="form-group">
										<label for="exampleInputPassword1"><b>Textbox:-</b></label> <input
											name="Textbox" class="form-control"
											id="exampleInputPassword1" required>
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-primary">Update</button>
										<br /> <a href="home.jsp">Back</a>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>

		</table>
	</center>
	<div style="margin-top: 180px"></div>
	<%@include file="all_component/footer.jsp"%>
</body>
</html>