<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>정보 입력 폼</h1>
<form action="itemWriteResult.jsp" method="post">
상품명 : <input type="text" name="name">
가 격 : <input type="text" name="price">
설 명 : <input type="text" name="description">
<input type="submit" value="전송" />
<input type="reset" value="취소" />
</form>
</body>
</html>