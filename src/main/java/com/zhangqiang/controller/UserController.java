package com.zhangqiang.controller;


import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.Page;
import com.zhangqiang.entity.User;
import com.zhangqiang.service.UserService;
import com.zhangqiang.util.PagedResult;


/** 
* ���ܸ�Ҫ��UserController 
*  
* @author linbingwen 
* @since  2015��9��28��  
*/  
@Controller
@RequestMapping("/fenye")
public class UserController extends BaseController {
	
	private Logger logger = LoggerFactory.getLogger(getClass());
	
	@Resource
	private UserService userService;
	//http://blog.csdn.net/evankaka/article/details/49452201
	@RequestMapping("/fenye11")  
    public ModelAndView getIndex(){    
		ModelAndView mav = new ModelAndView("index"); 
		User user = userService.selectUserById(1);
	    mav.addObject("user", user); 
        return mav;  
    }  
	
	 /** 
     * ��ʾ��ҳ 
     * @author linbingwen 
     * @since  2015��10��23��  
     * @return 
     */  
	@RequestMapping("/bootstrapTest1")  
	public String bootStrapTest1(){
		//return "bootstrap/bootstrapTest1";
		return "redirect:/view/bootstrap/bootstrapTest1.jsp";
	}
	
	 /** 
     * ��ҳ��ѯ�û���Ϣ 
     * @author linbingwen 
     * @since  2015��10��23��  
     * @param page 
     * @return 
     */  
    @RequestMapping(value="/list.do", method= RequestMethod.POST)
    @ResponseBody
    public String list(Integer pageNumber,Integer pageSize ,String userName) {
        logger.info("��ҳ��ѯ�û���Ϣ�б�������Σ�pageNumber{},pageSize{}", pageNumber,pageSize);  
        try {
			PagedResult<User> pageResult = userService.queryByPage(userName, pageNumber,pageSize);
    	    return responseSuccess(pageResult);
    	} catch (Exception e) {
			return responseFail(e.getMessage());
		}
    }
    @RequestMapping(value="/list123.do", method= RequestMethod.GET)
    @ResponseBody
    public String list123(Integer pageNumber,Integer pageSize ,String userName) {
        logger.info("��ҳ��ѯ�û���Ϣ�б�������Σ�pageNumber{},pageSize{}", pageNumber,pageSize);  
        try {
			PagedResult<User> pageResult = userService.queryByPage(userName, pageNumber,pageSize);
    	    return responseSuccess(pageResult);
    	} catch (Exception e) {
			return responseFail(e.getMessage());
		}
    }
}
