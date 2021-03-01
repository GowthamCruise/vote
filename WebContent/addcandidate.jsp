<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
<%@ include file="sidebar.jsp"%>
<link rel="stylesheet" href="addcandidate.css" type="text/css">

</head>
<body>
	<div class="main-form">
		<h3>Candidate form</h3>
	</div>
	<div class="form-box">
		<form action="AddCandidate" enctype="multipart/form-data" method="post" class="form-box--main">
			<label for="Name"> 
				<strong>Name</strong>
			</label> 
			<input type="text" name="Name" placeholder="Name" required>
			<label for="Party"> 
				<strong>Party</strong>
			</label> 
			<input type="text" name="Party" placeholder="Party" required>
			<label for="Upload"> 
				<strong>Upload Image</strong>
			</label> 
			<input type="file" name="Myfile"  accept=".png" required="required" id="fileUpload"> 
			<input type="submit" name="submit" value="submit" class="submit"> 
		</form>
	</div>
</body>
</html>