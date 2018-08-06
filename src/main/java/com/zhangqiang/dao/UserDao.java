package com.zhangqiang.dao;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zhangqiang.entity.User;


/**
 * åŠŸèƒ½æ¦‚è¦ï¼šUserçš„DAOç±?
 * 
 * @author linbingwen
 * @since 2015å¹?9æœ?28æ—?
 */
public interface UserDao {
	
	/**
	 * 
	 * @author linbingwen
	 * @since 2015å¹?9æœ?28æ—?
	 * @param userId
	 * @return
	 */
	 User selectUserById(Integer userId);
	
	 /**
	  * 
	  * @author linbingwen
	  * @since  2015å¹?10æœ?22æ—? 
	  * @param userName
	  * @return
	  */
	 List<User> selectUserByUserName(@Param("userName") String userName);
	 
	 

}
