package cn.gson.oasys.common.Interceptor;

import java.net.InetAddress;
import java.util.Date;
import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.core.ApplicationContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.ApplicationArguments;
import org.springframework.stereotype.Component;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import cn.gson.oasys.common.Tool;
import cn.gson.oasys.model.dao.system.SystemMenuDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.dao.user.UserLogDao;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.model.entity.user.UserLog;

@Component
public class recordInterceptor extends HandlerInterceptorAdapter{

	
	Tool tool;
	



//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
//			throws Exception {
//		HttpSession session=request.getSession();
//		System.out.println("获取到"+session.getAttribute("uu"));
//		return super.preHandle(request, response, handler);
//	}






	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response,  Object handler, Exception ex)
			throws Exception {
		//导入dao类
		UserDao userDao=tool.getBean(UserDao.class, request);
		SystemMenuDao systemMenuDao=tool.getBean(SystemMenuDao.class, request);
		UserLogDao userLogDao=tool.getBean(UserLogDao.class, request);
		
		UserLog uLog= new UserLog();
		//首先就获取ip
		InetAddress ia=null;
		ia=ia.getLocalHost();
		String ip=ia.getHostAddress();
		uLog.setIpAddr(ip);
		//System.out.println(request.getRequestedSessionId());
		uLog.setUrl(request.getServletPath());
		uLog.setLogTime(new Date());
		HttpSession session=request.getSession();
		//还没有登陆不能获取session
		//uLog.setUser(UserDao.findOne(Long.valueOf(session.getAttribute("userId")+"")));
		uLog.setUser(userDao.findOne(1l));
		//从菜单表里面匹配
		List<SystemMenu> sMenus=(List<SystemMenu>) systemMenuDao.findAll();
		for (SystemMenu systemMenu : sMenus) {
			if(systemMenu.getMenuUrl().equals(request.getServletPath())){
				uLog.setTitle(systemMenu.getMenuName());
				//只要匹配到一个保存咯
				userLogDao.save(uLog);
			}
		}
		
		
	}

}
