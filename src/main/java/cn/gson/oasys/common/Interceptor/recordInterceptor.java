package cn.gson.oasys.common.Interceptor;

import cn.gson.oasys.common.Tool;
import cn.gson.oasys.model.dao.roledao.RolepowerlistDao;
import cn.gson.oasys.model.dao.system.SystemMenuDao;
import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.dao.user.UserLogDao;
import cn.gson.oasys.model.entity.role.Rolemenu;
import cn.gson.oasys.model.entity.system.SystemMenu;
import cn.gson.oasys.model.entity.user.User;
import cn.gson.oasys.model.entity.user.UserLog;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Component
public class recordInterceptor extends HandlerInterceptorAdapter{

	
	Tool tool;
	



	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		HttpSession session=request.getSession();
		if(!StringUtils.isEmpty(session.getAttribute("userId"))){
		//导入dao类
		UserDao udao=tool.getBean(UserDao.class, request);
		RolepowerlistDao rpdao=tool.getBean(RolepowerlistDao.class, request);
		Long uid=Long.parseLong(session.getAttribute("userId")+"");
		User user=udao.findOne(uid);
		List<Rolemenu> oneMenuAll=rpdao.findbyparentxianall(0L, user.getRole().getRoleId(), true,false);
		List<Rolemenu> twoMenuAll=rpdao.findbyparentsxian(0L, user.getRole().getRoleId(), true,false);
		List<Rolemenu>  all=new ArrayList<>();
		//获取当前访问的路径
		String url = request.getRequestURL().toString();
		String zhuan="notlimit";
		
		if(oneMenuAll.size()>0){
				all.addAll(oneMenuAll);
			}
			if(twoMenuAll.size()>0){
				all.addAll(twoMenuAll);
			}
			for (Rolemenu rolemenu : all) {
				if(!rolemenu.getMenuUrl().equals(url)){
					
					return true;
				}else{
					request.getRequestDispatcher(zhuan).forward(request, response);
				}
				
			}
			
		}else{
			response.sendRedirect("/logins");
			return false;
		}
		
		return super.preHandle(request, response, handler);
	}


	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response,  Object handler, Exception ex)
			throws Exception {
		HttpSession session=request.getSession();
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
	
		//还没有登陆不能获取session
		
		uLog.setUser(new User());
//		uLog.setUser(userDao.findOne(1l));
		//从菜单表里面匹配
		List<SystemMenu> sMenus=(List<SystemMenu>) systemMenuDao.findAll();
		for (SystemMenu systemMenu : sMenus) {
			if(systemMenu.getMenuUrl().equals(request.getServletPath())){
				//只有当该记录的路径不等于第一条的时候
				if(!userLogDao.findByUserlaset(1l).getUrl().equals(systemMenu.getMenuUrl())){
				uLog.setTitle(systemMenu.getMenuName());
				//只要匹配到一个保存咯
				userLogDao.save(uLog);
				}
			}
		}
		
		
	}

}
