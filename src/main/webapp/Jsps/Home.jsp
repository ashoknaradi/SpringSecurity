<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Home Page</title>
	</head>
	<body>
		<div align="center">
			<h1><font color="green">Home Page</font></h1>
			<form action="${pageContext.request.contextPath}/jspRegController">
				<input type="submit" value="Register Here">
			</form></br>
			<form action="${pageContext.request.contextPath}/jspLoginController">
					<input type="submit" value="Login Here" />
			</form></br>
			<form action="${pageContext.request.contextPath}/fetchController">
					<input type="submit" value="Fetch Details Here" />
			</form>
		</div>
	</body>
</html>