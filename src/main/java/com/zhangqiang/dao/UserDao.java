package com.zhangqiang.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhangqiang.entity.User;


/**
 * 功能概要：User的DAO�?
 * 
 * @author linbingwen
 * @since 2015�?9�?28�?
 */
public interface UserDao {
	
	/**
	 * 
	 * @author linbingwen
	 * @since 2015�?9�?28�?
	 * @param userId
	 * @return
	 */
	 User selectUserById(Integer userId);
	
	 /**
	  * 
	  * @author linbingwen
	  * @since  2015�?10�?22�? 
	  * @param userName
	  * @return
	  */
	 List<User> selectUserByUserName(@Param("userName") String userName);
	 
	 

}
