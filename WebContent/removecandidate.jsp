<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="sidebar.jsp" %>
<%
 String JDBC_DRIVER = "com.mysql.jdbc.Driver";
 String DB_URL = "jdbc:mysql://localhost/blockvote";
 String USER = "root";
 String PASS = "";

%>
<link rel="stylesheet" href="removecandidate.css" type="text/css">
</head>
<body>
	<div class="container">
		<h3>Remove candidate</h3>
		<p class="container-para">
			Select your candidate
		</p>
		<form name="form1" action="SetDetails" method="post" >
		<div class="select123" onchange="javascript:document.form1.submit();">
		<select name="candrop" id="" class="dropdown" >
			<!-- Add options -->
			<option value="Select your candidate" id=''>Select your candidate</option>
			<%
			Connection conn = null;
			Statement stmt = null;
			ResultSet rs = null;
			conn = DriverManager.getConnection(DB_URL, USER, PASS);
			stmt = conn.createStatement();
			String sql = "SELECT * FROM `candidates`";
			rs = stmt.executeQuery(sql);	
				
			while(rs.next()){
					out.println("<option value="+rs.getString(1)+" id='"+rs.getString(1)+"'>"+rs.getString("name")+"</option>");
				}
			%>
		</select>
		</div>
		</form>
		<form action="RemoveCandidate" method="post" class="form-box--main">
			<label for="Name"> 
				<strong>Name</strong>
			</label> 
			<input type="text" name="Name" placeholder="Name" disabled value=${name} >
			<label for="ID"> 
				<strong>ID </strong>
			</label> 
			<input type="text" name="ID" placeholder="ID" disabled value=${id}> 
			<label for="Party"> 
				<strong>Party</strong>
			</label> 
			<input type="text" name="Party" placeholder="Party" disabled value=${party}>
			<input type="submit" name="submit" value="Delete" class="submit" <% if(session.getAttribute("id")==null){out.println("disabled");} %>>
		</form>
	</div>
</body>
</html>