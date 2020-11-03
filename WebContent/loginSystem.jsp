<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login System</title>
</head>
<body>
	<h3>Form</h3>
	<form action="<c:url value='/checkLogin.controller'/>" method="post">
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="username"></td>
				<td>${errors.name}</td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="userpwd"></td>
				<td>${errors.pwd}</td>
			</tr>
			<tr>
				<td><input type="submit"></td>
				<td>${errors.msg}</td>
			</tr>
		</table>
	</form>
</body>
</html>