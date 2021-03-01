<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% session.removeAttribute("USERNAME");
    session.removeAttribute("party");
    session.removeAttribute("name");
    session.removeAttribute("id");
    	response.sendRedirect("admin.jsp");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>

</body>
</html>