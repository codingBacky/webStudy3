<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value="333.PNG" var="data"></c:url>
<h3> ${data}</h3>
<img src="${data }" width="200" height="200">
<%--<c:redirect url="19_jstlUrl.jsp"></c:redirect>  --%>
</body>
</html>