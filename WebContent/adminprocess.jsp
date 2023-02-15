<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
   
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>admin page</title>
</head>
<body>
<div>
<%
String name=request.getParameter("name");
String password=request.getParameter("password");

session.setAttribute("name","shilpa");
if(password.equals("shilpa")){
%>
<h3  style="color:white; background-color:red;">Successfully login</h3>
<%@ include file="postclassified.jsp"%> 
<% }
else{
out.print("Sorry username or  password error!");
%>

<jsp:forward page="index.jsp"></jsp:forward>
<%
}
%>




</div>


</body>
</html>