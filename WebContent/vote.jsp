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
    <div class="container">
        <header class="container-header">
            <h3>
                Select your candidate 
            </h3>
        </header>
        <div class="avatar-container">
        <table style="border: 2pt;">
        <tr style="margin: 2px;">
            <th>SI NO</th>
            <th>Name</th>
            <th>Party</th>
            <th>Action</th>
        </tr>
        </table>
            <!-- avator	section starts -->
            <form action="" method="post">
            <%
            while(rs.next()){
    			out.println("");
    			out.println("");
    			out.println("");
    			out.println("");
    			out.println("");
    			out.println("");
    			out.println("");
    		}
            %>
                <div class="avatar-firstcontainer avatar-main" id="avatar-select">
                    <input type="radio" name="checkbox" class="check">
                    <div class="avatar-img">
                     <img src="avatar1.png" alt="candidate-logo" class="logo">
                    </div>
                    <div class="avatar-details">
                        <p>
                            Name:
                        </p>
                        <p>
                            Party:
                        </p>
                    </div>
                </div>
                <!-- avatar section ends -->
                <div class="avatar-secondcontainer avatar-main" id="avatar-select">
                    <input type="radio" name="checkbox" class="check">
                    <div class="avatar-img">
                        <img src="avatar1.png" alt="candidate-logo2" class="logo">
                    </div>
                    <div class="avatar-details">
                        <p>
                            Name:
                        </p>
                        <p>
                            Party:
                        </p>
                    </div>
                </div>
                <input type="submit" value="Submit" class="submit">
            </form>
        </div>
    </div>
</body>

</html>