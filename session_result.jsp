<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.3.min.js"></script>
</head>
<body>
<%
//중요 : getAttribute에 의해 넘어오는 데이터는 모두 Object타입이기 때문에 좌변의 데이터타입과 맞춰줘야(형변환) 한다.
String name=(String)session.getAttribute("name");
int age=(int)session.getAttribute("age");
%>
[세션에 저장한 형태로 넘어온 데이터] <br>
이름 : <%= name %>, 나이 : <%= age %> <br>
<!-- 세션아이디가 자동 발급되는데 이는 웹브라우저마다 다르게 발급된다. -->
<hr>
<%
String name2=(String)request.getAttribute("name");
int age2=(int)request.getAttribute("age");
%>
[request에 저장한 형태로 넘어온 데이터] <br>
이름 : <%= name2 %>, 나이 : <%= age2 %> <br>

<a href="session_result2.jsp">페이지가 바뀔때 세션과 request값 확인</a>

</body>
</html>