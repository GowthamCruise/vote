<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<%@ include file="sidebar.jsp" %>
<link rel="stylesheet" href="addvoter.css" type="text/css">
</head>
<body>
	<div class="main-form">
		<h3>
			Registration form
		</h3>
		<div class="form" >
			<!-- Action attribute used for url link of the project -->
			<form action="AddVoter" class="form-box" method="post">
				<label for="first name">
					<strong>First Name</strong>
				</label>
				<input type="text" name="first name" placeholder="First name" required>
				<label for="Last name">
					<strong>Last Name</strong>
				</label>
				<input type="text" name="Last name" placeholder="Last name" required>
				<label for="Father's name">
					<strong>Father's Name</strong>
				</label>
				<input type="text" name="Father's name" placeholder="Father's name" required="">
				<label for="gender">
					<strong>Gender</strong>
				</label>
				<input type="radio" name="gender" value="Male"  class="point">Male
				<input type="radio" name="gender" value="Female" class="point" >Female
				<input type="radio" name="gender" value="Other" class="point">Other
				<label for="Phone number">
					<strong>Phone</strong>
				</label>
				<input type="num" name="phone number" placeholder="Eg. 9876543210" required pattern="^\d{10}$">
				<label for="E-mail">
					<strong>E-mail</strong>
				</label>
				<input type="email" name="E-mail" required placeholder="Email"  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">
				<label for="date of birth">
					<strong>DOB:</strong>
				</label>
				<input type="date" name="DOB">
				<label for="Address">
					<strong>Address</strong>
				</label>
				<textarea name="Address" placeholder="Write down address" required></textarea>
				<label for="Pincode">
					<strong>Pincode</strong>
				</label>
				<input type="text" name="pincode" required placeholder="Pincode" pattern="^\d{6}$">
				<input type="submit" name="submit" value="submit" class="submit">
			</form>
		</div>
	</div>
</body>
</html>