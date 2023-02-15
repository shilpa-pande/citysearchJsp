<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ include file="cookie.jsp" %>
<jsp:include page="Postersaccount.jsp"></jsp:include>


<%@ page import="java.sql.*" %>
<%

String useremail=request.getParameter("email");
String userpass=request.getParameter("password");
boolean status=false;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYProject","root","Shilpa1311@123");

String query="select * from CITY1_USER where EMAIL=? and PASSWORD=?";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,useremail);
ps.setString(2,userpass);

ResultSet rs=ps.executeQuery();
status=rs.next();


if(status){
int id=rs.getInt(1);
session.setAttribute("userid",Integer.valueOf(id));
session.setAttribute("islogin","true");
%>
<h3 style="color:white; background-color:red;">
<jsp:include page="postersloginsucess.jsp"></jsp:include></h3>
<h3 style="color:white; background-color:red;">Welcome to City Search. Now you may post classified.</h3>
<%
Cookie ck=new Cookie("uname",useremail);
response.addCookie(ck);


}
else{
	
out.print("Sorry username or  password error!");
%>
<h3 style="color:white; background-color:red;">Something wrong in your email and password!!!!</h3>
<jsp:forward page="index.jsp"></jsp:forward>

<%
}
}catch(Exception e){e.printStackTrace();}
%>

</body>
</html>