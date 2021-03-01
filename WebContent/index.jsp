<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="files.css">
</head>
<body>
  <div class="hea">
      <h1></h1>
  </div>
<div class="box">
  <h2> VOTERS LOGIN</h2>
  <form action="LoginServlet" method="post">
    <div class="inputbox">
      <input type="text" name="uname" placeholder="Voter ID" id="" required>
    </div>
    <div class="inputbox">
        <input type="password" name="pass" placeholder="Password" id="" required>
      </div>
      <input type="submit" value="submit">
  </form>
    <a href="admin.jsp" style="color: white;">click here to signin as admin</a>
    <br>
    <a href="blocklist.jsp" style="color: white;">click here to visit block</a>
</div>
</body>   
</html>