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
		<%@include file="all_component/navbar.jsp"%>
	</div>
	<%!logindao obj = new logindao();%>
	
	<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/ebook" user="root" password=""
		var="ds" />
	<Sql:query var="rs" dataSource="${ds}">SELECT * FROM BooksDetails;</Sql:query>

	<h3 class="text-center">Recent Book</h3>
	<!-- Start Recent Book -->
	<form action="Cart">
		<div class="c	ontainer">
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
								
									<a href="ViewBooks.jsp" class="btn btn-success btn-sm ml-5">View Details</a>
									<i class="btn btn-danger btn-sm ml-1" class="fa-solid fa-indian-rupee-sign">${row.price}</i>
										<button type="submit" class="btn btn-primary btn-sm ml-1">
										<i class="fas fa-cart-plus mr-1"></i>Add to Cart
									</button>	

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





YE Dao H Uper vale ka...

<!-- 
public boolean addBooks(String BookName , String Author , String Price , String BookCategory ,String Status, String ImageFileName) {
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "");
			String sql = "insert into BooksDetails(BookName, Author, Price, BookCategory,Status,ImageFileName) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, BookName);
			ps.setString(2, Author);
			ps.setString(3, Price);
			ps.setString(4, BookCategory);
			ps.setString(5, Status);
			ps.setString(6, ImageFileName);
			int row = ps.executeUpdate();
			if(row>0){
				System.out.println("Image Inserted");
			}else{
				System.out.println("Image Not Inserted");
			}
			
		}catch(ClassNotFoundException | SQLException e){
			System.out.println("Exception Cought: "+e.getMessage());
		}
		return false;
	} -->
