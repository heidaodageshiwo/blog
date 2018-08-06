package com.zhangqiang.dao;

import com.zhangqiang.entity.Blogger;

/**
 * ����Dao�ӿ�
 * @author zhangqiang
 *
 */
public interface BloggerDao {
	/**
	 * ��ѯ������Ϣ
	 * @return
	 */
	public Blogger find();
	/**
	 * ͨ����ڻ����ѯ�û�
	 */
	public Blogger getByUserName(String userName);
	/**
	 * ���²�������Ϣ
	 */
	public Integer update(Blogger blogger);
}
