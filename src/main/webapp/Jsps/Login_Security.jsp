<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login_Security Page</title>
	</head>
	<body>
		<form action="${pageContext.request.contextPath}/<c:url value='j_spring_security_check'/>" method='POST'>
		<font color ="red">Security Login Page</font>
		<table>
			<tr>
				<td>Email :</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td>Password :</td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td colspan="1" style="text-align:center"><input type="submit" value="Security_Login"/></td>
			</tr>
		</table>
		</form>
	</body>
</html>