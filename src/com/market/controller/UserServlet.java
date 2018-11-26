package com.market.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.biz.UserBiz;


@WebServlet("/User.s")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserBiz ubiz = new UserBiz();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
			String op = request.getParameter("op");
			if("login".equals(op)){
				login(request,response);
			}
	}


	private void login(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
