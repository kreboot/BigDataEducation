<%@page import="kr.gov.dto.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.gov.dao.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>멤버 List</title>
</head>
<body>
	<table border="1">
		<tr>
			<th>사용자 이름</th>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>전화번호</th>
			<th>성별</th>
		</tr>
	<%
		request.setCharacterEncoding("utf-8");
		
		/* MemberDAO의 객체를 생성하여 memberList() 호출하는 부분 */
		MemberDAO dao = new MemberDAO();
		ArrayList<MemberDTO> dtos = dao.memberList();
		
		for(MemberDTO dto : dtos) {
			String username = dto.getUsername();
			String id = dto.getId();
			String pw = dto.getPw();
			String phone = dto.getPhone1() + "-" + dto.getPhone2() + "-" +dto.getPhone3();
			String gender = dto.getGender();
			
	%>
		<tr>
			<td><%=username %></td>
			<td><%=id %></td>
			<td><%=pw %></td>
			<td><%=phone %></td>
			<td><%=gender %></td>
		</tr>
	<%
		}
	%>
	</table>
</body>
</html>