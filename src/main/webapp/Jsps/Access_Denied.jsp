<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Access Denied Page</title>
	</head>
	<body>
		<h1><font color="orange">${ErrorMessage}</font></h1>
		<form>
			<table>
				<tr>
					<td><a href="${pageContext.request.contextPath}/Jsps/Login_Security.jsp">Login_Security Page</a></td>
				</tr>
				<tr>
					<td><a href="${pageContext.request.contextPath}/Jsps/Home.jsp">Home Page</a></td>
				</tr>	
			</table>
		</form>
	</body>
</html>