package com.zhangqiang.service;

import com.zhangqiang.entity.Blogger;

/**
 * 
 * @author zhangqiang
 *
 */
public interface BloggerService {

	/**
	 * 查询博主信息
	 */
	public Blogger find();
	/**
	 * 根据用户名查询用户
	 */
	public Blogger getByUserName(String userName);
	
	/**
	 * 更新博主信息
	 */
	public Integer update(Blogger blogger);
}
