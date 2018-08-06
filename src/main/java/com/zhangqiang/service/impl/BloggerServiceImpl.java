package com.zhangqiang.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zhangqiang.dao.BloggerDao;
import com.zhangqiang.entity.Blogger;
import com.zhangqiang.service.BloggerService;

/**
 * 博主Service实现类
 * @author zhangqiang
 *
 */
@Service("bloggerService")
public class BloggerServiceImpl implements BloggerService {

	@Resource
	private BloggerDao bloggerDao;
	
	public Blogger find(){
		return bloggerDao.find();
	}
	
	public Blogger getByUserName(String userName){
		return bloggerDao.getByUserName(userName);
	}
	
	public Integer update(Blogger blogger){
		return bloggerDao.update(blogger);
	}
}
