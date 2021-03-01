<%@page import="com.Uses"%>
<%@page import="java.sql.ResultSet,java.util.*,java.io.*,com.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="flex.css" type="text/css">
    <%@ include file="sidebar.jsp" %>
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
  width: 50%;
  margin-right:20px;
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
			text-align: center;
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

<body>
    <div class="container">
    	<form action="Proc" method="POST">
        	<button style="background-color: #00e640" name="enabotton" value="start">Start election</button>
    	    <button style="background-color: #f03434"  name="enabotton" value="stop">Stop election</button>
	        <button  name="enabotton" value="reset">Reset all votes</button> 
    	</form>
	 </div>
	 <div class="container" >
		<div class="avatar-container">
        <table id="customers">
           
                <tr>
					<th>SI NO</th>
					<th>Name</th>
					<th>Party</th>
					<th>Votes</th>
				</tr>
            
            <%
            ResultSet rs=Uses.getData("Select * from candidates");
            String path="C:\\Users\\Gowtham cruise\\Documents\\eclipse\\BlockVote\\build\\classes\\block.txt";
    		File file=new File(path);
    		FileInputStream fis=new FileInputStream(file);
    		ObjectInputStream ois=new ObjectInputStream(fis);
    		ArrayList<Block> obj=(ArrayList<Block>) ois.readObject();
    		ois.close();
    		int vote=0;
          int i=1;
           while(rs.next()){
        	   String party=rs.getString(3);
        	   for (int j = obj.size() - 1; j >= 0; j--) {
	  	  	  	  		com.Block b=obj.get(j);
	  	  	  	  		if(b.getVotefor().equals(party))
	  	  	  	  			vote++;
        	   }
			out.println("<tr><td>"+i+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+vote+"</td></tr>");
    		i++;
    		vote=0;
           }
           String status;
           ResultSet rs2=Uses.getData("select * from keyvaluee");
			rs2.next();
			status=rs2.getString(2);
			session.setAttribute("STATUS", status);
			%>
        </table>
        <p style="color: #A153DD;">The election is currently ${STATUS}</p>
    </div>
    </div>

</body>

</html>