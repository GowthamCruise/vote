<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<% 
	if(session.getAttribute("USERNAME")==null){
		response.sendRedirect("admin.jsp");
	}
%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>
	E-VOTING USING BLOCKCHAIN
</title>
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="sidebar.css" type="text/css">
</head>
<body>
<div class="sidenav">
	<a href="dashboard.jsp">Dashboard</a>
	<a href="addvoter.jsp">Add Voter</a>
	<a href="addcandidate.jsp">Add candidate</a>
	<a href="removecandidate.jsp">Remove candidate</a>	
	<a href="logout.jsp">Logout</a>
</div>
</body>
</html>