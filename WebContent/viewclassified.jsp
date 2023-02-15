<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="mycss.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="mycss.css">
</head>
<body>
<div class="topheader">
<%@ include file="header3.jsp"  %>
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
 <div class="footer">
       
                <div class="navbar navbar-inverse navbar-fixed-bottom">
                    <div class="container">
                    <p class="navbar-text">© Shilpa Pandey</p>
                    <h1>My Footer</h1>
                </div>
                
        
            </div>
       
    </div>


</body>
</html>
