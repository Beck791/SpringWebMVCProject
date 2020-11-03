<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form</title>
<style>
div{color:red;}
</style>
</head>
<body>

<form action="<c:url value='/hello.Controller'/>" method="get">
Name:<input type="text" name="name"/><div>${errors.name}</div> <br/>
<input type ="submit" value="send"/>


</form>

</body>
</html> 