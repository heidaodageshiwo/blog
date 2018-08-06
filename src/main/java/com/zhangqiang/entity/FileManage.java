package com.zhangqiang.entity;

import java.util.Date;

/**
 * 文件管理实体类
 * @author zhangqiang
 *
 */
public class FileManage {

	private Integer id;//编号
	private String name;//名称
	private String beizhu;//备注
	private String   dizhi;//地址
	private Integer xzl;//下载量

	
	
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBeizhu() {
		return beizhu;
	}
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	public String getDizhi() {
		return dizhi;
	}
	public void setDizhi(String dizhi) {
		this.dizhi = dizhi;
	}
	public Integer getXzl() {
		return xzl;
	}
	public void setXzl(Integer xzl) {
		this.xzl = xzl;
	}
	
}
