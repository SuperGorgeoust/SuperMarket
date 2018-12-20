package com.market.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.market.bean.Cache;
import com.market.bean.Product;
import com.market.biz.CacheBiz;
import com.market.dao.BeanUtils;
import com.market.dao.DBHelper;


@WebServlet("/cart.s")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private CacheBiz cbiz = new CacheBiz();
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String op = request.getParameter("op");
		
		if("sub".equals(op)){
			sub(request, response);
		}else if("query".equals(op)){
			query(request, response);
		}else if("del".equals(op)){
			del(request, response);
		}else if("buy".equals(op)){
			buy(request, response);
		}
	}


	private void del(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String pid = request.getParameter("id");
		String sql = "delete from cache where pid=?";
		int result = DBHelper.update(sql, pid);
		if(result>0){
			request.setAttribute("msg", "已成功移出购物车");
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
		}else{
			request.setAttribute("msg", "发生未知错误");
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
		}
	}


	private void query(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		Cache c = BeanUtils.asBean(request, Cache.class);
		if(cbiz.find(c).isEmpty()){
			request.setAttribute("msg", "您还没有选购商品，试试提交购物车吧");
			request.getRequestDispatcher("products.jsp").forward(request, response);
		}else{
			request.setAttribute("cartsList", cbiz.find(c));
			request.getRequestDispatcher("checkout.jsp").forward(request, response);
		}
	}


	private void sub(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		DBHelper.update("delete from cache");
		DBHelper.update("alter table cache AUTO_INCREMENT=1");
		String s = request.getParameter("size");
		int size = Integer.parseInt(s);
		for(int i = 1;i <= size; i++){
			String item = request.getParameter("item_name_"+i);
			String amount = request.getParameter("quantity_"+i);
			String sql = "select * from product where pname=?";
			Product pro = DBHelper.unique(sql, Product.class, item);
			String sql2 = "insert into cache values(?,?,?,?,?,?)";
			double a = Double.parseDouble(amount);
			double p = Double.parseDouble(pro.getPprice());
			double money = a*p;
			DBHelper.update(sql2, pro.getPname(), amount, pro.getPprice(), pro.getPimg(), null, money);
		}
		request.setAttribute("msg", "所有商品添加购物车成功");
		request.getRequestDispatcher("checkout.jsp").forward(request, response);
	}


	private void buy(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		String sql = "delete from cache";
		DBHelper.update(sql);
		DBHelper.update("alter table cache AUTO_INCREMENT=1");
		request.removeAttribute("cartsList");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
