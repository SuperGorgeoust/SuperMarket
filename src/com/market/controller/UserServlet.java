package com.market.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.biz.UserBiz;

import com.market.bean.User;
import com.market.biz.BizException;


@WebServlet("/user.s")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserBiz ubiz = new UserBiz();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			String op = request.getParameter("op");
			if("login".equals(op)){
				login(request,response);
			}else if("quit".equals(op)){
				quit(request,response);
			}
	}


	private void quit(HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("loginedUser");
		response.sendRedirect("index.jsp");
	}


	private void login(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String userpwd = request.getParameter("userpwd");
		
		User user = null;
		
		try {
			user = ubiz.login(username, userpwd);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			//ʧ��
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		
		if(user == null){
			request.setAttribute("msg", "�û������������");
			//ʧ��
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			//���û���Ϣ���浽�Ự��
			request.getSession().setAttribute("loginedUser", user);
			//�ɹ�
			response.sendRedirect("index.jsp");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
