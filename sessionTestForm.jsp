<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" />
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
</head>
<body>
<!--  프로그램 흐름 (총6개파일 사용)
sessionTestForm.jsp (로그인 폼)
seesion_success.jsp (로그아웃 버튼)
session_check.jsp (세션체크)
모든요청은 항상 Controller에게 보낸다.
LoginController.java (Controller)
 => MemberDAO.java (Model)
    MemberDTO.java
 => seesion_success.jsp (View) 성공시
 만약 실패시 sessionTestForm.jsp 로 다시 돌아감
-->

<div data-role="page">
 <div data-role="panel" id="panel1" data-display="overlay" data-theme="b">
  <% String context=request.getContextPath(); %>
	<form method="post" action="<%= context%>/ch02_servlet/login.do">
		<h1>로그인 패널</h1>
		<label for="name">아이디 : </label>
	  <input type="text" name="userid" id="userid" value="" data-mini="true" 
	  data-clear-btn="true">
	  <label for="password">비밀번호 : </label>
		<input type="password" id="passwd" name="passwd" value="" data-mini="true" 
	  data-clear-btn="true">
		<input type="submit" value="로그인">
  </form>
 </div>
 
 <div data-role="header" data-theme="b">
  <h1>header영역</h1>
 </div>
 <div data-role="content">
  <a href="#panel1" data-role="button" data-inline="true">로그인 패널</a><br>
	<!-- 로그인 실패, 로그아웃 메시지를 출력 -->
	<%
	String message=request.getParameter("message");
	if(message != null){
	%>
	<ul data-role="listview" data-inset="true">
	 <li data-theme="b">메시지 : </li>
	 <li><%= message %></li>
	</ul>
	<% } %>
 </div>
 <div data-role="footer" data-theme="b" data-position="fixed">
  <h4>footer영역</h4>
 </div>
</div>

</body>
</html>