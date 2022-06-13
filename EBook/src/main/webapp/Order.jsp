<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="Sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Your Orders</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body style="background-color: #f5f7fa">
	<Sql:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/ebook" user="root" password=""
		var="ds" />
	<Sql:query var="rs" dataSource="${ds}">SELECT * FROM PlacedOrder;</Sql:query>
	<div style="margin-bottom: -2px">
		<%@include file="all_component/navbar4.jsp"%>
	</div>
<table class="table table-striped">
		<thead class="bg-primary">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Full Name</th>
				<th scope="col">PhoneNo</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Landmark</th>
				<th scope="col">City</th>
				<th scope="col">State</th>
				<th scope="col">ZipCode</th>
				<th scope="col">PaymentType</th>
			</tr>
		</thead>
<Core:forEach items="${rs.rows}" var="row">

<tbody>
			<tr>
			
				<td><b><Core:out value="${row.ID}"></Core:out></b></td></th>
				<td><b><Core:out value="${row.FullName}"></Core:out></b></td>
				<td><b><Core:out value="${row.PhoneNo}"></Core:out></b></td>
				<td><b><Core:out value="${row.Email}"></Core:out></b></td>
				<td><b><Core:out value="${row.Address}"></Core:out></b></td>
				<td><b><Core:out value="${row.Landmark}"></Core:out></b></td>
				<td><b><Core:out value="${row.City}"></Core:out></b></td>
				<td><b><Core:out value="${row.State}"></Core:out></b></td>
				<td><b><Core:out value="${row.ZipCode}"></Core:out></b></td>
				<td><b><Core:out value="${row.PaymentType}"></Core:out></b></td>
			</tr>

		</tbody>
	
	</Core:forEach>
	</table>	
	
	<div style="margin-top:543px">
		<%@include file="all_component/footer.jsp"%>
	</div>
</body>
</html>