<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
<h2>회원 정보 보기</h2>
<%
	//request.setCharacterEncoding("UTF-8"); //post 방식으로 데이터가 넘어올 때 한글이 꺠짐 방지
	//post 방식으로 데이터가 넘어 올 떄 한글이 깨질 수 있기에
	String id = request.getParameter("id");
	String pass1 = request.getParameter("pass1");
	String pass2 = request.getParameter("pass2");
	String email = request.getParameter("email");
	String tel = request.getParameter("tel");

	//[]배열 타입으로 받아주기 위해 value 로 저장
	String [] hobby = request.getParameterValues("hobby");
	
	String job = request.getParameter("job");
	String age = request.getParameter("age");
	String info = request.getParameter("info");
	
	if(!pass1.equals(pass2)){
%>
<script type = "text/javascript">
	alert("패스워드가 일치하지 않습니다."); //경고창
	history.go(-1); //-1은 이전 페이지로 이동하라는 소리
</script>
<%
	}
%>

<table width = "500" border="1">
<tr height = "50">
		<td width = "150" align="center"> 아이디 </td>
		<td width = "350" align = "center"><%=id %></tr>
	<tr height = "50">
		<td width = "150" align="center"> 이메일 </td>
		<td width = "350" align = "center"><%=email %></td>
	</tr>
	<tr height = "50">
		<td width = "150" align="center"> 전화번호 </td>
		<td width = "350" align = "center"><%=tel %></td>
	</tr>
	<tr height = "50">
		<td width = "150" align="center"> 관심분야</td>
		<td width = "350" align = "center">
		<%
			for(int i = 0; i<hobby.length; i++){
				out.write(hobby[i] + " ");
			}
		%></td>
	</tr>
	<tr height = "50">
		<td width = "150" align="center"> 당신의 직업은 </td>
		<td width = "350" align = "center"><%=job %></td>
	</tr>
	<tr height = "50">
		<td width = "150" align="center"> 연령 </td>
		<td width = "350" align = "center"><%=age %></td>
	</tr>
	<tr height = "50">
		<td width = "150" align="center"> 하고 싶은 말 </td>
		<td width = "350" align = "center"><%=info %></td>
	</tr>
</table>
</center>
</body>
</html>