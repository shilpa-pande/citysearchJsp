<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   <link href="mycss.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
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
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYProject","root","Shilpa1311@123");
Statement smt=con.createStatement();
String query="select * from CITY_CLASSIFIED";
out.print("<thdead><tr><th>id</th><th>buysell</th><th>name</th><th>description</th><th>userid</th></tr></thead>");
ResultSet ps=smt.executeQuery(query);
while(ps.next()){

out.print("<tbody><tr><td>"+ps.getInt(1)+"</td><td>"+ps.getString(2)+"</td><td>"+ps.getString(3)+"</td><td> "+ps.getString(4)+"</td><td> "+ps.getInt(5)+"</td></tr></tbody>");

}
con.close();
}catch(Exception e){e.printStackTrace();}
%>
</table>
</div>
</div>

</body>
</html>