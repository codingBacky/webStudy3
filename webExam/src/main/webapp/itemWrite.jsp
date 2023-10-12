<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
	Statement st = null;
	ResultSet rs = null;
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String uid = "scott";
	String pass = "tiger";
	String sql = "select * from item";
%>
<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, uid, pass);
		st = con.createStatement();
		rs = st.executeQuery(sql);
		
		while(rs.next()){
			out.println(rs.getString("name")+"<br>");
			out.println(rs.getString("price")+"<br>");
			out.println(rs.getString("description")+"<br>");
		}
		
	}catch(Exception e){
		e.getMessage();
	}finally{
		try{
			if(rs != null) rs.close();
			if(st != null) st.close();
			if(con != null) con.close();
		}catch(Exception e){
			e.getMessage();
		}
	}
%>
</body>
</html>