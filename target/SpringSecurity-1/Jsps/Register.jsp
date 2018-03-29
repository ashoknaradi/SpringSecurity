<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Register Page</title>
	</head>
	<body>
		<h3>Welcome to Registration page!!...Please Register your details</h3>
		<form action="${pageContext.request.contextPath}/registerController" method="post">
		<table>
			<tr><td>Name : </td><td><input type="text" name="name" /></td></tr>
			<tr><td>Mobile : </td><td><input type="text" name="mobile" /></td></tr>
			<tr><td>Email : </td><td><input type="text" name="email" /></td></tr>
			<tr><td>Password : </td><td><input type="password" name="password" /></td></tr>
			<tr><td>Role : </td>
							<td>
								<select name="role">
									<option value="ROLE_USER">ROLE_USER</option>
									<option value="ROLE_ADMIN">ROLE_ADMIN</option>
									<option value="ROLE_DBA">ROLE_DBA</option>
								</select>
							</td>	
			</tr>
			<tr>
				<td><input type="submit" value="Register"/></td>
				<td><a href="${pageContext.request.contextPath}/Jsps/Home.jsp">Home Page</a></td>
			</tr>
			<tr><td><a href="<c:url value="j_spring_security_logout" />" > Logout</a></td></tr>
			</table>
		</form>
	</body>
</html>