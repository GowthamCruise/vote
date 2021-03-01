<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 
	if(session.getAttribute("USERNAME")==null){
		response.sendRedirect("index.jsp");
	}
    
%>
<%
	try{
		String s=(String) session.getAttribute("status");
		if(s.equals("stop")){
			response.sendRedirect("noelection.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>
<%
	try{
		int s=(Integer)session.getAttribute("voted");
		if(s==1){
			response.sendRedirect("submit.jsp");
		}
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<title>E - voting using block chain</title>
	<link rel="stylesheet" href="vote.css" type="text/css">
	<%@ include file="header.jsp" %>
	<style>
		#customers {
			font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
			border-collapse: collapse;
			width: 100%;
			align-content: center;
		}

		#customers td,
		#customers th {
			border: 2px solid #A153AF;
			padding: 5px;
			align-content: center;
		}
table {
  table-layout: fixed;
  border-collapse: separate;
  width: 100%;
  top: 10px;
}
		#customers tr:nth-child(even) {
			background-color: #f2f2f2;
		}

		#customers tr:hover {
			background-color: #89c4f4;
		}

		#customers th {
			padding-top: 12px;
			padding-bottom: 12px;
			text-align: left;
			background-color: #A153DD;
			color: white;
		}
		.press {
  background-color: #A153DD; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
	</style>
</head>
<%
 String JDBC_DRIVER = "com.mysql.jdbc.Driver";
 String DB_URL = "jdbc:mysql://localhost/blockvote";
 String USER = "root";
 String PASS = "";
 
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	conn = DriverManager.getConnection(DB_URL, USER, PASS);
	stmt = conn.createStatement();
	String sql = "SELECT * FROM `candidates`";
	rs = stmt.executeQuery(sql);	
	%>

<body>
	<div class="container" style="padding: 100px;">
		<div class="avatar-container">
			<table id="customers">
				<tr>
					<th>SI NO</th>
					
					<th>Name</th>
					<th>Party</th>
					<th>Action</th>
				</tr>
				<form action="Vote" method="POST">
				<%
          int i=1;
           while(rs.next()){
							out.println("<tr><td>"+i+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td><button class='press' name='for' value="+rs.getString(1)+">vote</button></td></tr>");
    		i++;		
           }
			%>
			</form>
			</table>
		</div>
	</div>
</body>
</html>