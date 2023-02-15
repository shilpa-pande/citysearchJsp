<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*,java.util.*"%>
<%
String id=request.getParameter("id");
try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYProject","root","Shilpa1311@123");
Statement st=con.createStatement();
int i=st.executeUpdate("DELETE FROM CITY1_DETAILS WHERE id="+id);
if (i > 0) {%>
<h3  style="color:white; background-color:red;">data deleted succesfully</h3>
<jsp:include page="deleteclassified.jsp" />
	<%
} 
} catch (Exception e) {
e.printStackTrace();
}
%>

</body>
</html>