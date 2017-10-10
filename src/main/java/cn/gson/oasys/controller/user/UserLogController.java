package cn.gson.oasys.controller.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.gson.oasys.model.dao.user.UserDao;
import cn.gson.oasys.model.dao.user.UserLogDao;
import cn.gson.oasys.model.dao.user.UserLogService;
import cn.gson.oasys.model.dao.user.UserService;
import cn.gson.oasys.model.entity.user.UserLog;

@Controller
@RequestMapping("/")
public class UserLogController {
	@Autowired
	private UserLogDao userLogDao;
	@Autowired
	private UserLogService userLogService;
	@Autowired
	private UserDao uDao;
	
	//用来查找用户记录
		@RequestMapping("morelog")
		public String test3df(@RequestParam(value="page",defaultValue = "0")int page,
				HttpSession session,Model model,
				@RequestParam(value="baseKey",required=false)String basekey,
				@RequestParam(value="time",required=false)String time,
				@RequestParam(value="icon",required=false)String icon
				) {
			System.out.println("11"+basekey);
			getuserlog(page, session, model, basekey, time, icon);
			return "user/userlogmanage";
		}

		
		
		//用来查找用户记录
			@RequestMapping("morelogtable")
			public String test3dfrt(@RequestParam(value="page",defaultValue = "0")int page,
					HttpSession session,Model model,
					@RequestParam(value="baseKey",required=false)String basekey,
					@RequestParam(value="time",required=false)String time,
					@RequestParam(value="icon",required=false)String icon) {
				System.out.println("22"+basekey);
				getuserlog(page, session, model, basekey, time, icon);
				return "user/userlogmanagetable";
			}


			
			public void getuserlog(int page, HttpSession session, Model model, String basekey, String time,
					String icon) {
				long userid=Long.valueOf(session.getAttribute("userId")+"");
				setTwo(model, basekey, time,icon);
				Page<UserLog> page3=userLogService.ulogpaging(page, basekey, userid, time);
				model.addAttribute("page", page3);
				model.addAttribute("userloglist", page3.getContent());
				model.addAttribute("url", "morelogtable");
			}
			
			//记忆两种规则
			private void setTwo(Model model, String basekey, Object time,Object icon) {
				if(!StringUtils.isEmpty(time)){
					model.addAttribute("time", time);
					model.addAttribute("icon", icon);
					model.addAttribute("sort", "&time="+time+"&icon="+icon);
				}
				if(!StringUtils.isEmpty(basekey)){
					model.addAttribute("basekey", basekey);
					model.addAttribute("sort", "&basekey="+basekey);
				}
			}
	
}
