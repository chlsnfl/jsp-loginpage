<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>session 연습</h1>

<%
	//sessin 내장객체라 여기 안에서만 사용 가능함
	String name = "shin";

	//session이용해서 데이터를 유지
	//계속 공유가 됨
	session.setAttribute("name1", name);
	//세선 유지 시간
	session.setMaxInactiveInterval(10);	//10초간 세션을 유지
%>
	<a href = "sessionName.jsp">세션네임 페이지로 이동</a>

</body>
</html>