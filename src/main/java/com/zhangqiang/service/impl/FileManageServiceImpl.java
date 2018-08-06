package com.zhangqiang.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.zhangqiang.dao.FileManageDao;
import com.zhangqiang.entity.FileManage;
import com.zhangqiang.service.FileManageService;
import com.zhangqiang.util.BeanUtil;
import com.zhangqiang.util.PagedResult;

/**
 * 文件Service实现类
 * @author zhangqiang
 *
 */
@Service("filemanageService")
public class FileManageServiceImpl implements FileManageService{
	@Resource
	private FileManageDao filemanageDao;
	public int add(FileManage filemanage){
		return filemanageDao.add(filemanage);
	}
	public List<FileManage> list(Map<String,Object> map){
		return filemanageDao.list(map);
	}
	public Long getTotal(Map<String,Object> map){
		return filemanageDao.getTotal(map);
	}
	public Integer delete(Integer id){
		return filemanageDao.delete(id);
	}
	public int update(FileManage filemanage){
		return filemanageDao.update(filemanage);
	}
	
	
	/**
	 * 前台分页查询
	 */
	public FileManage selectFileManageById(Integer userId) {
		return filemanageDao.selectFileManageById(userId);
		
	}

	public List<FileManage> selectFileManageByFileManageName(String userName) {
		List<FileManage> list = filemanageDao.selectFileManageByFileManageName(userName);
		return list;
	}

	public PagedResult<FileManage> queryByPage(String userName,Integer pageNo,Integer pageSize ) {
		pageNo = pageNo == null?1:pageNo;
		pageSize = pageSize == null?10:pageSize;
		PageHelper.startPage(pageNo,pageSize);  //startPage是告诉拦截器说我要开始分页了。分页参数是这两个�??
		return BeanUtil.toPagedResult(filemanageDao.selectFileManageByFileManageName(userName));
	}
	
	
	
}
