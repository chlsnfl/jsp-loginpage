<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h1>회원 가입</h1>
	<form action = "responseLoginProc.jsp" method = "post">
	<table width = "500" border = "1">
	<tr height = "50">
		<td  align="center"> 아이디 </td>
		<td width = "350" align = "center">
		<input type = "text" name = "id" size = "20" placeholder="id 넣으세요">
		</td></tr>
	<tr height = "50">
		<td width = "150" align="center"> 비밀번호 </td>
		<td width = "350" align = "center">
		<input type = "password" name = "pass" size = "20"
		placeholder = '비밀번호는 영문과 숫자만 넣어주세요'>
		</td>
	</tr>
	<tr height = "50">
		<td colspan = "2" align = "center">
		<input type = "submit" value = "전송"></td>
	</table>
</form>
</center>
</body>
</html>