package com.zhangqiang.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.zhangqiang.dao.UserDao;
import com.zhangqiang.entity.User;
import com.zhangqiang.service.UserService;
import com.zhangqiang.util.BeanUtil;
import com.zhangqiang.util.PagedResult;

/**
 * 功能概要：UserService实现�?
 * 
 * @author linbingwen
 * @since  2015�?9�?28�? 
 */
@Service
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDao;

	public User selectUserById(Integer userId) {
		return userDao.selectUserById(userId);
		
	}

	public List<User> selectUserByUserName(String userName) {
		List<User> list = userDao.selectUserByUserName(userName);
		return list;
	}

	public PagedResult<User> queryByPage(String userName,Integer pageNo,Integer pageSize ) {
		pageNo = pageNo == null?1:pageNo;
		pageSize = pageSize == null?10:pageSize;
		PageHelper.startPage(pageNo,pageSize);  //startPage是告诉拦截器说我要开始分页了。分页参数是这两个�??
		return BeanUtil.toPagedResult(userDao.selectUserByUserName(userName));
	}

}
