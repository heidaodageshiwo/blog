package com.zhangqiang.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.zhangqiang.entity.FileManage;
import com.zhangqiang.entity.User;

/**
 * 文件管理Dao接口
 * @author zhangqiang
 *
 */
public interface FileManageDao {
	/**
	 * 添加文件
	 * @param filemanage
	 * @return
	 */
	public int add(FileManage filemanage);
	/**修改文件
	 * 
	 */
	public int update (FileManage filemanage);
	/**
	 * 查找文件信息
	 */
	public List<FileManage> list(Map<String,Object>map);
	/**
	 * 获取总记录数
	 */
	public Long getTotal(Map<String,Object> map);
	/**
	 * 删除评信息
	 */
	public Integer delete(Integer id);
	/**
	 * 前台查询界面
	 * 
	 */
	/**
	 * 
	 * @author linbingwen
	 * @since 2015�?9�?28�?
	 * @param userId
	 * @return
	 */
	 FileManage selectFileManageById(Integer Id);
	
	 /**
	  * 
	  * @author linbingwen
	  * @since  2015�?10�?22�? 
	  * @param userName
	  * @return
	  */
	 List<FileManage> selectFileManageByFileManageName(@Param("userName") String FileManageName);
	
}
