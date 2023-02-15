<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%@ page import="java.sql.*" %>

<%
	String name = request.getParameter("name");
	String category = request.getParameter("category");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	
	String contact = request.getParameter("contact");

	
	

	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/MYProject","root","Shilpa1311@123");

		String query = "insert into  CITY1_DETAILS(name,category,email,address,city,contact) values(?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, name);
		ps.setString(2, category);
		ps.setString(3, email);
		
		ps.setString(4, address);
		ps.setString(5, city);
		ps.setString(6, contact);
		

		int status = ps.executeUpdate();
		if (status > 0) {%>
		<h3  style="color:white; background-color:red;">data successfully saved!!!!!save more</h3>
		<%@ include file="postclassified.jsp"%> 
			<%
		} 
	} catch (Exception e) {
		e.printStackTrace();
	}
%>

</body>
</html>