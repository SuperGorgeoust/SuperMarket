package com.market.biz;

import com.market.bean.User;

import com.market.biz.BizException;
import com.market.dao.DBHelper;

public class UserBiz {

	public User login(String username, String userpwd) throws BizException {
		/**
		 * 登陆方法
		 * 返回登陆成功的用户对象
		 */
			
		//查询数据库判断用户是否存在
		String sql="select * from user where account = ? and pwd = ?";
		return DBHelper.unique(sql, User.class, username, userpwd);
	}

}
