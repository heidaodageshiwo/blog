package com.zhangqiang.entity;

import java.io.Serializable;

/**
 * ��������ʵ��
 * @author zhangqiang
 *
 */
public class BlogType implements Serializable{
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Integer getBlogCount() {
		return blogCount;
	}
	public void setBlogCount(Integer blogCount) {
		this.blogCount = blogCount;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	private static final long serialVersionUID = 1L;
	private Integer id;//���
	private String typeName;//������������
	private Integer blogCount;//����
	private Integer orderNo;//���� ��С����������ʾ
}
