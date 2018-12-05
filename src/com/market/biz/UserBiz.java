package com.market.biz;

import java.util.List;
import java.util.Map;

import com.market.bean.User;

import com.market.biz.BizException;
import com.market.dao.DBHelper;

public class UserBiz {

	public User login(String useraccount, String userpwd) throws BizException {
		/**
		 * ��½����
		 * ���ص�½�ɹ����û�����
		 */

		//��ѯ���ݿ��ж��û��Ƿ����
		String sql="select * from user where account = ? and pwd = ?";
		return DBHelper.unique(sql, User.class, useraccount, userpwd);
	}

	public List<List<Object>> add(String name, String tel, String email, String account, String pwd) throws BizException {
		
		/*String sql = "insert into user (name,tel,email,pwd,account,isadmin) value(?,?,?,?,?,2)";
		DBHelper.insert(sql, user.getName(),user.getTel(),user.getEmail(),user.getPwd(),user.getAccount());*/
		
		String sql2 = "select * from user where account=?";
		List<Map<String, Object>> result=DBHelper.select(sql2,account);
		
		/*String sql = "insert into user (name,tel,email,pwd,account,isadmin) value(?,?,?,?,?,2)";
		DBHelper.insert(sql,name,tel,email,pwd,account);*/
		//������
		if(result.size()>0){
			throw new BizException("�˺��ѱ�ע�ᣡ");
		}else{
			String sql = "insert into user (name,tel,email,pwd,account,isadmin) value(?,?,?,?,?,2)";
			
			return DBHelper.insert(sql,name,tel,email,pwd,account);
		}
	}

	public int update(String account, String newpwd) {
		String sql = "update user set pwd=? where account=?";
		int result = DBHelper.update(sql, newpwd, account);
		return result;
	}

	public List<Map<String,Object>> select(String account, String email) {
		String sql = "select * from user where account=? and email=?";
		List<Map<String, Object>> user = DBHelper.select(sql, account, email);
		return user;
	}

	

}
