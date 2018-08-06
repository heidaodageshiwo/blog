package com.zhangqiang.dao;

import java.util.List;
import java.util.Map;

import com.zhangqiang.entity.Blog;

/**
 * 博客的DAO接口
 * @author zhangqiang
 *
 */
public interface BlogDao {
/**
 * 根据日期月份分组查询
 */
	public List<Blog> countList();
	/**
	 * 分页 查询博客
	 */
	public List<Blog> list(Map<String,Object> map);
	/**
	 * 获取总记录数
	 */
	public Long getTotal(Map<String,Object> map);
	/**
	 * 根据id 查找博客实体
	 */
	public Blog findById(Integer id);
	/**
	 * 更新博客信息
	 */
	public Integer update(Blog blog);
	/**
	 * 获取上一个博客
	 */
	public Blog getLastBlog(Integer id);
	/**
	 * 获取下一个博客
	 */
	public Blog getNextBlog(Integer id);
	/**
	 * 添加博客信息
	 */
	public Integer add(Blog blog);
	/**
	 * 删除博客信息
	 */
	public Integer delete (Integer id);
	
	/**
	 * 查询指定的博客类别下的博客数量
	 */
	public Integer getBlogByTypeId(Integer typeId);
}
