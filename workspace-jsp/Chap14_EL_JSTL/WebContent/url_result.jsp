<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>url 태그 결과</title>
</head>
<body>
	<table border="1">
		<tr align="center" bgcolor="yellow">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
		</tr>
		
		<tr align="center">  <!-- param 태그 이용해서 값 출력 -->
			<td>${param.id}</td>
			<td>${param.pw}</td>
			<td>${param.name}</td>
			<td>${param.email}</td>
		</tr>
		
		<!-- 스크립트릿 익스프레션 출력 -->
		<tr align="center">  
			<td><%= id %></td>
			<td><%= pw %></td>
			<td><%= name %></td>
			<td><%= email %></td>
		</tr>
	</table>
</body>
</html>