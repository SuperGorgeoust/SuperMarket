package com.market.biz;

import com.market.bean.User;

import com.market.biz.BizException;
import com.market.dao.DBHelper;

public class UserBiz {

	public User login(String username, String userpwd) throws BizException {
		/**
		 * ��½����
		 * ���ص�½�ɹ����û�����
		 */
			
		//��ѯ���ݿ��ж��û��Ƿ����
		String sql="select * from user where account = ? and pwd = ?";
		return DBHelper.unique(sql, User.class, username, userpwd);
	}

}
