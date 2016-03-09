package com.edu.session;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		if(username.equalsIgnoreCase("admin")&&password.equalsIgnoreCase("123")){
			/*HttpSession session = request.getSession();
			session.setAttribute("session_user", username);*/
			request.getSession().setAttribute("session_user", username);
			response.sendRedirect("/DemoSession/welcome.jsp");
		}else{
			request.setAttribute("msg", "登陆失败");
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
	}

}
