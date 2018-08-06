package com.zhangqiang.dao;

import java.util.List;
import java.util.Map;

import com.zhangqiang.entity.Comment;

/**
 * ����Dao�ӿ�
 * @author zhangqiang
 *
 */
public interface CommentDao {
	/**
	 * �������
	 * @param comment
	 * @return
	 */
	public int add(Comment comment);
	/**�޸�����
	 * 
	 */
	public int update (Comment comment);
	/**
	 * �����û�������Ϣ
	 */
	public List<Comment> list(Map<String,Object>map);
	/**
	 * ��ȡ�ܼ�¼��
	 */
	public Long getTotal(Map<String,Object> map);
	/**
	 * ɾ������Ϣ
	 */
	public Integer delete(Integer id);
}
