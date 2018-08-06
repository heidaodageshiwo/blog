package com.zhangqiang.service;

import java.util.List;

import com.zhangqiang.entity.User;
import com.zhangqiang.util.PagedResult;

/**
 * 功能概要：UserService接口�?
 * 
 * @author linbingwen
 * @since  2015�?9�?28�? 
 */
public interface UserService {
	
	User selectUserById(Integer userId);
	
	List<User> selectUserByUserName(String userName);
	
	/**
	 * 
	 * @author linbingwen
	 * @since  2015�?10�?23�? 
	 * @param userName 查询条件，可为空
	 * @param pageNo 查询条件，可为空，默认取1
	 * @param pageSize 查询条件，可为空，默认取10
	 * @return
	 */
	PagedResult<User> queryByPage(String userName,Integer pageNo,Integer pageSize);

}
