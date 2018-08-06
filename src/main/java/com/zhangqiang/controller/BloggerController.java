package com.zhangqiang.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zhangqiang.entity.Blogger;
import com.zhangqiang.util.CryptographyUtil;

/**
 * 博主Controller层
 * @author zhangqiang
 *
 */
@Controller
@RequestMapping("/blogger")
public class BloggerController {
	
	/**
	 * 用户登录
	 */
	@RequestMapping("/login")
	public String login(Blogger blogger,HttpServletRequest request){
		Subject subject =SecurityUtils.getSubject();
		UsernamePasswordToken token =new UsernamePasswordToken(blogger.getUserName(),CryptographyUtil.md5(blogger.getPassword(), "zhangqiang"));
		try {
			subject.login(token);
			return "redirect:/admin/main.jsp";
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			request.setAttribute("blogger", blogger);
			request.setAttribute("errorInfo", "用户名或密码错误！");
			return "login";
		}
	}
	
}
