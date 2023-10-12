<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	Connection con = null;
	PreparedStatement ps = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pass = "tiger";
	String sql = "insert into item values (?,?,?)";
%>
<%
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String description = request.getParameter("description");

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url,uid,pass);
		ps = con.prepareStatement(sql);
		ps.setString(1, name);
		ps.setString(2, price);
		ps.setString(3, description);
		ps.executeUpdate();
		
	}catch(Exception e){
		e.getMessage();
	}finally{
		try{
			if(ps != null) ps.close();
			if(con != null) con.close();
		}catch(Exception e){
			e.getMessage();
		}
	}
%>
<a href="itemWrite.jsp">결과보기</a>
</body>
</html>