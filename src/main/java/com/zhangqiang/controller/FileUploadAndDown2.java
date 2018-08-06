package com.zhangqiang.controller;

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
@RequestMapping("/fileproscenium")
public class FileUploadAndDown2 extends BaseController{
	@Resource
	private FileManageService fileManageService;
	
	/**
	 * 后台管理界面文件   查询全部的文件
	 * 
	 */
	/*@RequestMapping("/list")
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
	}*/
	
	
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
    @RequestMapping(value="/proscenium.do", method= RequestMethod.POST)
    @ResponseBody
    public String list(Integer pageNumber,Integer pageSize ,String userName) {
       // logger.info("分页查询用户信息列表请求入参：pageNumber{},pageSize{}", pageNumber,pageSize);  
        try {
			PagedResult<FileManage> pageResult = fileManageService.queryByPage(userName, pageNumber,pageSize);
    	    return responseSuccess(pageResult);
    	} catch (Exception e) {
			return responseFail(e.getMessage());
		}
    }
	
	
	
	
	/**
	 * 源码下载界面
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("/filedown")
	public ModelAndView filedown()throws Exception{
		ModelAndView mav=new ModelAndView();
		//mav.addObject("blogger",bloggerService.find());
		mav.addObject("mainPage", "foreground/blogger/filedown.jsp");
		mav.addObject("pageTitle","zhangqiang个人博客");
		mav.setViewName("mainTemp");
		return mav;
	}
	 /**  
     * 文件上传功能  
     * @param file  
     * @return  
     * @throws IOException   
     */  
    /*@RequestMapping(value="/upload",method=RequestMethod.POST)  
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
    }  */
      
    /**  
     * 文件下载功能  
     * @param request  
     * @param response  
     * @throws Exception  
     */  
    @RequestMapping("/down")  
    public void down(@RequestParam(value="id",required=false)String id,HttpServletRequest request,HttpServletResponse response) throws Exception{  
        
    	System.out.println(id);
    	FileManage filemanage=fileManageService.selectFileManageById(Integer.parseInt(id));
    	filemanage.setXzl(filemanage.getXzl()+1);
    	fileManageService.update(filemanage);
    	//模拟文件，myfile.txt为需要下载的文件  
        String fileName = request.getSession().getServletContext().getRealPath("upload")+"/"+filemanage.getName();  
        //获取输入流  
        InputStream bis = new BufferedInputStream(new FileInputStream(new File(fileName)));  
        //假如以中文名下载的话  
       // String filename = "下载文件.txt";  
        //转码，免得文件名中文乱码  
       // filename = URLEncoder.encode(filename,"UTF-8");  
        //设置文件下载头  
        response.addHeader("Content-Disposition", "attachment;filename=" + filemanage.getName());    
        //1.设置文件ContentType类型，这样设置，会自动判断下载文件类型    
        response.setContentType("multipart/form-data");   
        BufferedOutputStream out = new BufferedOutputStream(response.getOutputStream());  
        int len = 0;  
        while((len = bis.read()) != -1){  
            out.write(len);  
            out.flush();  
        }  
        out.close();  
    }  
	
	
	
	/**
	 * 新添加分页功能
	 * selectFileManageByFileManageName
	 */
	
    @RequestMapping("/selectFileManageByFileManageName")
    @ResponseBody
    public JSONObject selectFileManageByFileManageName(
           /* @RequestParam(value = "draw", required = false ) Integer draw,
            @RequestParam(value = "length", required = false ) Integer length*/
			/*@RequestParam(value = "start", required = false ) Integer start,
			@RequestParam(value = "startDate", required = false ) String startDate,
			@RequestParam(value = "endDate", required = false ) String endDate,
			@RequestParam(value = "operator", required = false ) Integer operator,
			@RequestParam(value = "homeOwnership", required = false ) String homeOwnership,
			@RequestParam(value = "siteSN", required = false ) String siteSN,
			@RequestParam(value = "deviceSN", required = false ) String deviceSN,
			@RequestParam(value = "imsi", required = false ) String imsi*/
    ) {
        JSONObject jo = new JSONObject();
        JSONArray ja = new JSONArray();

       /* List<AnalysisData> bmd=     analysisDataService.getBMD();*/

/*
        if (condition == null) {
            condition = "1=1";
        }
        condition = condition + " AND sj.daycount = " + "'" + daycount + "'";*/
        /*String pinjie="";

        if(bmd.size()>0){

            for(int i=0;i<bmd.size();i++){

            if(pinjie.equals("")){
                pinjie="'" + bmd.get(i).getImsi() + "'";

            }else{
                pinjie=pinjie+","+"'" + bmd.get(i).getImsi() + "'"  ;
            }


            }
        }else{
            pinjie=" AND 1=1";
        }
    String condition="";
        if(bmd.size()>0){
            condition=" AND  shzsb.imsi NOT IN ("+pinjie+")";
        }else{
            condition=" AND 1=1 ";
        }
        System.out.println(condition);*/
       // FileManageName fileManageName=new FileManageName();
        String userName="";
      List<FileManage> analysisData= fileManageService.selectFileManageByFileManageName(userName);
    //int count=0;
      for(FileManage AnalysisData1:analysisData){
          JSONObject ueInfoJo = new JSONObject();
         /* if(count==0){
              ueInfoJo.put("id", ++count);
          }else{
              ueInfoJo.put("id", ++count);
          }*/

          ueInfoJo.put("idc", AnalysisData1.getId());
          ueInfoJo.put("name", AnalysisData1.getName());
          ueInfoJo.put("beizhu", AnalysisData1.getBeizhu());
          ueInfoJo.put("xzl", AnalysisData1.getXzl());
         /* ueInfoJo.put("cityname", AnalysisData1.getCityname());
          ueInfoJo.put("imsi", AnalysisData1.getImsi());
          ueInfoJo.put("datacount", AnalysisData1.getDatacount()+"次");
          ueInfoJo.put("daycount", AnalysisData1.getDaycount()+"天");*/
         /* ueInfoJo.put("one", "");
          ueInfoJo.put("two", "");*/

       //   List<AnalysisData> analysisDatabydevicesn=   analysisDataService.getTueinfoDataBydevicesn(AnalysisData1.getImsi());
         //   if(analysisDatabydevicesn.size()>1){
               /* ueInfoJo.put("one", "123");
                ueInfoJo.put("two", "123");*/
           // }else{
//                ueInfoJo.put("one", analysisDatabydevicesn.get(0).getSitename());
//                ueInfoJo.put("two", "");
            //}


          ja.add(ueInfoJo);

      }
       /* jo.put("draw", draw);
        jo.put("recordsTotal", analysisData.size());
        jo.put("recordsFiltered", analysisData.size());
        jo.put("data", ja);*/
        jo.put("status", true);
        jo.put("message", "成功");
        jo.put("data", ja);
        return jo;
    }
	
	
	
	
	
	
	
	
}
