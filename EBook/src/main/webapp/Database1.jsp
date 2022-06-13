<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="Core" uri="http://java.sun.com/jsp/jstl/core"  %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"  %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>InsertData</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body bgcolor=lightblue>
<%@include file="all_component/navbar.jsp"%>
<sql:setDataSource var="db"
driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/ebook"
user="root"
password=""/>
<sql:update var="rs" dataSource="${db}">
INSERT INTO Registration (Name,Email,Password,PhoneNo,Type) VALUES('${Name}','${Email}','${Password}','${PhoneNo}','${Type}')
</sql:update>
<center>
<h1><b>You have registered Successfully  :)</b></h1>
<h1><a href="login.jsp">Login</a></b></h1>
</center>

</body>
</html>