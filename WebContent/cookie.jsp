<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div>
		<%
String login=(String)session.getAttribute("islogin");
if(login!=null){
Cookie ck[]=request.getCookies();
out.print("<h6>you are logged as:"+ck[0].getValue());
out.print("</h6>");}
%><br/>
</div>


</body>
</html>