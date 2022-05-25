package com.douzone.guestbook.controller;

import java.io.IOException;
import java.net.InetAddress;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.douzone.guestbook.dao.guestbookDao;
import com.douzone.guestbook.vo.guestbookVo;

public class GuestbookServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		InetAddress ip = InetAddress.getLocalHost(); 
		String action = request.getParameter("a");

		if ("form".equals(action)) {
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/form.jsp");
			rd.forward(request, response);
		}else if ("add".equals(action)) {
			String name = request.getParameter("name");
			String password = request.getParameter("password");
			String message = request.getParameter("message");
			String hostname = ip.getHostName().replaceAll("DESKTOP-", "");
			
			guestbookVo vo = new guestbookVo();
			vo.setName(name);
			vo.setPassword(password);
			vo.setMessage(message);			
			vo.setHostname(hostname);
			
			new guestbookDao().insert(vo);
			
			response.sendRedirect(request.getContextPath() + "/gb");
		} else if("delete".equals(action)) { 
			String password = request.getParameter("password");
			String no = request.getParameter("no");
			
			guestbookVo vo = new guestbookVo();
			vo.setNo(Long.parseLong(no));
			vo.setPassword(password);
			
			if(new guestbookDao().delete(vo)){
				response.sendRedirect(request.getContextPath()+ "/gb");
			}		
		}
		else{
			List<guestbookVo> list = new guestbookDao().findAll();

			request.setAttribute("list", list);
			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/index.jsp");
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
