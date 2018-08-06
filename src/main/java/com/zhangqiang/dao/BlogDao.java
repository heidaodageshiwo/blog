package com.zhangqiang.dao;

import java.util.List;
import java.util.Map;

import com.zhangqiang.entity.Blog;

/**
 * ���͵�DAO�ӿ�
 * @author zhangqiang
 *
 */
public interface BlogDao {
/**
 * ���������·ݷ����ѯ
 */
	public List<Blog> countList();
	/**
	 * ��ҳ ��ѯ����
	 */
	public List<Blog> list(Map<String,Object> map);
	/**
	 * ��ȡ�ܼ�¼��
	 */
	public Long getTotal(Map<String,Object> map);
	/**
	 * ����id ���Ҳ���ʵ��
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
	public Integer delete (Integer id);
	
	/**
	 * ��ѯָ���Ĳ�������µĲ�������
	 */
	public Integer getBlogByTypeId(Integer typeId);
}
