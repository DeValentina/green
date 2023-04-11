<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>queryStringRequest</title>
</head>
<body>
<!-- get방식 : 보안에 위험성 있음 / 값 그대로 노출 -->
<!-- <form method="get" action="queryStringResponse.jsp">
학번 : <input type="text" name="no"> <br>
이름 : <input type="text" name="name"> <br>
<input type="submit" value="확인"> -->

<form method="post" action="queryStringResponse.jsp">
학번 : <input type="text" name="no"> <br>
이름 : <input type="text" name="name"> <br>
<input type="submit" value="확인">
</form>
</body>
</html>