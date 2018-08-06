package com.zhangqiang.service;

import java.util.List;
import java.util.Map;

import com.zhangqiang.entity.Blog;

/**
 * ����Service�ӿ�
 * @author zhangqiang
 *
 */
public interface BlogService {
	/**
	 * ���������·ݷ����ѯ
	 */
	public List<Blog> countList();
	/**
	 * ��ҳ��ѯ����
	 */
	public List<Blog> list(Map<String,Object> map);
/**
 * ��ȡ�ܼ�¼��
 */
	public Long getTotal(Map<String,Object> map);
	/**
	 * ͨ��Id����ʵ��
	 */
	public Blog findById(Integer id);
	/**
	 * ���²�����Ϣ
	 */
	public Integer update(Blog blog);
	/**
	 * ��ȡ��һ������
	 */
	public Blog getLastBlog(Integer id);
	/**
	 * ��ȡ��һ������
	 */
	public Blog getNextBlog(Integer id);
	/**
	 * ��Ӳ�����Ϣ
	 */
	public Integer add(Blog blog);
	/**
	 * ɾ��������Ϣ
	 */
	public Integer delete(Integer id);
	/**
	 * ��ѯָ���Ĳ�������µĲ�������
	 */
	public Integer getBlogByTypeId(Integer typeId);
}
