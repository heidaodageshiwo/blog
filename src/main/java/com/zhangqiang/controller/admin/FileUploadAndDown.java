package com.zhangqiang.controller.admin;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.zhangqiang.controller.BaseController;
import com.zhangqiang.entity.FileManage;
import com.zhangqiang.entity.PageBean;
import com.zhangqiang.entity.User;
import com.zhangqiang.service.FileManageService;
import com.zhangqiang.util.PagedResult;
import com.zhangqiang.util.ResponseUtil;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;

/**
 * 文件上传下载Controller层
 * @author zhangqiang
 *
 */
@Controller
@RequestMapping("/file")
public class FileUploadAndDown extends BaseController{
	@Resource
	private FileManageService fileManageService;
	
	/**
	 * 后台管理界面文件   查询全部的文件
	 * 
	 */
	@RequestMapping("/list")
	public String list(@RequestParam(value="page",required=false)String page,@RequestParam(value="rows",required=false)String rows,HttpServletResponse response)throws Exception{
		PageBean pageBean=new PageBean(Integer.parseInt(page),Integer.parseInt(rows));
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("start", pageBean.getStart());
		map.put("size", pageBean.getPageSize());
		//map.put("state", state); // 评论状态
		List<FileManage> filemanageList=fileManageService.list(map);
		Long total=fileManageService.getTotal(map);
		JSONObject result=new JSONObject();
		JsonConfig jsonConfig=new JsonConfig();
		jsonConfig.registerJsonValueProcessor(java.util.Date.class, new DateJsonValueProcessor("yyyy-MM-dd"));
		JSONArray jsonArray=JSONArray.fromObject(filemanageList,jsonConfig);
		result.put("rows", jsonArray);
		result.put("total", total);
		ResponseUtil.write(response, result);
		return null;
	}
	
	
	/**
	 * 
	 * 前台管理界面 查询全部的文件
	 */
	/** 
     * 分页查询用户信息 
     * @author linbingwen 
     * @since  2015年10月23日  
     * @param page 
     * @return 
     */  
   /* @RequestMapping(value="/proscenium.do", method= RequestMethod.POST)
    @ResponseBody
    public String list(Integer pageNumber,Integer pageSize ,String userName) {
       // logger.info("分页查询用户信息列表请求入参：pageNumber{},pageSize{}", pageNumber,pageSize);  
        try {
			PagedResult<FileManage> pageResult = fileManageService.queryByPage(userName, pageNumber,pageSize);
    	    return responseSuccess(pageResult);
    	} catch (Exception e) {
			return responseFail(e.getMessage());
		}
    }*/
	
	
	
	
	/**
	 * 源码下载界面
	 * @return
	 * @throws Exception
	 */
	/*@RequestMapping("/filedown")
	public ModelAndView filedown()throws Exception{
		ModelAndView mav=new ModelAndView();
		//mav.addObject("blogger",bloggerService.find());
		mav.addObject("mainPage", "foreground/blogger/filedown.jsp");
		mav.addObject("pageTitle","zhangqiang个人博客");
		mav.setViewName("mainTemp");
		return mav;
	}*/
	 /**  
     * 文件上传功能  
     * @param file  
     * @return  
     * @throws IOException   
     */  
    @RequestMapping(value="/upload",method=RequestMethod.POST)  
    @ResponseBody  
    public String upload(@RequestParam(value="name",required=false)String name,@RequestParam(value="beizhu",required=false)String beizhu,MultipartFile file,HttpServletRequest request) throws IOException{  
    	// D:\eclipseMars\eclipsMars2\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\zhangqiang\ upload
        System.out.println(name);
        System.out.println(beizhu);
    	String path = request.getSession().getServletContext().getRealPath("upload");  
      
        System.out.println("上传文件地址------------------"+path);
        String fileName = file.getOriginalFilename();    
        File dir = new File(path,fileName);          
        if(!dir.exists()){  
            dir.mkdirs();  
        }  
        FileManage filemanage=new FileManage();
        filemanage.setName(name);
        filemanage.setBeizhu(beizhu);
        filemanage.setDizhi(path+"\\"+fileName);
        filemanage.setXzl(0);
        fileManageService.add(filemanage);
        System.out.println("上传文件成功------------------");
        //MultipartFile自带的解析方法  
        file.transferTo(dir);  
        return "ok!";  
    }  
      
    /**  
     * 文件下载功能  
     * @param request  
     * @param response  
     * @throws Exception  
     */  
   /* @RequestMapping("/down")  
    public void down(HttpServletRequest request,HttpServletResponse response) throws Exception{  
        //模拟文件，myfile.txt为需要下载的文件  
        String fileName = request.getSession().getServletContext().getRealPath("upload")+"/我与25岁美女老总.txt";  
        //获取输入流  
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));  
        //假如以中文名下载的话  
       // String filename = "下载文件.txt";  
        //转码，免得文件名中文乱码  
       // filename = URLEncoder.encode(filename,"UTF-8");  
        //设置文件下载头  
        response.addHeader("Content-Disposition", "attachment;filename=" + fileName);    
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型    
        response.setContentType("multipart/form-data");   
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());  
        int len = 0;  
        while((len = bis.read()) != -1){  
            out.write(len);  
            out.flush();  
        }  
        out.close();  
    }  */
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
