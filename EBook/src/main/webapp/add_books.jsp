  <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin: Add Books</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f5f7fa">
	<%@include file="all_component/navbar1.jsp"%>

	<div class="container">
		<div class="row p-3">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Add Books</h4>



						<%
						String SuccMsg = (String) session.getAttribute("SuccMsg");

						if (SuccMsg != null) {
						%>
						<div class="alert alert-success" role="alert"><%=SuccMsg%>
							<%
							session.removeAttribute("SuccMsg");
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


							<form  action="addbooks" method="post" enctype="multipart/form-data">

								<div class="form-group">
									<label for="exampleInputEmail1">Add Book</label> <input
										type="text" name="Bookname" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp" required>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Author Name</label> <input
										type="text" name="Author" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp" required>
								</div>

								<div class="form-group">
									<label for="exampleInputEmail1">Price</label> <input
										type="number" name="Price" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp" required>
								</div>

								<div class="form-group">
									<label for="inputstate">Categories</label> <select
										id="inputstate" name="BookCategory" class="form-control"
										required>
										<option selected>---select---</option>
										<option value="New Book">New Book</option>

									</select>
								</div>

							

								<div class="form-group">
									<label for="exampleFormControlFile1">Upload Photo</label> <input
										name=Image type="file" class="form-control-file"
										id="exmapleFormControlFile1" required>
								</div>

								<button type="submit" class="btn btn-primary">Add</button>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div style="margin-top: 70px">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>