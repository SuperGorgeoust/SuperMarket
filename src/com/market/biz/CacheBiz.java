package com.market.biz;

import java.util.List;
import java.util.Map;

import com.market.bean.Cache;
import com.market.dao.DBHelper;

public class CacheBiz {

	public List<Cache> find(Cache c) {
		return DBHelper.select("select * from cache", Cache.class);
	}
	
	public List<Map<String, Object>> money(){
		return DBHelper.select("select sum(money) from cache");
	}

}
