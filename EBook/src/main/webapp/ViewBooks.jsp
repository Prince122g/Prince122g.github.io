<%@page import="com.db.dbconnect"%>
<%@page import="com.dao.BookDAOImpl"%>
<%@page import="com.entity.BookDtls"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title her	e</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<div style="margin-bottom: 1px">
		<%@include file="all_component/navbar1.jsp"%>
	</div>
	<%
	int Id = Integer.parseInt(request.getParameter("Id"));
	BookDAOImpl DAO=new BookDAOImpl(dbconnect.getConn());
	BookDtls b  =DAO.getBookById(Id);
	%>
	<div>
	<div class="container p-3">
		<div class="row">
				<img src="" style="height: 200px; width: 200px"><br>
				<h4 class="mt-2">BookName:-<span class="text-success"><%=b.getBookName()%></span></h4>
				<h4>Author:-<span class="text-success">${row.Author}</span></h4>
				<h4>Category:-<span class="text-success">New</span></h4>
			</div>
			<div class="col-md-6 text-center p-5 border bg-white">
				<h2>CSS</h2>
				<div class="row p-3">
				<div class="col-md-4 text-primary text-center p-2"><i class="fa-solid fa-money-bill-1-wave fa-2x"></i><p>Cash On Delivery</p></div>
				<div class="col-md-4 text-danger text-center p-2"><i class="fa-solid fa-arrow-rotate-left fa-2x"></i><p>Return Available</p></div>
				<div class="col-md-4 text-primary text-center p-2">	<i class="fa-solid fa-truck-moving fa-2x"></i><p>Free Delivery</p></div>
					 	
				
				</div>
				<div class="r text-center p-5">
									<button type="submit" class="btn btn-danger btn-sm ml-5">
										<i class="fas fa-cart-plus mr-1"></i>Add to Cart
									</button>
									<a href="#" class="btn btn-success btn-sm ml-1">390</a>
								</div>
			</div>
		</div>
	</div>


	<div style="margin-top: 190px">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>