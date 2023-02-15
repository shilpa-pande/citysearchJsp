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
<%@ include file="cookie.jsp" %>
</div>

<%@ page import="java.sql.*" %>

<%
String username=request.getParameter("name");
String userpass=request.getParameter("password");
String useremail=request.getParameter("email");
String useraddress=request.getParameter("address");
String usercountry=request.getParameter("country");
String usercontact=request.getParameter("contact");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYProject","root","Shilpa1311@123");

String query="insert into CITY1_USER(NAME,PASSWORD,EMAIL,ADDRESS,COUNTRY,CONTACT) values(?,?,?,?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,username);
ps.setString(2,userpass);
ps.setString(3,useremail);
ps.setString(4,useraddress);
ps.setString(5,usercountry);
ps.setString(6,usercontact);

int status=ps.executeUpdate();
if (status > 0) {%>
<h3  style="color:white; background-color:red;">data successfully registered!!!!!now you can login</h3>
		<jsp:include page="register.jsp" />  
<% 
} 
} catch (Exception e) {
%><h5 style="color:white; background-color:red;">you are already registered</h5><jsp:include page="register.jsp" />  <%
e.printStackTrace();
}
%>


</body>
</html>