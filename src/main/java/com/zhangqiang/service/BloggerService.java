package com.zhangqiang.service;

import com.zhangqiang.entity.Blogger;

/**
 * 
 * @author zhangqiang
 *
 */
public interface BloggerService {

	/**
	 * ��ѯ������Ϣ
	 */
	public Blogger find();
	/**
	 * �����û�����ѯ�û�
	 */
	public Blogger getByUserName(String userName);
	
	/**
	 * ���²�����Ϣ
	 */
	public Integer update(Blogger blogger);
}
