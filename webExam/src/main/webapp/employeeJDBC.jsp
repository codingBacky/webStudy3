<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
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
	Statement stat = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:XE";
	String userid = "scott";
	String pass = "tiger";
	String sql = "select * from employee";
%>
<table>
<tr>
<td>이름</td>
<td>주소</td>
<td>주민번호</td>
</tr>
<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(url, userid, pass);
		stat = con.createStatement();
		rs = stat.executeQuery(sql);
		
	
		while(rs.next()){
			out.println("<tr>");
			out.println("<td>" + rs.getString("name") + "</td>");
			out.println("<td>" + rs.getString("address") + "</td>");
			out.println("<td>" + rs.getString("ssn") + "</td>");
			out.println("</tr>");
		}
	}catch(Exception e){
		e.getMessage();
	}finally{
		try{
			if(rs != null) rs.close();
			if(stat != null) stat.close();
			if(con != null) con.close();
		}catch(Exception e){
			e.getMessage();
		}
	}
	

%>
</table>
</body>
</html>