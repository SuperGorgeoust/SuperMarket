package com.market.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.market.biz.UserBiz;

import com.market.dao.BeanUtils;

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
			}else if("register".equals(op)){
				register(request,response);
			}else if("quit".equals(op)){
				quit(request,response);
			}
	}


	private void quit(HttpServletRequest request, HttpServletResponse response) 
			throws IOException {
		HttpSession session=request.getSession();
		session.removeAttribute("loginedUser");
		response.sendRedirect("index.jsp");
		
	}


	private void register(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String username = request.getParameter("username");
		String usertel = request.getParameter("usertel");
		String useremail = request.getParameter("useremail");
		String useraccount = request.getParameter("useraccount");
		String userpwd = request.getParameter("userpwd");
		String newpwd = request.getParameter("newpwd");
		
		UserBiz ubiz = new UserBiz();
		List<List<Object>> user = null;
		
		try {
			
			user=ubiz.add(username,usertel,useremail,useraccount,userpwd);
			
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			request.getRequestDispatcher("registered.jsp").forward(request, response);
			return;
		}
		
		if(username == null || username.trim().isEmpty()){
			request.setAttribute("msg", "用户名不能为空");
			//失败
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else if(usertel == null || usertel.trim().isEmpty()){
			request.setAttribute("msg", "电话不能为空");
			//失败
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else if(useremail == null || useremail.trim().isEmpty()){
			request.setAttribute("msg", "邮箱不能为空");
			//失败
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else if(useraccount == null || useraccount.trim().isEmpty()){
			request.setAttribute("msg", "账号不能为空");
			//失败
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else if(userpwd == null || userpwd.trim().isEmpty()){
			request.setAttribute("msg", "密码不能为空");
			//失败
			request.getRequestDispatcher("registered.jsp").forward(request, response);
		}else if(newpwd == null || newpwd.trim().isEmpty()){
			request.setAttribute("msg", "第二次密码不能为空");
			//失败
			request.getRequestDispatcher("registered.jsp").forward(request, response);
		}else{
			//将用户信息保存到会话中
			/*request.getSession().setAttribute("loginedUser", user);*/
			//成功
			request.setAttribute("msg", "注册成功");
			/*response.sendRedirect("login.jsp");*/
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}
		
		
	}



	private void login(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String useraccount = request.getParameter("useraccount");
		String userpwd = request.getParameter("userpwd");
		
		User user = null;
		
		try {
			user = ubiz.login(useraccount, userpwd);
		} catch (BizException e) {
			e.printStackTrace();
			request.setAttribute("msg", e.getMessage());
			//失败
			request.getRequestDispatcher("login.jsp").forward(request, response);
			return;
		}
		
		
		if(user == null){
			request.setAttribute("msg", "用户名或密码错误");
			//失败
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}else{
			//将用户信息保存到会话中
			request.getSession().setAttribute("loginedUser", user);
			//成功
			response.sendRedirect("index.jsp");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
