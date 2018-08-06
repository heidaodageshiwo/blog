package com.zhangqiang.dao;

import com.zhangqiang.entity.Blogger;

/**
 * 博主Dao接口
 * @author zhangqiang
 *
 */
public interface BloggerDao {
	/**
	 * 查询博主信息
	 * @return
	 */
	public Blogger find();
	/**
	 * 通过用诨名查询用户
	 */
	public Blogger getByUserName(String userName);
	/**
	 * 更新博主的信息
	 */
	public Integer update(Blogger blogger);
}
