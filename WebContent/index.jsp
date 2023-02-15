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
<title>home page</title>
</head>
<body>
<div class="topheader">
<%@ include file="header.jsp"  %>
</div>

<div class="container-fluid">
<h1 style="color:Red;text-align:center;padding:150px">
WELCOME TO OUR WEBSITE YOU CAN FIRST REGISTERED THEN POST CLASSIFIED
</h1>
<h1>
<%@ include file="sidebar1.jsp"  %>
</h1>
</div>
<div class="bottom">
<%@ include file="footer.jsp"  %>
</div>


</body>
</html>