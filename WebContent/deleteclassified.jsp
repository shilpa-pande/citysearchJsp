<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="adminheader">
<%@ include file="adminheader.jsp"  %>
</div>
<div class="adminbottom">
<%@ include file="footer.jsp"  %>
</div>
<%@ page import="java.sql.*" %>

<div class="container">
<div id="viewc">
<table class="table">
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYProject","root","Shilpa1311@123");
Statement smt=con.createStatement();
String query="select * from CITY1_DETAILS";
out.print("<thdead><tr><th>ID</th><th>NAME</th><th>Category</th><th>Email</th><th>Address</th><th>City</th><th>Contact</th><th>Delete Action</th></tr></thead>");
ResultSet ps=smt.executeQuery(query);
while(ps.next()){
	out.print("<tbody><tr><td>"+ps.getInt(1)+"</td><td>"+ps.getString(2)+"</td><td>"+ps.getString(3)+"</td><td> "+ps.getString(4)+"</td><td> "+ps.getString(5)+"</td><td> "+ps.getString(6)+"</td><td> "+ps.getString(7)+"</td><td><a href=deleteprocess.jsp?id="+ps.getInt(1)+">DELETE</a></td></tr></tbody>");

	}
	con.close();
	}catch(Exception e){e.printStackTrace();}
	%>      
	
	</table>
	</div>
	</div>


</body>
</html>