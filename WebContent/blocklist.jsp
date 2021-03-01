<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.ObjectInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.Block"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@ include file="header.jsp" %>
<style>
.container {
	position: relative;
	margin-top: 80px;

}
table {
  table-layout: fixed;
  border-collapse: separate;
  width: 100%;
  top: 10px;
}

th, td {
  text-align: left;
  padding: 8px;
  overflow: hidden;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
  background-color: #A153DD;
  color: white;
}
tr:hover {
			background-color: #89c4f4;
		}
</style>
</head>
<body>
<table class="container">
  <tr>
    <th>ID</th>
    <th>Hash</th>
    <th>previous hash</th>
    <th>Time stamp</th>
    <th>Vote for</th>
  </tr>
  	
<%
  		try{
  	  	  	  	  	String path="C:\\Users\\Gowtham cruise\\Documents\\eclipse\\BlockVote\\build\\classes\\block.txt";
  	  	  	  	  	File file=new File(path);
  	  	  	  	  	FileInputStream fis=new FileInputStream(file);
  	  	  	  	  	ObjectInputStream ois=new ObjectInputStream(fis);
  	  	  	  	  	ArrayList<com.Block> obj=(ArrayList<com.Block>) ois.readObject();
  	  	  	  	  	ois.close();
  	  	  	  	  	for (int j = obj.size() - 1; j >= 0; j--) {
  	  	  	  	  		com.Block b=obj.get(j);
  	  	  	  	  		out.println("<tr><td>"+b.getBlockid()+"</td><td>"+b.getHash()+"</td><td>"+b.getPrehash()+"</td><td>"+b.getTimestamp()+"</td><td>"+b.getVotefor()+"</td></tr> ");
  	  	  	  	  	}
  	  	  	  	  	}catch(Exception e){
  	  	  	  	  		e.printStackTrace();
  	  	  	  	  	}
  	%>
  
</table>
<a href="index.jsp"><Center>Go to home</Center></a>
</body>
</html>