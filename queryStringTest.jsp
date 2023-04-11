<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>queryStringTest</title>
</head>
<body>
<!-- 주의점 : post방식으로 값이 전송되어질떄는 한글 깨어지니 추가  -->
<!-- get방식 한글 처리 O / post는 한글 처리 안돼서 아래 문장 추가 필요 -->
<% request.setCharacterEncoding("utf-8"); %>

당신의 학번은 <%= request.getParameter("no") %>입니다. <br>
당신의 이름은 <%= request.getParameter("name") %>입니다. <br>


</body>
</html>