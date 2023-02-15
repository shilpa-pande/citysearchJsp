<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ include file="cookie.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<%
String type=request.getParameter("type");
String name=request.getParameter("name");
String description=request.getParameter("description");

int userid=0;
userid=(Integer)session.getAttribute("userid");

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYProject","root","Shilpa1311@123");
String query="insert into CITY_CLASSIFIED(BUYSELL,NAME,DESCRIPTION,USERID) values(?,?,?,?)";
PreparedStatement ps=con.prepareStatement(query);
ps.setString(1,type);
ps.setString(2,name);
ps.setString(3,description);
ps.setInt(4,userid);

int status=ps.executeUpdate();
if(status>0){%>
	<h3  style="color:white; background-color:red;">Successfully posted</h3>
	<jsp:include page="posterspostclassified.jsp" />
	<% 
}
}catch(Exception e)
{
	e.printStackTrace();
}
%>	

</body>
</html>