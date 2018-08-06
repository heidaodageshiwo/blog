package com.zhangqiang.dao;

import java.util.List;
import java.util.Map;

import com.zhangqiang.entity.Comment;

/**
 * 评论Dao接口
 * @author zhangqiang
 *
 */
public interface CommentDao {
	/**
	 * 添加评论
	 * @param comment
	 * @return
	 */
	public int add(Comment comment);
	/**修改评论
	 * 
	 */
	public int update (Comment comment);
	/**
	 * 查找用户评论信息
	 */
	public List<Comment> list(Map<String,Object>map);
	/**
	 * 获取总记录数
	 */
	public Long getTotal(Map<String,Object> map);
	/**
	 * 删除评信息
	 */
	public Integer delete(Integer id);
}
