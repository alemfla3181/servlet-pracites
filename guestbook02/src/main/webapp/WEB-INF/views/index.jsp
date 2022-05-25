<%@page import="java.net.UnknownHostException"%>
<%@page import="java.net.InetAddress"%>
<%@page import="java.util.List"%>
<%@page import="com.douzone.guestbook.vo.guestbookVo"%>
<%@page import="com.douzone.guestbook.dao.guestbookDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<guestbookVo> list = new guestbookDao().findAll();
	InetAddress ip = InetAddress.getLocalHost();  
	%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>방명록</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/gb?a=add" method="post">
		<table border=1 width=500>
			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td colspan=4><textarea name="message" cols=60 rows=5
						style="resize: none"></textarea></td>
			</tr>
			<tr>
				<td colspan=4 align=right><input type="submit" VALUE="등록"></td>
				<input type=hidden name="address" value="<%=ip.getHostName()%>">
			</tr>
		</table>
	</form>
	<br>


	<%
	int count = list.size();
	for (guestbookVo vo : list) {
	%>

	<table width=510 border=1>
		<tr>
			<td><%=count%></td>
			<td><%=vo.getName()%></td>
			<td><%=vo.getDateTime()%></td>
			<td><%=vo.getHostname() %></td>
			<td><a
				href="<%=request.getContextPath()%>/gb?a=form&no=<%=vo.getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan=4><%=vo.getMessage().replaceAll("\n", "<br/>").replaceAll(" ", "&ensp;")%></td>
		</tr>
	</table>
	<br />

	<%
	count--;
	}
	%>
</body>
</html>


