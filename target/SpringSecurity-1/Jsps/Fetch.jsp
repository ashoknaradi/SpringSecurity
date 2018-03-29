<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>User Details Page</title>
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Sort.css">
		<style>
			table, th, td {
			    border: 1px solid green;
			}
		</style>
		<script type="text/javascript">
			function deleteUser(mail) {
				alert(mail);
				document.forms[0].action="${pageContext.request.contextPath}/deleteUser?email="+mail;
				document.forms[0].method="post";
				document.forms[0].submit();
			}
			function editUser(mail) {
				document.forms[0].action="${pageContext.request.contextPath}/editUser?email="+mail;
				document.forms[0].method="post";
				document.forms[0].submit();
			}
			function sortUser() {
				document.forms[0].action="${pageContext.request.contextPath}/sortUser";
				document.forms[0].submit();
			}
		</script>
	</head>
	<body>
		<h3>Welcome to User Details Page!....</h3>
		<form action="" method="post">
			<table>
				<tr>
					<th>User Name
	        			<button type="button" class="sortButton" onclick="sortUser()">
							<img src="${pageContext.request.contextPath}/Images/sort_icon.jpg" style="width:3px;height:10px;">
						</button>
					</th>
					<!-- <th><input type="button" value="User Name" onclick="sortUser()"/></th> -->
					<th>User Mobile</th>
					<th>User Email</th>					
					<th>User City</th>
					<th>User Role</th>
					<th>EDIT</th>
					<th>DELETE</th>
				</tr>	
			  	<c:forEach items="${UserDetails}" var="Userdetails">
					<tr>
						<td>${Userdetails.name}</td>
						<td>${Userdetails.mobile}</td>
						<td>${Userdetails.email}</td>
						<td>${Userdetails.password}</td>
						<td>${Userdetails.role}</td>
						<td><input type="button" value="Edit" onclick="editUser('${Userdetails.email}')" /></td>
						<td><input type="button" value="Delete" onclick="deleteUser('${Userdetails.email}')" /></td>
					</tr>
				</c:forEach>
				<tr>
					<td><a href="<c:url value="j_spring_security_logout" />" > Logout</a></td>
					<td><a href="${pageContext.request.contextPath}/Jsps/Home.jsp">Home Page</a></td>
				</tr>
			</table>
		</form>
	</body>
</html>