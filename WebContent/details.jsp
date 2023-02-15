<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="cookie.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="mycss.css" rel="stylesheet">
<title>details </title>
</head>
<body>
<div class="topheader">
<%@ include file="header.jsp"  %>
</div>
<div class="container">

<h1 style="color:red;">
WELCOME TO OUR WEBSITE YOU CAN FIRST REGISTERED THEN POST CLASSIFIED
<%@ include file="sidebar1.jsp"  %>
</h1>
<div id="viewc">
<table class="table">

<%@ page import="java.sql.*" %>
<%
String category=request.getParameter("category");
String city=request.getParameter("city");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYProject","root","Shilpa1311@123");

String query="select * from CITY1_DETAILS where category=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,category);
ResultSet rs=ps.executeQuery();
out.print("<thead><tr><th>Name</th><th>Category</th><th>Email</th><th>Address</th><th>city</th><tr></thead>");

while(rs.next()){
out.print("<tbody><tr><td>"+rs.getString(2)+"</td><td> "+rs.getString(3)+"</td><td> "+rs.getString(4)+"</td><td> "+rs.getString(5)+" </td><td>"+rs.getString(6)+" </td></tr></tbody>");
}
String query1="select * from CITY1_DETAILS where city=?";
PreparedStatement rss=con.prepareStatement(query1);
rss.setString(1,city);
ResultSet rss1=rss.executeQuery();


while(rss1.next()){
out.print("<tbody><tr><td>"+rss1.getString(2)+"</td><td> "+rss1.getString(3)+"</td><td> "+rss1.getString(4)+"</td><td> "+rss1.getString(5)+" </td><td>"+rss1.getString(6)+" </td></tr></tbody>");
}
}catch(Exception e){e.printStackTrace();}
%>
</table>
</div>
</div>

<div class="bottom">
<%@ include file="footer.jsp"  %>
</div>

</body>
</html>