<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="header.jsp" %>
<link rel="stylesheet" href="redirect.css" type="text/css">
</head>
<body>
	<div class="container">
		<p>
			OTP has been send to your E-mail
		</p>
		<form action="OTP" method="post" class="form-box">
			<input type="text" title="Invalid otp"placeholder="Enter your OTP" pattern="${OTP}" required="Enter the valid otp">
			<input type="submit" value="Submit">
		</form>
	</div>
</body>
</html>