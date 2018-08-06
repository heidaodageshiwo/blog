package com.zhangqiang.service;

import java.util.List;
import java.util.Map;

import com.zhangqiang.entity.FileManage;
import com.zhangqiang.util.PagedResult;

/**
 * 文件管理Service接口
 * @author zhangqiang
 *
 */
public interface FileManageService {
	/**
	 * 添加文件
	 */
	public int add(FileManage filemanage);
	/**
	 * 修改文件
	 */
	public int update(FileManage filemanage);
	/**
	 * 查找文件信息
	 */
	public List<FileManage> list(Map<String,Object> map);
	/**
	 * 获取总记录数
	 */
	public Long getTotal(Map<String,Object> map);
	/**
	 * 删除评论信息
	 */
	public Integer delete(Integer id);
	/**
	 * 前台分页查询
	 */
	
	FileManage selectFileManageById(Integer Id);
	
	List<FileManage> selectFileManageByFileManageName(String FileManageName);
	
	/**
	 * 
	 * @author linbingwen
	 * @since  2015�?10�?23�? 
	 * @param userName 查询条件，可为空
	 * @param pageNo 查询条件，可为空，默认取1
	 * @param pageSize 查询条件，可为空，默认取10
	 * @return
	 */
	PagedResult<FileManage> queryByPage(String FileManageName,Integer pageNo,Integer pageSize);
	
	
}
