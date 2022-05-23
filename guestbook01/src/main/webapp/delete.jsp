<%@page import="com.douzone.guestbook.dao.guestbookDao"%>
<%@page import="com.douzone.guestbook.vo.guestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	request.setCharacterEncoding("utf-8");

	String password = request.getParameter("password");
	String no = request.getParameter("no");
	
	guestbookVo vo = new guestbookVo();
	vo.setNo(Long.parseLong(no));
	vo.setPassword(password);
	
	
	if(new guestbookDao().delete(vo)){
	response.sendRedirect("/guestbook01");
	}
	else{
		%>
		<h1>비밀번호 오류!</h1>
		 <%
	}
%>

